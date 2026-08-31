if !CustomizableWeaponry then return end
if CustomizableWeaponry.preset.enabled then --Edited original code
	if SERVER then
		local MAX_PRESET_NAME_LENGTH = 96
		local MAX_PRESET_DATA_LENGTH = 65536
		local AUTOSAVE_LOAD_INTERVAL = 0.25

		net.Receive(CustomizableWeaponry.preset.networkString .. ".AUTOSAVEMOD", function(len, ply)
			local name_sv = net.ReadString()
			local encoded = net.ReadString()
			local wep = net.ReadEntity() --Now we reading it instead of ply:GetActiveWeapon()

			-- Reject bad or rapid requests before decoding JSON. Autosaves are client
			-- files, so this only accepts a bounded request for the player's own weapon.
			if !IsValid(ply) or !IsValid(wep) or !wep.CW20Weapon or wep:GetOwner() != ply then return end
			if !isstring(name_sv) or #name_sv > MAX_PRESET_NAME_LENGTH then return end
			if !isstring(encoded) or #encoded == 0 or #encoded > MAX_PRESET_DATA_LENGTH then return end

			local now = CurTime()
			if now < (ply.CW20NextAutosaveLoad or 0) then return end
			ply.CW20NextAutosaveLoad = now + AUTOSAVE_LOAD_INTERVAL

			local data = util.JSONToTable(encoded)
			if !istable(data) or !isstring(data.wepClass) then return end
			if (wep.ThisClass or wep:GetClass()) ~= data.wepClass then return end
			CustomizableWeaponry.preset.load(wep, data, name_sv)
		end)
		util.AddNetworkString(CustomizableWeaponry.preset.networkString .. ".AUTOSAVEMOD")
	end
end
function CustomizableWeaponry.preset:loadfix(data, name_sv)
	if not CustomizableWeaponry.customizationEnabled then
		return false
	end
	if not CustomizableWeaponry.preset.enabled then return end
	local CT = CurTime()
	if self.PresetLoadDelay then if CT < self.PresetLoadDelay then return end end
	if !data then return end
	if !self.CW20Weapon then return end
	if CLIENT then
		local preset = file.Read(CustomizableWeaponry.preset.getWeaponFolder(self) .. data .. ".txt", "DATA")
		if not preset or preset == "" then return end
		net.Start(CustomizableWeaponry.preset.networkString .. ".AUTOSAVEMOD")
			net.WriteString(data)
			net.WriteString(preset)
			net.WriteEntity(self)
		net.SendToServer()
	end
	if SERVER then
		if self.LastPreset ~= name_sv then
			local loadOrder = {}
			for k, v in pairs(data) do
				local attCategory = self.Attachments[k]
				if attCategory then
					local att = CustomizableWeaponry.registeredAttachmentsSKey[attCategory.atts[v]]
					if att then
						local pos = 1
						if att.dependencies or attCategory.dependencies or (self.AttachmentDependencies and self.AttachmentDependencies[att.name]) then
							pos = #loadOrder + 1
						end
						table.insert(loadOrder, pos, {category = k, position = v})
					end
				end
			end
			self:detachAll()
			for k, v in pairs(loadOrder) do
				self:attach(v.category, v.position - 1)
			end
			CustomizableWeaponry.grenadeTypes.setTo(self, (data.grenadeType or 0), true)
			self.LastPreset = name_sv
			umsg.Start("CW20_PRESETSUCCESS", self.Owner)
				umsg.String(name_sv)
			umsg.End()
		else
			self:detachAll()
			SendUserMessage("CW20_PRESETDETACH", self.Owner)
			CustomizableWeaponry.grenadeTypes.setTo(self, 0, true)
		end
	end
	self.PresetLoadDelay = CT + CustomizableWeaponry.preset.delay
end

if SERVER then
	local cvar = CreateConVar("cw_preset_autosave_sv", 1, FCVAR_ARCHIVE)
	util.AddNetworkString("CW20.Autoloadattachments")
	local function WeapEquip( weapon, ply )
		if !cvar:GetBool() then return end
		if !weapon.CW20Weapon then return end
		if ply:IsBot() then return end
		timer.Simple(0.5, function()
			if !IsValid(weapon) then return end
			if weapon.disableDropping then return end
			if weapon.DONTAUTOLOADATTS then return end
			weapon.PresetLoadDelay = 0
			weapon.ThisClass = weapon:GetClass()
			net.Start("CW20.Autoloadattachments")
				net.WriteEntity(weapon)
			net.Send(ply)
		end)
	end
	hook.Add( "WeaponEquip", "CW20.WeaponEquip.AutosaveHook", WeapEquip )
	local function fa(ply, ent, wep)
		wep.DONTAUTOLOADATTS = true
	end
	hook.Add("CW20_PickedUpCW20Weapon", "AutosaveHook", fa)
else
	local cvar = CreateConVar("cw_preset_autosave_cl", 1, FCVAR_ARCHIVE)
	local debounceCvar = CreateConVar("cw_preset_autosave_debounce", "0.25", FCVAR_ARCHIVE,
		"Seconds to wait after the last CW2 attachment change before saving Autosave.", 0, 2)
	local pendingAutosaves = setmetatable({}, {__mode = "k"})

	net.Receive("CW20.Autoloadattachments", function()
		if !cvar:GetBool() then return end
		local weapon = net.ReadEntity()
		if !IsValid(weapon) or !weapon.CW20Weapon then return end
		weapon.PresetLoadDelay = 0
		CustomizableWeaponry.preset.loadfix(weapon, "Autosave")
	end)

	local function f(wep)
		if !IsValid(wep) then return end
		local ply = wep:GetOwner()
		if ply != LocalPlayer() then return end
		if !IsValid(ply) then return end
		if ply:IsBot() then return end

		-- Attaching or detaching several parts can trigger one callback per part.
		-- Save only the final state, which also sends only one PRESET_SAVED message.
		local revision = (pendingAutosaves[wep] or 0) + 1
		pendingAutosaves[wep] = revision

		local delay = debounceCvar:GetFloat()
		if delay <= 0 then
			pendingAutosaves[wep] = nil
			CustomizableWeaponry.preset.save(wep, "Autosave")
			return
		end

		timer.Simple(delay, function()
			if pendingAutosaves[wep] != revision then return end
			pendingAutosaves[wep] = nil

			if IsValid(wep) and wep:GetOwner() == LocalPlayer() then
				CustomizableWeaponry.preset.save(wep, "Autosave")
			end
		end)
	end
	CustomizableWeaponry.callbacks:addNew("postAttachAttachment", "AutosaveCallback1", f)
	CustomizableWeaponry.callbacks:addNew("postDetachAttachment", "AutosaveCallback2", f)
end

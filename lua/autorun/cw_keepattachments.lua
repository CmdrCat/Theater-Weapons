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
			-- A loadout can equip many different CW2 weapons in the same tick. Limit
			-- repeated requests for this weapon without dropping the other weapons.
			if now < (wep.CW20NextAutosaveLoad or 0) then return end
			wep.CW20NextAutosaveLoad = now + AUTOSAVE_LOAD_INTERVAL

			local data = util.JSONToTable(encoded)
			if !istable(data) or !isstring(data.wepClass) then return end
			if (wep.ThisClass or wep:GetClass()) ~= data.wepClass then return end
			-- Autosave is state restoration, not the manual preset toggle action.
			CustomizableWeaponry.preset.load(wep, data, name_sv, true)
		end)
		util.AddNetworkString(CustomizableWeaponry.preset.networkString .. ".AUTOSAVEMOD")
	end
end
if SERVER then
	local cvar = CreateConVar("cw_preset_autosave_sv", 1, FCVAR_ARCHIVE)
	util.AddNetworkString("CW20.Autoloadattachments")
	local function WeapEquip( weapon, ply )
		if !cvar:GetBool() then return end
		if !IsValid(weapon) or !IsValid(ply) or !weapon.CW20Weapon then return end
		if ply:IsBot() then return end
		timer.Simple(0.5, function()
			-- A loadout can strip/recreate weapons before this delayed request runs.
			if !IsValid(weapon) or !IsValid(ply) or weapon:GetOwner() != ply then return end
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

	-- Keep this helper local: reloading cw_preset.lua replaces the preset table,
	-- but existing net receivers survive and must still be able to load autosaves.
	local function loadAutosave(weapon)
		local presets = CustomizableWeaponry.preset
		if !CustomizableWeaponry.customizationEnabled or !presets.enabled then return end
		if weapon:GetOwner() != LocalPlayer() then return end

		local saved = file.Read(presets.getWeaponFolder(weapon) .. "Autosave.txt", "DATA")
		if not saved or saved == "" then return end

		net.Start(presets.networkString .. ".AUTOSAVEMOD")
			net.WriteString("Autosave")
			net.WriteString(saved)
			net.WriteEntity(weapon)
		net.SendToServer()
		weapon.PresetLoadDelay = CurTime() + presets.delay
	end

	net.Receive("CW20.Autoloadattachments", function()
		if !cvar:GetBool() then return end
		local weapon = net.ReadEntity()
		if !IsValid(weapon) or !weapon.CW20Weapon then return end
		weapon.PresetLoadDelay = 0
		loadAutosave(weapon)
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

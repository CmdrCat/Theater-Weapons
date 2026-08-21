local att = {}
att.name = "doi_atow_dlt19x"
att.displayName = "DLT-19x Targeting Blaster"
att.displayNameShort = "DLT-19x"
att.description = {[1] = {t = "Blaster", c = Color(255, 255, 255, 255)}}


function att:attachFunc()
	self.Primary.ClipSize = 4
	self.Primary.ClipSize_Orig = 4
	self:loadWeapon()
end


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/weapon_mg42")
end

local invisibleScale = Vector(0.009, 0.009, 0.009)
local normalScale = Vector(1, 1, 1)

function att:attach(wep)
	wep.oldShell = wep.Shell
	wep.Shell = false 

	if CLIENT then
		--Enables weapon VM to go offscreen to hide reload
		self.allowSoloReloadDown = true

		--NO BULLET BELT
		self.forceRemoveRounds = true

		self.IndividualThink = function(wep, ...)
			if wep._orig_IndividualThink then
				wep._orig_IndividualThink(wep, ...)
			end

			if wep.forceRemoveRounds and wep.adjustVisibleRounds then
				wep:adjustVisibleRounds(0)
			end
		end
	end

	if CLIENT and self.CW_VM and IsValid(self.CW_VM) then

		if self.RoundBeltBoneNames then
			for i, bullet in ipairs(self.RoundBeltBoneNames) do
				local b = self.CW_VM:LookupBone(bullet)
				if type(b) == "number" and b ~= -1 then
					self.CW_VM:ManipulateBoneScale(b, Vector(0.009, 0.009, 0.009))
				end
			end
		end
	end
end

function att:detach(wep)
	if wep.oldShell ~= nil then
		wep.Shell = wep.oldShell
		wep.oldShell = nil
	end

	--Disables offscreen reload
	if CLIENT then
		self.allowSoloReloadDown = nil
	end

	if CLIENT and self.CW_VM and IsValid(self.CW_VM) then

		if self.RoundBeltBoneNames then
			for i, bullet in ipairs(self.RoundBeltBoneNames) do
				local b = self.CW_VM:LookupBone(bullet)
				if type(b) == "number" and b ~= -1 then
					self.CW_VM:ManipulateBoneScale(b, Vector(1, 1, 1))
				end
			end
		end
	end

	--HELLO BOOLETS
	self.forceRemoveRounds = false

	if CLIENT and IsValid(self) and self.adjustVisibleRounds then
		if self.initBeltBones then
			self:initBeltBones()
		end

		local reserve = 0
		if IsValid(self.Owner) then
			reserve = self.Owner:GetAmmoCount(self.Primary.Ammo) or 0
		end

		local clip = 0
		if self.Clip1 then
			clip = self:Clip1() or 0
		end

		self:adjustVisibleRounds(reserve + clip)
	end

	-- reattach sound callbacks so reload triggers adjustVisibleRounds again
	if CLIENT and self.Sounds and self.Sounds.reload and self.Sounds.reload[5] then
		self.Sounds.reload[5].callback = function()
			if IsValid(self) and self.adjustVisibleRounds then
				local r = 0
				if IsValid(self.Owner) then r = self.Owner:GetAmmoCount(self.Primary.Ammo) or 0 end
				local c = self:Clip1() or 0
				self:adjustVisibleRounds(r + c)
			end
		end
	end

	if CLIENT and self.Sounds and self.Sounds.reload2 and self.Sounds.reload2[7] then
		self.Sounds.reload2[7].callback = function()
			if IsValid(self) and self.adjustVisibleRounds then
				local r = 0
				if IsValid(self.Owner) then r = self.Owner:GetAmmoCount(self.Primary.Ammo) or 0 end
				local c = self:Clip1() or 0
				self:adjustVisibleRounds(r + c)
			end
		end
	end
end

CustomizableWeaponry:registerAttachment(att)
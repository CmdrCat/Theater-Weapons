local att = {}
att.name = "doi_atow_dlt19x"
att.displayName = "DLT-19x Targeting Blaster"
att.displayNameShort = "DLT-19x"
att.description = {[1] = {t = "Targeting Blaster Conversion", c = Color(255, 255, 255, 255)}}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/weapon_mg42")
end

-- Register Fire and Reload Sounds via standard CW 2.0 methods
CustomizableWeaponry:addFireSound("DLT19X_FIRE", "weapons_too/dlt19xconv/dlt19x_fire.wav", 1, 105, CHAN_STATIC)
CustomizableWeaponry:addReloadSound("DLT19X_COOLED", "weapons_too/dlt19xconv/cooled.wav")
CustomizableWeaponry:addReloadSound("DLT19X_OVERHEAT", "weapons_too/dlt19xconv/overheat.wav")

local invisibleScale = Vector(0.009, 0.009, 0.009)
local normalScale = Vector(1, 1, 1)
local beltBoneNames = {"MG42_BELT_MASTER"}

local function setBoneScales(vm, boneNames, scale)
	if not IsValid(vm) or not boneNames then
		return
	end

	for _, boneName in ipairs(boneNames) do
		local bone = vm:LookupBone(boneName)
		if type(bone) == "number" and bone ~= -1 then
			vm:ManipulateBoneScale(bone, scale)
		end
	end
end

local function setMG42BeltVisibility(wep, scale)
	if not CLIENT or not IsValid(wep) or not IsValid(wep.CW_VM) then
		return
	end
	setBoneScales(wep.CW_VM, beltBoneNames, scale)
	setBoneScales(wep.CW_VM, wep.RoundBeltBoneNames, scale)
end

local function restoreVisibleRounds(wep)
	if not wep.adjustVisibleRounds then
		return
	end
	if wep.initBeltBones then
		wep:initBeltBones()
	end
	local reserve = IsValid(wep.Owner) and (wep.Owner:GetAmmoCount(wep.Primary.Ammo) or 0) or 0
	wep:adjustVisibleRounds(reserve + (wep:Clip1() or 0))
end

function att:attachFunc()
	if self._dlt19xOriginalClipSize == nil then
		self._dlt19xOriginalClipSize = self.Primary.ClipSize
		self._dlt19xOriginalClipSizeOrig = self.Primary.ClipSize_Orig
	end
    
	self._dlt19xOriginalFireSound = self.FireSound
	self._dlt19xOriginalSounds = table.Copy(self.Sounds)
	self._dlt19xOriginalPostPrimary = self.postPrimaryAttack

	-- Base Settings & Force 4-Round Clip
	self.Primary.ClipSize = 4
	self.Primary.ClipSize_Orig = 4
	self:SetClip1(4) 
    
	self.oldShell = self.Shell
	self.Shell = false

	-- Use standard CW 2.0 sound configuration
	self.FireSound = "DLT19X_FIRE"

	-- Normal reload sound
	self.Sounds.base_reload = {
		{time = 0.2, sound = "DLT19X_COOLED"},
	}

	-- Empty reload sound
	self.Sounds.base_reload_empty = {
		{time = 0.4, sound = "DLT19X_COOLED"},
	}

	-- Trigger overheat sound when the 4th (last) round is fired
	self.postPrimaryAttack = function(wep)
		if wep._dlt19xOriginalPostPrimary then
			wep:_dlt19xOriginalPostPrimary()
		end
		
		if wep:Clip1() == 0 then
			wep:EmitSound("weapons_too/dlt19xconv/overheat.wav", 75, 100, 1, CHAN_WEAPON)
		end
	end

	if CLIENT then
		self.allowSoloReloadDown = true
		self.forceRemoveRounds = true
		self._dlt19xOriginalIndividualThink = self.IndividualThink
		self.IndividualThink = function(wep, ...)
			if wep._dlt19xOriginalIndividualThink then
				wep._dlt19xOriginalIndividualThink(wep, ...)
			end

			if wep.forceRemoveRounds then
				if wep.adjustVisibleRounds then
					wep:adjustVisibleRounds(0)
				end
				setMG42BeltVisibility(wep, invisibleScale)
			end
		end
	end

	self:loadWeapon()
	setMG42BeltVisibility(self, invisibleScale)
end

function att:detachFunc()
	if self._dlt19xOriginalClipSize ~= nil then
		self.Primary.ClipSize = self._dlt19xOriginalClipSize
		self.Primary.ClipSize_Orig = self._dlt19xOriginalClipSizeOrig
		self._dlt19xOriginalClipSize = nil
		self._dlt19xOriginalClipSizeOrig = nil
	end

	if self.oldShell ~= nil then
		self.Shell = self.oldShell
		self.oldShell = nil
	end

	if self._dlt19xOriginalFireSound then
		self.FireSound = self._dlt19xOriginalFireSound
		self._dlt19xOriginalFireSound = nil
	else
		self.FireSound = "DOIMG42_FIRE"
	end

	if self._dlt19xOriginalSounds then
		self.Sounds = table.Copy(self._dlt19xOriginalSounds)
		self._dlt19xOriginalSounds = nil
	end

	self.postPrimaryAttack = self._dlt19xOriginalPostPrimary
	self._dlt19xOriginalPostPrimary = nil

	if CLIENT then
		self.allowSoloReloadDown = nil
		self.forceRemoveRounds = nil
		self.IndividualThink = self._dlt19xOriginalIndividualThink
		self._dlt19xOriginalIndividualThink = nil

		setMG42BeltVisibility(self, normalScale)
		restoreVisibleRounds(self)
	end

	self:loadWeapon()
end

CustomizableWeaponry:registerAttachment(att)
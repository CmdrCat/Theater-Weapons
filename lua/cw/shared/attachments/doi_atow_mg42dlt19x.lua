local att = {}
att.name = "doi_atow_dlt19x"
att.displayName = "DLT-19X conversion"
att.displayNameShort = "DLT-19X"
att.description = {[1] = {t = "Replaces internals with that of the DLT-19X longblaster, firing precise bolts of deadly plasma", c = Color(255, 255, 255, 255)}}

att.statModifiers = {DamageMult = 13 / 12,
FireDelayMult = 56 / 9,
ReloadSpeedMult = 2.1,
HipSpreadMult = -1,
RecoilMult = -0.75,
VelocitySensitivityMult = -1,
AimSpreadMult = -1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/weapon_mg42")
end

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

	self.PrintName = "DLT-19X"

	self.ADSFireAnim = false
	self.ForegripOverride = true
	self.ForegripParent = "nobipod"
	self.CanRestOnObjects = true

	self.PenMod = 0
	self.CanRicochet = false

	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = 10
	self.Primary.ClipSize_Orig = 10
	self:unloadWeaponPartially()

	setBoneScales(self.CW_VM, {"MG42_BIPOD"}, Vector(0.009, 0.009, 0.009))
	self.BipodInstalled = false
	self.CanRestOnObjects = true
	
	self.FireSound = "DLT19X_FIRE"

	self.ViewModelSoloReloadDownPos = Vector(2, -6, -7)
	self.ViewModelSoloReloadDownAng = Angle(30, -7.5, 0)
	self.ViewModelSoloReloadDownPos2 = Vector(2, -6, -7)
	self.ViewModelSoloReloadDownAng2 = Angle(30, -7.5, 0)
    
	self._dlt19xOriginalSounds = table.Copy(self.Sounds)
	self._dlt19xOriginalPostPrimary = self.postPrimaryAttack
    
	self.oldShell = self.Shell
	self.Shell = false

	self.Sounds.base_reload = {
		{time = 0.2, sound = "DLT19X_VENTING"},
		{time = 264/33.5, sound = "DLT19X_COOLED"}
	}

	-- Empty reload sound
	self.Sounds.base_reload_empty = {
		{time = 0.4, sound = "DLT19X_VENTING"},
		{time = 284/33.5, sound = "DLT19X_COOLED"}

	}

	self.postPrimaryAttack = function(wep)
		if wep._dlt19xOriginalPostPrimary then
			wep:_dlt19xOriginalPostPrimary()
		end
		
		if wep:Clip1() == 0 then
			wep:EmitSound("weapons_too/dlt19xconv/overheat.wav", 75, 100, 1, CHAN_WEAPON)
		end
	end

	if CLIENT then	self.allowSoloReloadDown = true
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

	self.PrintName = "MG 42"

	if clip == 10 then
		self:SetClip1(250)
	end 

	self.ADSFireAnim = true

	self.PenMod = 1
	self.CanRicochet = true

	self:CycleFiremodes()
	self.FireModes = {"auto","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	setBoneScales(self.CW_VM, {"MG42_BIPOD"}, Vector(1, 1, 1))
	self.BipodInstalled = true
	self.CanRestOnObjects = false

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	if self.oldShell ~= nil then
		self.Shell = self.oldShell
		self.oldShell = nil
	end

	self.FireSound = "DOIMG42_FIRE"
	self.reloadAnimFunc = nil

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
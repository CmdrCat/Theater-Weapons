local att = {}
att.name = "doi_atow_dlt19x"
att.displayName = "DLT-19X conversion"
att.displayNameShort = "DLT-19X"
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_BEAM
att.reticle = "effects/sw_laser_white_front"
att.description = {[1] = {t = "Replaces internals with that of the DLT-19X longblaster, firing precise bolts of deadly plasma", c = CustomizableWeaponry.textColors.COSMETIC},
				   [2] = {t = "Bolts are colorable!", c = CustomizableWeaponry.textColors.COSMETIC},
				   [3] = {t = "Increases headshot multiplier from 1.2 to 2.5", c = CustomizableWeaponry.textColors.POSITIVE},
				   [4] = {t = "Decreases capacity to 10 bolts", c = CustomizableWeaponry.textColors.NEGATIVE},
				   [5] = {t = "Increases effective range to 999 M", c = CustomizableWeaponry.textColors.POSITIVE},
				   [6] = {t = "Decreases damage fall off to 0%", c = CustomizableWeaponry.textColors.POSITIVE}}

att.statModifiers = {DamageMult = 3 / 2,
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
	self.Trivia = {text = "Longblaster manufactured for high precision and power over long ranges.", x = 200, y = -650}

	self.TracerFrequency = 1
	self.TracerName = "blastertracer"
	self.TracerImpactDecal = "fadingscorch"
	self.TracerColor = (self.SightColors and self:getSightColor(att.name)) or Color(255, 0, 0, 255)
	self.MuzzleEffect = nil

	self.ADSFireAnim = false
	self.ForegripOverride = true
	self.ForegripParent = "nobipod"
	self.CanRestOnObjects = true

	self.PenMod = 0
	self.CanRicochet = false

	self.Primary.Ammo = "AR2"
	if IsValid(self.Owner) and self.Owner.GiveAmmo then
		self.Owner:GiveAmmo(9999, "AR2", true)
	end

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

	if SERVER then
		return
	end

	if self.MaterialIndexPrimary then
		for i, index in ipairs(self.MaterialIndexPrimary) do
			self.CW_VM:SetSubMaterial(index, "models/weapons/v_models/famas/v_famas_parts")
		end
	end

	self.DLT19XReloadPos = Vector(2, 1, -7)
	self.DLT19XReloadAng = Angle(-30, 5, 0)

	self.reloadAnimFunc = function(wep, mag)
		local reloadAnimation = mag == 0 and "reload_empty" or "reload"
		wep:sendWeaponAnim(reloadAnimation, wep.ReloadSpeed)

		if CLIENT and IsValid(wep.CW_VM) then
			wep.CW_VM:SetCycle(0.001)
			wep.CW_VM:SetPlaybackRate(0)
		end
	end
    
	self.dlt19xOriginalSounds = table.Copy(self.Sounds)
	self.dlt19xOriginalPostPrimary = self.postPrimaryAttack
    
	self.oldShell = self.Shell
	self.Shell = false

	self.Sounds.base_reload = {
		{time = 0.2, sound = "DLT19X_VENTING"},
		{time = 6, sound = "DLT19X_COOLED"}
	}

	-- Empty reload sound
	self.Sounds.base_reload_empty = {
		{time = 0.4, sound = "DLT19X_VENTING"},
		{time = 6.6, sound = "DLT19X_COOLED"}

	}

	self.postPrimaryAttack = function(wep)
		if wep.dlt19xOriginalPostPrimary then
			wep:dlt19xOriginalPostPrimary()
		end
		
		if wep:Clip1() == 0 then
			wep:EmitSound("weapons_too/dlt19xconv/overheat.wav", 75, 100, 1, CHAN_WEAPON)
		end
	end

	if CLIENT then
		self.forceRemoveRounds = true
		self.dlt19xReloadPosePos = Vector(0, 0, 0)
		self.dlt19xReloadPoseAng = Angle(0, 0, 0)
		self.dlt19xOriginalSendWeaponAnim = self.sendWeaponAnim
		self.sendWeaponAnim = function(wep, anim, speed, cycle, override, ent)
			wep.dlt19xOriginalSendWeaponAnim(wep, anim, speed, cycle, override, ent)

			if anim == "reload" or anim == "reload_empty" then
				local reloadTime = anim == "reload_empty" and wep.ReloadTime_Empty or wep.ReloadTime
				local animationSpeed = speed or wep.ReloadSpeed or 1
				local soundTime = 0
				local soundTable = wep.Sounds and wep.Sounds[wep.Animations[anim]]

				if soundTable then
					for _, soundData in ipairs(soundTable) do
						soundTime = math.max(soundTime, soundData.time or 0)
					end
				end

				wep.dlt19xReloadEnd = CurTime() + math.max(reloadTime, soundTime) / animationSpeed
				if IsValid(wep.CW_VM) then
					wep.CW_VM:SetCycle(0)
					wep.CW_VM:SetPlaybackRate(0.01)
				end
			end
		end
		self.dlt19xOriginalIndividualThink = self.IndividualThink
		self.IndividualThink = function(wep, ...)
			if wep.dlt19xOriginalIndividualThink then
				wep.dlt19xOriginalIndividualThink(wep, ...)
			end

			wep.TracerColor = wep:getSightColor(att.name) or wep.TracerColor

			if wep.dlt19xReloadEnd and CurTime() >= wep.dlt19xReloadEnd then
				wep.dlt19xReloadEnd = nil
				wep.dlt19xOriginalSendWeaponAnim(wep, "idle", 1)
				wep.IsReloading = false
				wep.Cycle = 1
			elseif IsValid(wep.CW_VM) and wep.dlt19xReloadEnd then
				local sequenceName = wep.CW_VM:GetSequenceName(wep.CW_VM:GetSequence())
				local reloadAnimation = sequenceName == wep.Animations.reload or sequenceName == wep.Animations.reload_empty

				if reloadAnimation then
					wep.CW_VM:SetCycle(0.001)
					wep.CW_VM:SetPlaybackRate(0)
				end
			end

			if wep.forceRemoveRounds then
				if wep.adjustVisibleRounds then
					wep:adjustVisibleRounds(0)
				end
				setMG42BeltVisibility(wep, invisibleScale)
			end
		end
		self.dlt19xOriginalApplyOffsetToVM = self.applyOffsetToVM
		self.applyOffsetToVM = function(wep, ...)
			wep.dlt19xOriginalApplyOffsetToVM(wep, ...)

			if IsValid(wep.CW_VM) then
				local basePos = wep.CW_VM:GetPos()
				local baseAng = wep.CW_VM:GetAngles()
				local eyeAngles = EyeAngles()
				local targetPos = wep.dlt19xReloadEnd and wep.DLT19XReloadPos or Vector(0, 0, 0)
				local targetAng = wep.dlt19xReloadEnd and wep.DLT19XReloadAng or Angle(0, 0, 0)
				local interpolation = math.min(FrameTime() * 10, 1)

				LerpVectorCW20(interpolation, wep.dlt19xReloadPosePos, targetPos)
				LerpAngleCW20(interpolation, wep.dlt19xReloadPoseAng, targetAng)

				wep.CW_VM:SetPos(basePos + eyeAngles:Forward() * wep.dlt19xReloadPosePos.x + eyeAngles:Right() * wep.dlt19xReloadPosePos.y + eyeAngles:Up() * wep.dlt19xReloadPosePos.z)
				wep.CW_VM:SetAngles(baseAng + wep.dlt19xReloadPoseAng)
			end
		end
	end

	self:loadWeapon()
	setMG42BeltVisibility(self, invisibleScale)
end

function att:detachFunc()
	local clip = self:Clip1() or 0

	self.PrintName = "MG 42"
	self.Trivia = {text = "Deploying your bipod will vastly improve your aiming accuracy.", x = 200, y = -650}

	self.TracerFrequency = 3
	self.TracerName = nil
	self.TracerImpactDecal = nil
	self.TracerColor = Color(255, 255, 255, 255)
	self.MuzzleEffect = "muzzleflash_suppressed"

	if clip == 10 then
		self:SetClip1(250)
	end 

	self.ADSFireAnim = true

	self.PenMod = 1
	self.CanRicochet = true

	self.Primary.Ammo = "7.92x57MM"

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

	if SERVER then
		return
	end

	for i, index in ipairs(self.MaterialIndexPrimary) do
		wep.CW_VM:SetSubMaterial(index, "")
	end

	if self.dlt19xOriginalSounds then
		self.Sounds = table.Copy(self.dlt19xOriginalSounds)
		self.dlt19xOriginalSounds = nil
	end

	self.postPrimaryAttack = self.dlt19xOriginalPostPrimary
	self.dlt19xOriginalPostPrimary = nil

	if CLIENT then
		self.forceRemoveRounds = nil
		self.dlt19xReloadEnd = nil
		self.dlt19xReloadPosePos = nil
		self.dlt19xReloadPoseAng = nil
		self.sendWeaponAnim = self.dlt19xOriginalSendWeaponAnim
		self.dlt19xOriginalSendWeaponAnim = nil
		self.IndividualThink = self.dlt19xOriginalIndividualThink
		self.dlt19xOriginalIndividualThink = nil
		self.applyOffsetToVM = self.dlt19xOriginalApplyOffsetToVM
		self.dlt19xOriginalApplyOffsetToVM = nil

		setMG42BeltVisibility(self, normalScale)
		restoreVisibleRounds(self)
	end

	self:loadWeapon()
end

CustomizableWeaponry:registerAttachment(att)
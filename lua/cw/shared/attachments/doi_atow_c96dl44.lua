local att = {}
att.name = "doi_atow_dl44"
att.displayName = "DL-44 Blaster Conversion"
att.displayNameShort = "DL-44"
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_BEAM
att.reticle = "effects/sw_laser_white_front"
att.description = {[1] = {t = "Replaces internals with blaster technology, firing precise bolts of energy", c = CustomizableWeaponry.textColors.COSMETIC},
				   [2] = {t = "Energy bolts are colorable!", c = CustomizableWeaponry.textColors.COSMETIC},
				   [3] = {t = "", c = CustomizableWeaponry.textColors.POSITIVE}}

att.statModifiers = {DamageMult = 1,
FireDelayMult = 1.15, 
ReloadSpeedMult = 0.85,
HipSpreadMult = 0,
RecoilMult = 0,
VelocitySensitivityMult = 0,
AimSpreadMult = 0}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/weapon_c96")
end

function att:attachFunc()

	self.PrintName = "C96 Blaster"
	self.Trivia = {text = "Never tell me the odds.", x = 200, y = -650}

	self.TracerFrequency = 1
	self.TracerName = "blastertracer"
	self.TracerImpactDecal = "fadingscorch"
	self.TracerColor = (self.SightColors and self:getSightColor(att.name)) or Color(255, 0, 0, 255)
	self.MuzzleEffect = nil

	self.ADSFireAnim = false
	self.ForegripOverride = true
	self.SprintingEnabled = false
	self.ForegripParent = "onehand"

	self.PenMod = 0
	self.CanRicochet = false

	self.FireModes = {"semi"}
	self.Primary.ClipSize = 9
	self.Primary.ClipSize_Orig = 9
	
	-- Force strict fire delay for 210 RPM (60 / 210)
	self._c96blasterOriginalFireDelay = self.Primary.FireDelay
	self.Primary.FireDelay = 60 / 210

	self:unloadWeaponPartially()

	self.FireSound = "DL44_FIRE"

	self.C96ReloadPos = Vector(2, 1, -7)
	self.C96ReloadAng = Angle(-30, 5, 0)

	self.reloadAnimFunc = function(wep, mag)
		local reloadAnimation = mag == 0 and "reload_empty" or "reload"
		wep:sendWeaponAnim(reloadAnimation, wep.ReloadSpeed)

		if CLIENT and IsValid(wep.CW_VM) then
			wep.CW_VM:SetCycle(0.001)
			wep.CW_VM:SetPlaybackRate(0)
		end
	end
    
	self._c96blasterOriginalSounds = table.Copy(self.Sounds)
	self._c96blasterOriginalPostPrimary = self.postPrimaryAttack
	self._c96blasterOriginalFireAnimFunc = self.fireAnimFunc

	-- Completely suppresses firing animations globally (hip and ADS)
	self.fireAnimFunc = function(wep)
		return
	end
    
	self.oldShell = self.Shell
	self.Shell = false

	self.Sounds.base_reload_clip = {
		{time = 0.2, sound = "DLT19X_VENTING"},
		{time = 3.0, sound = "DLT19X_COOLED"}
	}

	self.Sounds.base_reload_empty_clip = {
		{time = 0.4, sound = "DLT19X_VENTING"},
		{time = 3.0, sound = "DLT19X_COOLED"}
	}

	self.postPrimaryAttack = function(wep)
		if wep._c96blasterOriginalPostPrimary then
			wep:_c96blasterOriginalPostPrimary()
		end
		
		if wep:Clip1() == 0 then
			wep:EmitSound("weapons_too/dlt19xconv/overheat.wav", 75, 100, 1, CHAN_WEAPON)
		end
	end

	if CLIENT then
		self._c96blasterReloadPosePos = Vector(0, 0, 0)
		self._c96blasterReloadPoseAng = Angle(0, 0, 0)
		self._c96blasterOriginalSendWeaponAnim = self.sendWeaponAnim
		
		self.sendWeaponAnim = function(wep, anim, speed, cycle, override, ent)
			wep._c96blasterOriginalSendWeaponAnim(wep, anim, speed, cycle, override, ent)

			if anim == "reload" or anim == "reload_empty" or anim == "base_reload_clip" or anim == "base_reload_empty_clip" then
				local reloadTime = (anim:find("empty") and wep.ReloadTime_Empty) or wep.ReloadTime
				local animationSpeed = speed or wep.ReloadSpeed or 1
				local soundTime = 0
				local soundTable = wep.Sounds and wep.Sounds[wep.Animations[anim]]

				if soundTable then
					for _, soundData in ipairs(soundTable) do
						soundTime = math.max(soundTime, soundData.time or 0)
					end
				end

				wep._c96blasterReloadEnd = CurTime() + math.max(reloadTime, soundTime) / animationSpeed
				if IsValid(wep.CW_VM) then
					wep.CW_VM:SetCycle(0)
					wep.CW_VM:SetPlaybackRate(0.01)
				end
			end
		end

		self._c96blasterOriginalIndividualThink = self.IndividualThink
		self.IndividualThink = function(wep, ...)
			if wep._c96blasterOriginalIndividualThink then
				wep._c96blasterOriginalIndividualThink(wep, ...)
			end

			wep.TracerColor = wep:getSightColor(att.name) or wep.TracerColor

			if wep._c96blasterReloadEnd and CurTime() >= wep._c96blasterReloadEnd then
				wep._c96blasterReloadEnd = nil
				wep._c96blasterOriginalSendWeaponAnim(wep, "idle", 1)
				wep.IsReloading = false
				wep.Cycle = 1
			elseif IsValid(wep.CW_VM) and wep._c96blasterReloadEnd then
				local sequenceName = wep.CW_VM:GetSequenceName(wep.CW_VM:GetSequence())
				local reloadAnimation = sequenceName == wep.Animations.reload or sequenceName == wep.Animations.reload_empty or sequenceName == wep.Animations.reload_clip or sequenceName == wep.Animations.reload_empty_clip

				if reloadAnimation then
					wep.CW_VM:SetCycle(0.001)
					wep.CW_VM:SetPlaybackRate(0)
				end
			end
		end

		self._c96blasterOriginalApplyOffsetToVM = self.applyOffsetToVM
		self.applyOffsetToVM = function(wep, ...)
			wep._c96blasterOriginalApplyOffsetToVM(wep, ...)

			if IsValid(wep.CW_VM) then
				local basePos = wep.CW_VM:GetPos()
				local baseAng = wep.CW_VM:GetAngles()
				local eyeAngles = EyeAngles()
				local targetPos = wep._c96blasterReloadEnd and wep.C96ReloadPos or Vector(0, 0, 0)
				local targetAng = wep._c96blasterReloadEnd and wep.C96ReloadAng or Angle(0, 0, 0)
				local interpolation = math.min(FrameTime() * 10, 1)

				LerpVectorCW20(interpolation, wep._c96blasterReloadPosePos, targetPos)
				LerpAngleCW20(interpolation, wep._c96blasterReloadPoseAng, targetAng)

				wep.CW_VM:SetPos(basePos + eyeAngles:Forward() * wep._c96blasterReloadPosePos.x + eyeAngles:Right() * wep._c96blasterReloadPosePos.y + eyeAngles:Up() * wep._c96blasterReloadPosePos.z)
				wep.CW_VM:SetAngles(baseAng + wep._c96blasterReloadPoseAng)
			end
		end
	end

	self:loadWeapon()
end

function att:detachFunc()
	local clip = self:Clip1() or 0

	self.PrintName = "C96"
	self.Trivia = {text = "", x = 200, y = -650}

	self.TracerFrequency = 0
	self.TracerName = nil
	self.TracerImpactDecal = nil
	self.TracerColor = Color(255, 255, 255, 255)
	self.MuzzleEffect = "muzzleflash_suppressed"

	self.SprintingEnabled = true
	self.ForegripParent = "nah"

	if clip == 9 then
		self:SetClip1(10)
	end 

	self.ADSFireAnim = true
	self.PenMod = 1
	self.CanRicochet = true

	self.Primary.ClipSize = 10
	self.Primary.ClipSize_Orig = 10
	
	if self._c96blasterOriginalFireDelay then
		self.Primary.FireDelay = self._c96blasterOriginalFireDelay
		self._c96blasterOriginalFireDelay = nil
	end

	if self.oldShell ~= nil then
		self.Shell = self.oldShell
		self.oldShell = nil
	end

	self.FireSound = "DOIC96_FIRE"
	self.reloadAnimFunc = nil

	if self._c96blasterOriginalSounds then
		self.Sounds = table.Copy(self._c96blasterOriginalSounds)
		self._c96blasterOriginalSounds = nil
	end

	self.postPrimaryAttack = self._c96blasterOriginalPostPrimary
	self._c96blasterOriginalPostPrimary = nil

	if self._c96blasterOriginalFireAnimFunc then
		self.fireAnimFunc = self._c96blasterOriginalFireAnimFunc
		self._c96blasterOriginalFireAnimFunc = nil
	end

	if CLIENT then
		self._c96blasterReloadEnd = nil
		self._c96blasterReloadPosePos = nil
		self._c96blasterReloadPoseAng = nil
		self.sendWeaponAnim = self._c96blasterOriginalSendWeaponAnim
		self._c96blasterOriginalSendWeaponAnim = nil
		self.IndividualThink = self._c96blasterOriginalIndividualThink
		self._c96blasterOriginalIndividualThink = nil
		self.applyOffsetToVM = self._c96blasterOriginalApplyOffsetToVM
		self._c96blasterOriginalApplyOffsetToVM = nil
	end

	self:loadWeapon()
end

CustomizableWeaponry:registerAttachment(att)
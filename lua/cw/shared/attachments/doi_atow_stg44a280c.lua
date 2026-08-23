local att = {}
att.name = "doi_atow_stg44a280c"
att.displayName = "A280C conversion"
att.displayNameShort = "A280C"
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_BEAM
att.reticle = "effects/sw_laser_white_front"

-- Retained to satisfy base model checks
att.AttachmentModels = {}
att.AttachmentModelsWM = {}

att.description = {[1] = {t = "Replaces internals with that of the DLT-19X longblaster, firing precise bolts of deadly plasma", c = CustomizableWeaponry.textColors.COSMETIC},
				   [2] = {t = "Bolts are colorable!", c = CustomizableWeaponry.textColors.COSMETIC},
				   [3] = {t = "Increases headshot multiplier from 1.2 to 2.5", c = CustomizableWeaponry.textColors.POSITIVE}}

att.statModifiers = {DamageMult = 3 / 2,
FireDelayMult = 0.5,
ReloadSpeedMult = 0.94,
HipSpreadMult = -0.8,
RecoilMult = -0.75,
AimSpreadMult = -1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/weapon_stg44")
end

function att:attachFunc()
	-- SERVER CRASH FAILSAFE:
	-- The theater-weapons base accidentally calls a client function on the server.
	-- This injects an empty function on the server so the base doesn't crash.
	if SERVER and not self.setAttachmentModelState then
		self.setAttachmentModelState = function() end
	end

	self.SightWithRail = false

	self.PrintName = "A280C"
	self.Trivia = {text = "Standard-issue blaster rifle with reliable range and damage output.", x = 200, y = -650}

	--Tracer effect
	self.TracerFrequency = 1
	self.TracerName = "blastertracer"
	self.TracerImpactDecal = "fadingscorch"
	self.TracerColor = (self.SightColors and self:getSightColor(att.name)) or Color(255, 0, 0, 255)
	self.MuzzleEffect = nil

	--Unique blaster properties
	self.PenMod = 0
	self.CanRicochet = false

	self.oldShell = self.Shell
	self.Shell = false

	--Ammo
	self.Primary.Ammo = "AR2"
	if IsValid(self.Owner) and self.Owner.GiveAmmo then
		self.Owner:GiveAmmo(9999, "AR2", true)
	end
	self.Primary.ClipSize = 25
	self.Primary.ClipSize_Orig = 25
	self:unloadWeaponPartially()

	--Other weapon properties
	self.FireSound = "DOIA280C_FIRE"
	self.Chamberable = false
	self:CycleFiremodes() 
	self.FireModes = {"auto","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	--Model changes
	if IsValid(self.CW_VM) then
		if self.MagBoneName then
			local magBone = self.CW_VM:LookupBone(self.MagBoneName)
			if magBone then
				self.CW_VM:ManipulateBoneScale(magBone, Vector(0.009, 0.009, 0.009))
			end
		end

		local boltBone = self.CW_VM:LookupBone("STG_BOLT")
		if boltBone then
			self.CW_VM:ManipulateBoneScale(boltBone, Vector(0, 0, 0))
		end
	end

	if SERVER then
		return
	end

	if self.MaterialIndexPrimary then
		for i, index in ipairs(self.MaterialIndexPrimary) do
			self.CW_VM:SetSubMaterial(index, "models/weapons/v_models/famas/v_famas_parts")
		end
	end
	if self.MaterialIndexSecondary then
		for i, index in ipairs(self.MaterialIndexSecondary) do
			self.CW_VM:SetSubMaterial(index, "models/weapons/v_models/famas/v_famas_parts")
		end
	end

	--Reload animation changes
	self.ReloadPos = Vector(2, 1, -7)
	self.DLT19XReloadAng = Angle(-30, 5, 0)

	if self.ReloadTime and self.ReloadTime_Empty then
		self.ReloadTime_Empty = self.ReloadTime
	end

	self.reloadAnimFunc = function(wep, mag)
		local reloadAnimation = mag == 0 and "reload_empty" or "reload"
		wep:sendWeaponAnim(reloadAnimation, wep.ReloadSpeed)

		if CLIENT and IsValid(wep.CW_VM) then
			wep.CW_VM:SetCycle(0.001)
			wep.CW_VM:SetPlaybackRate(0)
		end
	end
    
	self.Sounds_Orig = table.Copy(self.Sounds)
	self.postPrimaryAttack_Orig = self.postPrimaryAttack
	self.FireAnimFunc_Orig = self.fireAnimFunc

	self.Sounds.base_reload = {
		{time = 0.2, sound = "DLT19X_VENTING"},
		{time = 1.9, sound = "DLT19X_COOLED"}
	}

	self.Sounds.base_reload_empty = {
		{time = 0.2, sound = "DLT19X_VENTING"},
		{time = 1.9, sound = "DLT19X_COOLED"}
	}

	self.postPrimaryAttack = function(wep)
		if wep.postPrimaryAttack_Orig then
			wep:postPrimaryAttack_Orig()
		end
		
		if wep:Clip1() == 0 then
			wep:EmitSound("weapons_too/dlt19xconv/overheat.wav", 75, 100, 1, CHAN_WEAPON)
		end
	end

	if CLIENT then
		self.ReloadPosePos = Vector(0, 0, 0)
		self.ReloadPoseAng = Angle(0, 0, 0)
		self.SendWeaponAnim_Orig = self.sendWeaponAnim
		self.sendWeaponAnim = function(wep, anim, speed, cycle, override, ent)
			wep.SendWeaponAnim_Orig(wep, anim, speed, cycle, override, ent)

			if anim == "reload" or anim == "reload_empty" then
				local reloadTime = wep.ReloadTime or 2
				local animationSpeed = speed or wep.ReloadSpeed or 1
				local soundTime = 0
				local soundTable = wep.Sounds and wep.Sounds[wep.Animations[anim]]

				if soundTable then
					for _, soundData in ipairs(soundTable) do
						soundTime = math.max(soundTime, soundData.time or 0)
					end
				end

				wep.ReloadEnd = CurTime() + math.max(reloadTime, soundTime) / animationSpeed
				if IsValid(wep.CW_VM) then
					wep.CW_VM:SetCycle(0)
					wep.CW_VM:SetPlaybackRate(0.01)
				end
			end
		end
		self.IndividualThink_Orig = self.IndividualThink
		self.IndividualThink = function(wep, ...)
			if wep.IndividualThink_Orig then
				wep.IndividualThink_Orig(wep, ...)
			end

			wep.TracerColor = wep:getSightColor(att.name) or wep.TracerColor

			if wep:Clip1() == 0 and not wep._PlayedOverheatSound then
				wep:EmitSound("weapons_too/dlt19xconv/overheat.wav", 75, 100, 1, CHAN_WEAPON)
				wep._PlayedOverheatSound = true
			elseif wep:Clip1() > 0 then
				wep._PlayedOverheatSound = false
			end

			if wep.ReloadEnd and CurTime() >= wep.ReloadEnd then
				wep.ReloadEnd = nil
				wep.SendWeaponAnim_Orig(wep, "idle", 1)
				wep.IsReloading = false
				wep.Cycle = 1
			elseif IsValid(wep.CW_VM) and wep.ReloadEnd then
				local sequenceName = wep.CW_VM:GetSequenceName(wep.CW_VM:GetSequence())
				local reloadAnimation = sequenceName == wep.Animations.reload or sequenceName == wep.Animations.reload_empty

				if reloadAnimation then
					wep.CW_VM:SetCycle(0.001)
					wep.CW_VM:SetPlaybackRate(0)
				end
			end
		end
		self.ApplyOffsetToVM_Orig = self.applyOffsetToVM
		self.applyOffsetToVM = function(wep, ...)
			wep.ApplyOffsetToVM_Orig(wep, ...)

			if IsValid(wep.CW_VM) then
				local basePos = wep.CW_VM:GetPos()
				local baseAng = wep.CW_VM:GetAngles()
				local eyeAngles = EyeAngles()
				local targetPos = wep.ReloadEnd and wep.ReloadPos or Vector(0, 0, 0)
				local targetAng = wep.ReloadEnd and wep.DLT19XReloadAng or Angle(0, 0, 0)
				local interpolation = math.min(FrameTime() * 10, 1)

				LerpVectorCW20(interpolation, wep.ReloadPosePos, targetPos)
				LerpAngleCW20(interpolation, wep.ReloadPoseAng, targetAng)

				wep.CW_VM:SetPos(basePos + eyeAngles:Forward() * wep.ReloadPosePos.x + eyeAngles:Right() * wep.ReloadPosePos.y + eyeAngles:Up() * wep.ReloadPosePos.z)
				wep.CW_VM:SetAngles(baseAng + wep.ReloadPoseAng)
			end
		end
	end

	self:loadWeapon()
end

function att:detachFunc()
	if SERVER and not self.setAttachmentModelState then
		self.setAttachmentModelState = function() end
	end
	if self.MaterialIndexPrimary then
		for i, index in ipairs(self.MaterialIndexPrimary) do
			self.CW_VM:SetSubMaterial(index, "models/khrcw2/doipack/stg44/weapon_stg_dm")
		end
	end

	self.SightWithRail = true

	local clip = self:Clip1() or 0

	self.PrintName = "StG 44"
	self.Trivia = {text = "The first weapon to be denominated as an assault rifle.", x = 200, y = -650}
    
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

	self.Primary.Ammo = "7.92x33MM"

	if IsValid(self.CW_VM) then
		if self.MagBoneName then
			local magBone = self.CW_VM:LookupBone(self.MagBoneName)
			if magBone then
				self.CW_VM:ManipulateBoneScale(magBone, Vector(1, 1, 1))
			end
		end

		local boltBone = self.CW_VM:LookupBone("STG_BOLT")
		if boltBone then
			self.CW_VM:ManipulateBoneScale(boltBone, Vector(1, 1, 1))
		end
	end

	self:CycleFiremodes()
	self.FireModes = {"auto", "semi", "safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	if self.oldShell ~= nil then
		self.Shell = self.oldShell
		self.oldShell = nil
	end

	self.FireSound = "DOISTG44_FIRE"
	self.reloadAnimFunc = nil
	self.Chamberable = true

	if self.Sounds_Orig then
		self.Sounds = table.Copy(self.Sounds_Orig)
		self.Sounds_Orig = nil
	end

	if self.postPrimaryAttack_Orig then
		self.postPrimaryAttack = self.postPrimaryAttack_Orig
	else
		self.postPrimaryAttack = function() end
	end
	self.postPrimaryAttack_Orig = nil

	if self.FireAnimFunc_Orig then
		self.fireAnimFunc = self.FireAnimFunc_Orig
		self.FireAnimFunc_Orig = nil
	end

	if CLIENT then
		self.ReloadEnd = nil
		self.ReloadPosePos = nil
		self.ReloadPoseAng = nil
		self.sendWeaponAnim = self.SendWeaponAnim_Orig
		self.SendWeaponAnim_Orig = nil
		self.IndividualThink = self.IndividualThink_Orig
		self.IndividualThink_Orig = nil
		self.applyOffsetToVM = self.ApplyOffsetToVM_Orig
		self.ApplyOffsetToVM_Orig = nil
	end

	self:loadWeapon()
end

CustomizableWeaponry:registerAttachment(att)
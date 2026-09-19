local att = {}
att.name = "bg_microbarrel"
att.displayName = "1\" Barrel"
att.displayNameShort = "1\" Barrel"
att.isBG = true
att.SpeedDec = -50

att.statModifiers = {DrawSpeedMult = 0.5,
					 ReloadSpeed = 0.25,
					 AimSpreadMult = 10,
					 HipSpreadMult = -0.5,
					 VelocitySensitivityMult = -0.5,
					 RecoilMult = -0.25,
					 ReloadSpeedMult = 1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("")
	att.description = {[1] = {t = "Goodbye heavy barrel; hello extremely poor range", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Decreases effective range by 90%", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [3] = {t = "Increases damage fall off by 30%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.ForegripOverride = true
	self.ForegripParent = "maggrip"

	self.MuzzleEffect = "muzzleflash_6"

	if not self:isAttachmentActive("sights") then
		self:updateIronsights("MicroBarrelIron")
	end

	self:updateSoundTo("CW_FAMASG2_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)

	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
end

function att:detachFunc()
	self.ForegripOverride = false
	self.ForegripParent = "none"

	self.MuzzleEffect = "muzzleflash_suppressed"

	self:revertToOriginalIronsights()
	if not self:isAttachmentActive("sights") then
		self:setBodygroup(self.SightBGs.main, self.SightBGs.carryhandle)
	end
	
	self:restoreSound()

	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "bg_longris"
att.displayName = "Knights Armament M16A4 RAS"
att.displayNameShort = "20\" RAS"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {AimSpreadMult = -0.1,
RecoilMult = -0.05,
ReloadSpeedMult = -0.3}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15longris")
	att.description = {[1] = {t = "A rail interface for long barrels.", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Decreases damage fall off by 5%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.longris)
	self:updateSoundTo("CW_AR15_LONGBARREL_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
	self:updateSoundTo("CW_AR15_LONGBARREL_FIRE_SUPPRESSED", CustomizableWeaponry.sounds.SUPPRESSED)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:restoreSound()
end

CustomizableWeaponry:registerAttachment(att)
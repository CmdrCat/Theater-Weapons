local att = {}
att.name = "bg_longbarrel"
att.displayName = "20\" M16A2 Barrel"
att.displayNameShort = "20\" M16"
att.isBG = true
att.SpeedDec = 3

att.statModifiers = {AimSpreadMult = -0.1,
					 RecoilMult = -0.05,
					 ReloadSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15longbarrel")
	att.description = {[1] = {t = "A barrel for long range engagements.", c = CustomizableWeaponry.textColors.COSMETIC},
	 				   [2]= {t = "Allows for a bipod.", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases damage fall off by 5%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.long)
	self:updateSoundTo("CW_AR15_LONGBARREL_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
	self:updateSoundTo("CW_AR15_LONGBARREL_FIRE_SUPPRESSED", CustomizableWeaponry.sounds.SUPPRESSED)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:restoreSound()
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "bg_ris"
att.displayName = "Knights Armament M4 RAS"
att.displayNameShort = "M4 RAS"
att.isBG = true

att.statModifiers = {VelocitySensitivityMult = 0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15ris")
	att.description = {[1] = {t = "A cosmetic handguard with a rail interface.", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Allows for a bipod.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.ris)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)
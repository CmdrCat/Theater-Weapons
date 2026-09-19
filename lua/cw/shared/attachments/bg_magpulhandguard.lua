local att = {}
att.name = "bg_magpulhandguard"
att.displayName = "Magpul MOE M-LOK Handguard"
att.displayNameShort = "Magpul"
att.isBG = true
att.SpeedDec = -5

att.statModifiers = {DrawSpeedMult = 0.1,
					 HipSpreadMult = 0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15magpul")
	att.description = {[1] = {t = "A comfortable, lightweight handguard.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.magpul)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)
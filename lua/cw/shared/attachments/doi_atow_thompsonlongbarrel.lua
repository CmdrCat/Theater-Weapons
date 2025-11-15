local att = {}
att.name = "doi_atow_thompsonlongbarrel"
att.displayName = "Extended Barrel"
att.displayNameShort = "Ext."
att.isBG = true

att.statModifiers = {RecoilMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/c96barrel")
	att.description = {[1] = {t = "Increases effective range by 5M", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.carbine)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.smg)
end

CustomizableWeaponry:registerAttachment(att)
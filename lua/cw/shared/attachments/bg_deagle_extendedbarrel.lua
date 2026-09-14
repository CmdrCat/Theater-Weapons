local att = {}
att.name = "bg_deagle_extendedbarrel"
att.displayName = "Extended barrel"
att.displayNameShort = "Ext. b."
att.isBG = true

att.statModifiers = {AimSpreadMult = -0.2, DrawSpeedMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/deagle_extendedbarrel")
	att.description = {[1] = {t = "Increases effective range by 10%", c = CustomizableWeaponry.textColors.POSITIVE}}
end


function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.extended)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)
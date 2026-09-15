local att = {}
att.name = "bg_ar15_carryhandlerail"
att.displayName = "Carry Handle Rail"
att.displayNameShort = "CAG"


if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "HOOOLYYY CAG", c = CustomizableWeaponry.textColors.POSITIVE}}
end
function att:attachFunc()
	self.PrintName = "CAR-15"
end

function att:detachFunc()
	self.PrintName = "AR-15"
end

CustomizableWeaponry:registerAttachment(att)
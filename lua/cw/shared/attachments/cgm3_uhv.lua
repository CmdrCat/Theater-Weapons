local att = {}
att.name = "ha_cgm3_uhv"
att.displayName = "84mm High Velocity Rounds"
att.displayNameShort = "HV"
att.SpeedDec = 4

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/cgm3_hv")
	att.description = {
	[1] = {t = "High velocity rounds with fast travel time", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Significantly higher blast damage", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Significantly lower blast radius", c = CustomizableWeaponry.textColors.NEGATIVE},
	[4] = {t = "Reduced vehicle armor penetration", c = CustomizableWeaponry.textColors.NEGATIVE}}
	
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)

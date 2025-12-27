local att = {}
att.name = "ha_cgm3_heat"
att.displayName = "84mm High Explosive Anti-Tank Rounds"
att.displayNameShort = "HEAT"
att.SpeedDec = 4

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/cgm3_heat")
	att.description = {
	[1] = {t = "Armor-piercing rounds with a powerful impact", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Increased vehicle armor penetration", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Slightly lower blast damage", c = CustomizableWeaponry.textColors.NEGATIVE},
	[4] = {t = "Slightly lower blast radius", c = CustomizableWeaponry.textColors.NEGATIVE}}
	
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)

local att = {}
att.name = "too_optic_category_magnified"
att.displayName = "Magnified Sights"
att.displayNameShort = "Magnified"


if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Changes your optic category to Magnified.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
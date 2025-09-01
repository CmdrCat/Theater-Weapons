local att = {}
att.name = "too_optic_category_reflex"
att.displayName = "Reflex Sights"
att.displayNameShort = "Reflex"


if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Changes your optic category to Reflex Sights.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
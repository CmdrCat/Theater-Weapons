local att = {}
att.name = "too_optic_category_reflex"
att.displayName = "Unmagnified Sights"
att.displayNameShort = "Unmag."


if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Changes your optic category to Unmagnified.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
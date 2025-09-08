local att = {}
att.name = "am_matchgrade"
att.displayName = "Match-Grade Rounds"
att.displayNameShort = "Match"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {[1] = {t = "Ammunition produced with tighter tolerances, resulting in more consistent ballistics.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Decreases damage fall off by 50%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
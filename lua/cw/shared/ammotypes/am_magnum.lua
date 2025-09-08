local att = {}
att.name = "am_magnum"
att.displayName = "Magnum Rounds"
att.displayNameShort = "Magnum"

att.statModifiers = {RecoilMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/magnumrounds")
	att.description = {[1] = {t = "Ammunition loaded with more propellant, resulting in greater kinetic energy.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Increases effective range by 15%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
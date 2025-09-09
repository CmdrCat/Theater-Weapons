local att = {}
att.name = "am_atow_heavy"
att.displayName = "Overpressure"
att.displayNameShort = "+P"

att.statModifiers = {RecoilMult = 0.2,}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/hvyammo")
	att.description = {{t = "Light JHP & more powder increases velocity", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
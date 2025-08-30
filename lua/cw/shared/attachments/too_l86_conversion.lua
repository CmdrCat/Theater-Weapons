local att = {}
att.name = "too_l86_conversion"
att.displayName = "Commander Variant"
att.displayNameShort = "FCG"

att.statModifiers = {DamageMult = -7 / 34,
FireDelayMult = -9 / 40}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Uses internals machined by C.G.I.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

CustomizableWeaponry:registerAttachment(att)

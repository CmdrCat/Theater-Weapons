local att = {}
att.name = "too_l86_conversion"
att.displayName = "Liberator Variant"
att.displayNameShort = "Liberator"

att.statModifiers = {DamageMult = -1 / 4,
FireDelayMult = -9 / 40}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Uses custom internals machined by C.G.I.", c = CustomizableWeaponry.textColors.POSITIVE}}
end
function att:attachFunc()
	self.PrintName = "Liberator"
end

function att:detachFunc()
	self.PrintName = "L86 LSW"
end

CustomizableWeaponry:registerAttachment(att)

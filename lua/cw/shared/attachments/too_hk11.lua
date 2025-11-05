local att = {}
att.name = "too_hk11"
att.displayName = "HK11 Conversion"
att.displayNameShort = "HK11"

att.statModifiers = {FireDelayMult = -3 / 8,
RecoilMult = -0.45,
DamageMult = -3 / 7}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Light machine gun variant with a heavy barrel and increased cyclic rate", c = CustomizableWeaponry.textColors.POSITIVE},
					   [2] = {t = "Decreases movement speed by 15 points", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.SpeedDec = 55
	self.PrintName = "HK11"
	self.Trivia = {text = "The HK11 is a machine gun variant fitted with a heavy barrel; it is used both in squad automatic and designated marksman roles.", x = -100, y = -900}
end

function att:detachFunc()
	self.SpeedDec = 40
	self.PrintName = "G3A3"
	self.Trivia = {text = "A battle rifle made in collaboration between Heckler & Koch and CETME.", x = -100, y = -900}
end

CustomizableWeaponry:registerAttachment(att)

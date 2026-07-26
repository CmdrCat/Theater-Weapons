local att = {}
att.name = "cw_sa-006_conv"
att.displayName = "SA-006 Conversion"
att.displayNameShort = "SA-006"
att.SpeedDec = 5

att.statModifiers = {RecoilMult = -0.83,
DamageMult = -4 / 11,
FireDelayMult = -5 / 18}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "An assault rifle with minimal recoil due to a balanced action", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.PrintName = "SA-006"
	self.Trivia = {text = "The Konstantinov SA-006 used counterweights to effectively to minimize recoil. However, due to reliability issues, the AK-103 was adoppted instead.", x = -100, y = -700}
	self.FireSound = "CW_MASADA_FIRE"
	self.FireSoundSuppressed = "CW_L85A2_FIRE_SUPPRESSED"
end

function att:detachFunc()
	self.PrintName = "AK-74"
	self.Trivia = {text = "A version of the legendary AKM that uses 5.45×39mm rounds.", x = -100, y = -700}
	self.FireSound = "CW_TOO_AK74_FIRE"
	self.FireSoundSuppressed = "CW_TOO_AK74_FIRE_SUPPRESSED"
end

CustomizableWeaponry:registerAttachment(att)

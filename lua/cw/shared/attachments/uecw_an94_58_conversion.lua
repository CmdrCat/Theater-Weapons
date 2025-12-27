local att = {}
att.name = "uecw_an94_58_conversion"
att.displayName = "5.8x42MM Conversion"
att.displayNameShort = "5.8x42MM"

att.statModifiers = {DamageMult = -2 / 15,
	FireDelayMult = -11 / 61,
	RecoilMult = 0.34}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Chinese version chambered in 5.8x42MM", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases effective range by 5 M", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases damage fall off by 5%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.FireSound = "CW_TOO_G3A3_FIRE"
	self.FireSoundSuppressed = "CW_FAMASG2_SUPPRESSED"
	self.Trivia = {text = "An obscure, experimental Chinese variant of the AN-94 chambered in 5.8x42MM.", x = -250, y = -450}
	self.Primary.Ammo = "5.8x42MM"
	self.ShellScale = 0.52
end

function att:detachFunc()
	self.FireSound = "CW_AN94_FIRE"
	self.FireSoundSuppressed = "CW_AN94_FIRE_SUPPRESSED"
	self.Trivia = {text = "A complex assault rifle with a unique hyperburst mechanism. The rifle of choice for C.G.I. counter-terrorists.", x = -250, y = -450}
	self.Primary.Ammo = "5.45x39MM"
	self.ShellScale = 0.49
end

CustomizableWeaponry:registerAttachment(att)
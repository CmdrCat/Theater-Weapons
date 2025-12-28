local att = {}
att.name = "ha_cgm3_762"
att.displayName = "FFV-553B 7.62x51MM Adapter"
att.displayNameShort = "7.62"

att.statModifiers = {DamageMult = -6 / 25,
	ReloadSpeedMult = 0.4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {
	[1] = {t = "Shell with an adapter to fire a 7.62x51MM bullet", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "No vehicle armor penetration blast damage", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "No blast radius", c = CustomizableWeaponry.textColors.NEGATIVE},
	[4] = {t = "Increases effective range by 55 M", c = CustomizableWeaponry.textColors.POSITIVE},
	[5] = {t = "Decreases damage fall off by 45%", c = CustomizableWeaponry.textColors.POSITIVE}}
	
end

function att:attachFunc()
	self.Trivia = {text = "The FFV-553B is a training adapter, allowing the user to fire a 7.62x51MM tracer round.", x = -1000, y = -800}
	self.FireSound = "CW_TOO_M40_FIRE"
end

function att:detachFunc()
	self.Trivia = {text = "The integrated scope has adjustable zoom.", x = -1000, y = -800}
	self.FireSound = "CGM3_FIRE"
end

CustomizableWeaponry:registerAttachment(att)

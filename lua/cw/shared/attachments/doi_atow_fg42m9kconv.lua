local att = {}
att.name = "doi_atow_fg42m9kconv"
att.displayName = "M9K Variant"
att.displayNameShort = "M9K"
att.SpeedDec = -15

att.statModifiers = {DamageMult = -1 / 11,
FireDelayMult = -1 / 12,
HipSpreadMult = -0.99,
ReloadSpeedMult = 0.5288,
RecoilMult = -0.45,
MaxSpreadIncMult = -0.99,
VelocitySensitivityMult = -1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Tight hipfire spread at the cost of lethality", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self.Trivia = {text = "The Fallschirmjägergewehr 42 Type 1. JOIN THE BATTLE FOR NET NEUTRALITY! THE FUTURE OF THE INTERNET DEPENDS ON YOU!", x = -450, y = -400}
end

function att:detachFunc()
	self.Trivia = {text = "One of the most influencial weapon designs of WWII, the FG 42 has inspired the designs of many other weapons. Has an integrated bipod.", x = -450, y = -400}
end

CustomizableWeaponry:registerAttachment(att)

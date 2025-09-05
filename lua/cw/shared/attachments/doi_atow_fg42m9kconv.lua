local att = {}
att.name = "doi_atow_fg42m9kconv"
att.displayName = "M9K Variant"
att.displayNameShort = "M9K"

att.statModifiers = {DamageMult = -1 / 33,
FireDelayMult = -4 / 279,
HipSpreadMult = -0.99,
ReloadSpeedMult = 0.5288,
RecoilMult = -0.45,
MaxSpreadIncMult = -0.99}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Tight hipfire spread at the cost of lethality", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

CustomizableWeaponry:registerAttachment(att)

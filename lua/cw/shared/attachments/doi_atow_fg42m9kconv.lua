local att = {}
att.name = "doi_atow_fg42m9kconv"
att.displayName = "M9K Variant"
att.displayNameShort = "M9K"

att.statModifiers = {FireDelayMult = -4 / 279,
HipSpreadMult = -1,
ReloadSpeedMult = 0.622396,
MaxSpreadIncMult = -1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Tight hipfire spread at the cost of lethality", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

CustomizableWeaponry:registerAttachment(att)

local att = {}
att.name = "doi_atow_m3pam1conv"
att.displayName = "PAM-1"
att.displayNameShort = "PAM-1"

att.statModifiers = {DamageMult = -19 / 65,
FireDelayMult = -5 / 16,
RecoilMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Argentinian Grease Gun variant chambered in 9x19mm", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

CustomizableWeaponry:registerAttachment(att)

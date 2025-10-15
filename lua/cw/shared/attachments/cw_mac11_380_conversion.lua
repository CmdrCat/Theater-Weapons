local att = {}
att.name = "cw_mac11_380_conversion"
att.displayName = ".380 ACP Receiver"
att.displayNameShort = ".380 ACP"

att.statModifiers = {FireDelayMult = -13 / 25,
DamageMult = -15 / 29,
RecoilMult = -0.75,
HipSpreadMult = 100}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Less powerful cartridge increases cyclic rate", c = CustomizableWeaponry.textColors.VPOSITIVE},
[2] = {t = "Decreases effective range by 25%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)

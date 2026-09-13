local att = {}
att.name = "md_snip2_m200_heavy_muzzle_brake"
att.displayName = "Heavy Muzzle Brake"
att.displayNameShort = "Brake"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {
RecoilMult = -0.25,
AimSpreadMult = -0.25,
VelocitySensitivityMult = 0.22}

if CLIENT then
	att.displayIcon = surface.GetTextureID("entities/heavy_muzzle_brake")
	att.description = {[1] = {t = "Large decrease in recoil", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
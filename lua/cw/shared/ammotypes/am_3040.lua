local att = {}
att.name = "am_3040"
att.displayName = ".30-40 Krag"
att.displayNameShort = ".30-40"

att.statModifiers = {DamageMult = -11 / 29,
	RecoilMult = -.15,
	FireDelayMult = -7 / 10}

att.sharedAmmoPool = {
	"7.62x54MMR",
	"7.92x57MM",
	".30-06",
	".30-03",
	".30-40",
	".303",
	".35 Winchester",
	".38-72",
	".40-72",
	".405 Winchester"
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/hvyammo")
	att.description = {[1] = {t = "Fire .30-40 Krag rounds", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Decreases effective range by 55M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 20%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.Ammo			= ".30-40"
end

function att:detachFunc()
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
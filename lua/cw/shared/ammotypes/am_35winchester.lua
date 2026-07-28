local att = {}
att.name = "am_35winchester"
att.displayName = ".35 Winchester"
att.displayNameShort = ".35"

att.statModifiers = {DamageMult = 6 / 29,
	RecoilMult = .3,
	FireDelayMult = -7 / 25}

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
	att.description = {[1] = {t = "Fire .35 Winchester rounds", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Decreases effective range by 60M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 17%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.ShellScale = 1.19
	self.Primary.Ammo			= ".35 Winchester"
end

function att:detachFunc()
	self.ShellScale = 1
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
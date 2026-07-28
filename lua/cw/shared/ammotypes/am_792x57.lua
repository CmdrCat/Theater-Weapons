local att = {}
att.name = "am_792x57"
att.displayName = "7.92x57MM Mauser"
att.displayNameShort = "7.92"

att.statModifiers = {DamageMult = 5 / 29,
	RecoilMult = .3,
	FireDelayMult = 1 / 8}

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
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {[1] = {t = "Fire 7.92x57MM Mauser rounds", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Increases effective range by 10M", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Increases damage fall off by 5%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.ShellScale = 1.04
	self.Primary.Ammo			= "7.92x57MM"
end

function att:detachFunc()
	self.ShellScale = 1
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
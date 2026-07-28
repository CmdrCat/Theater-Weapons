local att = {}
att.name = "am_303brit"
att.displayName = ".303 British"
att.displayNameShort = ".303"

att.statModifiers = {DamageMult = -48 / 145,
	FireDelayMult = -37 / 55}

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
	att.description = {[1] = {t = "Fire .303 British rounds", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Decreases effective range by 60M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 10%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.ShellScale = 1.01
	self.Primary.Ammo			= ".303"
end

function att:detachFunc()
	self.ShellScale = 1
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "am_4072"
att.displayName = ".40-72 Winchester"
att.displayNameShort = ".40-72"

att.statModifiers = {DamageMult = -63 / 145,
	RecoilMult = -.25,
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
	att.displayIcon = surface.GetTextureID("atts/magnumrounds")
	att.description = {[1] = {t = "Fire .40-72 Winchester rounds", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Decreases effective range by 70M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 30%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.MuzzleEffect = "muzzleflash_pistol_rbull"
	self.ShellScale = 1.33
	self.Primary.Ammo			= ".40-72"
end

function att:detachFunc()
	self.MuzzleEffect = "muzzleflash_ak47"
	self.ShellScale = 1
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
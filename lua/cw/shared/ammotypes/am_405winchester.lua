local att = {}
att.name = "am_405winchester"
att.displayName = ".405 Winchester"
att.displayNameShort = ".405"

att.statModifiers = {DamageMult = 7 / 29,
	RecoilMult = 1}

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
	att.description = {[1] = {t = "Most powerful round at the cost of dramatic energy loss; one to the head up close is all it takes.", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Decreases effective range by 75 M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 50%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.MuzzleEffect = "muzzleflash_pistol_deagle"
	self.ShellScale = 1.37
	self.Primary.Ammo			= ".405 Winchester"
end

function att:detachFunc()
	self.MuzzleEffect = "muzzleflash_ak47"
	self.ShellScale = 1
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "am_3006"
att.displayName = ".30-06 Springfield"
att.displayNameShort = ".30-06"

att.statModifiers = {DamageMult = -51 / 145,
	RecoilMult = -.1,
	FireDelayMult = -1 / 4}

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
	att.displayIcon = surface.GetTextureID("atts/apammo")
	att.description = {[1] = {t = "The most consistent round, allowing for quick follow-up shots at any range.", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Decreases effective range by 50 M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Decreases damage fall off by 5%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Primary.Ammo			= ".30-06"
end

function att:detachFunc()
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
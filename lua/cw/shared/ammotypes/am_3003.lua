local att = {}
att.name = "am_3003"
att.displayName = ".30-03 Springfield"
att.displayNameShort = ".30-03"

att.statModifiers = {DamageMult = 24 / 145,
	RecoilMult = .25}

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
	att.description = {[1] = {t = "Fire .30-03 Springfield rounds", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Decreases effective range by 45M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 15%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.Ammo			= ".30-03"
end

function att:detachFunc()
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
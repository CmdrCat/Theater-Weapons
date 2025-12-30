local att = {}
att.name = "md_ak_556_conv"
att.displayName = "5.56x45MM Conversion"
att.displayNameShort = "5.56x45MM"

att.statModifiers = {DamageMult = -9 / 46,
	FireDelayMult = -157 / 757,
	RecoilMult = -0.25,
	HipSpreadMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Fire 5.56x45MM rounds, which are more accurate but carry less energy", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases effective range by 5 M", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases damage fall off by 10%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.FireSound = "CW_M16A2_FIRE"
	self.FireSoundSuppressed = "CW_M16A2_FIRE_SUPPRESSED"
	self.Trivia = {text = "A Soviet gun meets an American cartridge.", x = 0, y = -600}
	self.Primary.Ammo = "5.56x45MM"
	self.ShellScale = 0.5
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
end

function att:detachFunc()
	self.FireSound = "CW_AKM_OFFICIAL_FIRE"
	self.FireSoundSuppressed = "CW_AKM_OFFICIAL_FIRE_SUPPRESSED"
	self.Trivia = {text = "The most common gun in the world, found in the hands of modern militaries and insurgents alike.", x = 0, y = -600}
	self.Primary.Ammo = "7.62x39MM"
	self.ShellScale = 0.69
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
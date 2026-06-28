local att = {}
att.name = "md_mini14_conv"
att.displayName = "Mini-14 Conversion"
att.displayNameShort = "Mini-14"

att.statModifiers = {DamageMult = -8 / 33,
	FireDelayMult = -1 / 4,
	RecoilMult = -0.1,
	HipSpreadMult = -0.23,
	ReloadSpeedMult = 0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Fire 5.56x45MM rounds, which have less recoil and damage.", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases capacity to 30 rounds", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases effective range by 50 M", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.PrintName = "Mini-14"
	self.FireSound = "CW_G36C_FIRE"
	self.FireSoundSuppressed = "CW_G36C_FIRE_SUPPRESSED"
	self.Primary.Ammo = "5.56x45MM"
	self.ShellScale = 0.5
	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
	self:loadWeapon()
end

function att:detachFunc()
	self.PrintName = "M14 EBR"
	self.FireSound = "CW_M14_FIRE"
	self.FireSoundSuppressed = "CW_M14_FIRE_SUPPRESSED"
	self.Primary.Ammo = "7.62x51MM"
	self.ShellScale = 0.69
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
	self:unloadWeaponPartially()
end

CustomizableWeaponry:registerAttachment(att)
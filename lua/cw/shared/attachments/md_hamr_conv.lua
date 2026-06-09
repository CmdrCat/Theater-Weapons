local att = {}
att.name = "md_hamr_conv"
att.displayName = "HAMR Conversion"
att.displayNameShort = "HAMR"
att.SpeedDec = 5

att.statModifiers = {DamageMult = -2 / 21,
	FireDelayMult = -1 / 26,
	RecoilMult = -0.6,
	HipSpreadMult = 0.04,
	ReloadSpeedMult = -0.2,
	AimSpreadMult = 3.17}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "A squad automatic weapon based on the SCAR, chambered in 5.56x45MM", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases damage fall off by 5%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 100
	self.Primary.ClipSize_Orig = 100
	self:loadWeapon()
	self.FireSound = "CW_G36C_FIRE_SUPPRESSED"
	self.FireSoundSuppressed = "CW_L85A2_FIRE_SUPPRESSED"
	self.Trivia = {text = "The Heat Adaptive Modular Rifle (HAMR) is squad automatic weapon based on the SCAR platform.", x = -100, y = -600}
	self.Primary.Ammo = "5.56x45MM"
	self.PrintName = "HAMR"
	self.ShellScale = 0.5
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:unloadWeaponPartially()
	self.FireSound = "CW_SCARH_FIRE"
	self.FireSoundSuppressed = "CW_TOO_G3A3_FIRE_SUPPRESSED"
	self.Trivia = {text = "A reliable battle rifle used by the US Army. Make sure your fingers are clear of the charging handle.", x = -100, y = -600}
	self.Primary.Ammo = "7.62x51MM"
	self.PrintName = "SCAR-H"
	self.ShellScale = 0.69
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "cw_svdg_conversion"
att.displayName = "SVDG Conversion"
att.displayNameShort = "SVDG"
att.SpeedDec = 95

att.statModifiers = {DamageMult = 13 / 7,
FireDelayMult = 11 / 6,
ReloadSpeedMult = -0.25,
RecoilMult = 1.5,
HipSpreadMult = 0.074}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Smoothbore variant that fires an experimental APFSDS round", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases surface penetration by 250%", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases capacity to 7 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [4] = {t = "Decreases damage fall off by 20%", c = CustomizableWeaponry.textColors.POSITIVE},
					   [5] = {t = "Decreases effective range by 85M", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 7
	self.Primary.ClipSize_Orig = 7
	self:unloadWeaponPartially()
	self.PenMod = 3.5
	self.PrintName = "SVDG"
	self.Trivia = {text = "A smoothbore variant that fires an experimental 4.5MM APFSDS round. Poor ballistics and complexity ultimate led to its abandonment.", x = -200, y = -450}
	self.FireSound = "CW_CHEYTAC_FIRE"
	self.FireSoundSuppressed = "CW_CHEYTAC_FIRE_SUPPRESSED"
	self.Primary.Ammo = "10/4.5x54MM"
	self.ShellScale = 0.9
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.PenMod = 1
	self.PrintName = "SVD"
	self.Trivia = {text = "Developed in the Soviet Union, this marksman rifle is used by militaries and insurgencies alike.", x = -200, y = -450}
	self.FireSound = "CW_SVD_OFFICIAL_FIRE"
	self.FireSoundSuppressed = "CW_SVD_OFFICIAL_FIRE_SUPPRESSED"
	self.Primary.Ammo = "7.62x54MMR"
	self.ShellScale = 0.69
end

CustomizableWeaponry:registerAttachment(att)

local att = {}
att.name = "doi_atow_stinger"
att.displayName = "Stinger Conversion"
att.displayNameShort = "Stinger"
att.SpeedDec = -5

att.statModifiers = {FireDelayMult = -9 / 16,
DamageMult = -24 / 49,
HipSpreadMult = -0.5,
MaxSpreadIncMult = -0.75,
RecoilMult = 2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "A man-portable aircraft variant, boasting a high fire rate", c = CustomizableWeaponry.textColors.POSITIVE},
					   [2] = {t = "Decreases capacity to 100 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},}
end

function att:attachFunc()
	self.Primary.ClipSize = 100
	self.Primary.ClipSize_Orig = 100
	self:unloadWeaponPartially()
	self.PrintName = "Stinger"
	self.Trivia = {text = "A handheld field modification of the 1919A4 aircraft machine gun. A marine who used this was awarded a Medal of Honor.", x = -300, y = -450}
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.PrintName = "M1919A6 Browning"
	self.Trivia = {text = ".30 caliber medium machine gun commonly seen mounted on vehicles.", x = -300, y = -450}
end

CustomizableWeaponry:registerAttachment(att)
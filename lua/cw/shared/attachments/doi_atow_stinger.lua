local att = {}
att.name = "doi_atow_stinger"
att.displayName = "Stinger Conversion"
att.displayNameShort = "Stinger"

att.statModifiers = {FireDelayMult = -9 / 16,
DamageMult = -24 / 49,
HipSpreadMult = -0.5,
MaxSpreadIncMult = -0.75,
RecoilMult = 2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "A man-portable aircraft variant, boasting a high fire rate", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 100
	self.Primary.ClipSize_Orig = 100
	self:unloadWeaponPartially()
	self.PrintName = "Stinger"
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.PrintName = "M1919A6 Browning"
end

CustomizableWeaponry:registerAttachment(att)
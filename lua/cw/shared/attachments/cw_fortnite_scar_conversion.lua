local att = {}
att.name = "cw_fortnite_scar_conversion"
att.displayName = "Legendary Assault Rifle Conversion"
att.displayNameShort = "Fortnite"

att.statModifiers = {DamageMult = 20 / 21,
FireDelayMult = 59 / 66,
ReloadSpeedMult = 0.8789,
RecoilMult = -0.5,
HipSpreadMult = -0.99,
MaxSpreadIncMult = -0.99}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Lethal and accurate at the cost of fire rate;", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "reliable assault rifle capable of handling all types of combat scenarios", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30
end

function att:detachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)

local att = {}
att.name = "cw_fortnite_scar_conversion"
att.displayName = "Legendary Assault Rifle Conversion"
att.displayNameShort = "Fortnite"

att.statModifiers = {DamageMult = 20 / 21,
FireDelayMult = 59 / 66,
ReloadSpeedMult = 0.8789,
RecoilMult = -0.5,
HipSpreadMult = -0.8,
MaxSpreadIncMult = -0.99}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Lethal and accurate at the cost of fire rate;", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Reliable assault rifle capable of handling all types of combat scenarios", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30
	self.PrintName = "Assault Rifle (Legendary)"
	self.Trivia = {text = "Fully automatic, flexible assault rifle capable of handling all types of combat scenarios.", x = -100, y = -450}
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:unloadWeaponPartially()
	self.PrintName = "SCAR-H"
	self.Trivia = {text = "A reliable battle rifle used by the US Army. Make sure your fingers are clear of the charging handle.", x = -100, y = -450}
end

CustomizableWeaponry:registerAttachment(att)

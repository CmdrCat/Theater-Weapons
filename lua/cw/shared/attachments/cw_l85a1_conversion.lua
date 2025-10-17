local att = {}
att.name = "cw_l85a1_conversion"
att.displayName = "L85A1 Conversion"
att.displayNameShort = "L85A1"

att.statModifiers = {DamageMult = 161 / 39,
RecoilMult = 25,
ReloadSpeedMult = 0.52,
VelocitySensitivityMult = 0.98}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Gun frequently jams, but loaded with heavier rounds to compensate", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [2] = {t = "Decreases effective range by 40 M", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [3] = {t = "Increases damage fall off by 90%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 1
	self.Primary.ClipSize_Orig = 1
	self.Chamberable = false
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Chamberable = true
end

CustomizableWeaponry:registerAttachment(att)

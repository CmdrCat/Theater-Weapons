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
	self:CycleFiremodes()
	self.FireModes = {"single", "safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = 1
	self.Primary.ClipSize_Orig = 1
	self:unloadWeaponPartially()
	self.Chamberable = false
	self.FireSound = "CW_M16A2_FIRE"
    self.FireSoundSuppressed = "CW_FAL_FIRE_SUPPRESSED"
	self.PrintName = "L85A1"
	self.Trivia = {text = "The L85A1 was a service rifle that was widely disliked by its users due to significant reliability issues.", x = -400, y = -800}
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Chamberable = true
	self.FireSound = "CW_L85A2_FIRE"
    self.FireSoundSuppressed = "CW_L85A2_FIRE_SUPPRESSED"
	self.PrintName = "L85A2"
	self.Trivia = {text = "A British bullpup assault rifle, having a longer range yet shorter overall length compared to other traditional rifles.", x = -400, y = -800}
end

CustomizableWeaponry:registerAttachment(att)

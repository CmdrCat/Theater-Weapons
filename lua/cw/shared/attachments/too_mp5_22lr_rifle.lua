local att = {}
att.name = "too_mp5_22lr_rifle"
att.displayName = "MP5 .22 LR Rifle Conversion"
att.displayNameShort = ".22 LR Rifle"
att.SpeedDec = -15

att.statModifiers = {FireDelayMult = -3 / 5,
DamageMult = -20 / 37,
RecoilMult = -0.75,
HipSpreadMult = -0.99,}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to a semi-auto .22 LR carbine", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases capacity to 25 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = 25
	self.Primary.ClipSize_Orig = 25
	self:unloadWeaponPartially()
	self.FireSound = "CW_MP7_OFFICIAL_FIRE"
	self.FireSoundSuppressed = "MWII_M13B_FIRE_SUPPRESSED"
	self.Primary.Ammo = ".22 LR"
	self.PrintName = "MP5 .22 LR Rifle"
	self.Trivia = {text = "The MP5 .22 LR Rifle is a civilian-legal, .22 LR variant of the MP5. Though semi-automatic, it boasts a very high cyclic rate, if your finger can keep up with it.", x = -600, y = -600}
	self.ShellScale = 0.51
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.FireSound = "CW_TOO_MP5_FIRE"
	self.FireSoundSuppressed = "CW_TOO_MP5_FIRE_SUPPRESSED"
	self.Primary.Ammo = "9x19MM"
	self.PrintName = "MP5A5"
	self.Trivia = {text = "This reliable submachine gun is the face of counter-terrorism due its successful usage by SAS operators in Operation Nimrod.", x = -600, y = -600}
	self.ShellScale = 0.81
end

CustomizableWeaponry:registerAttachment(att)

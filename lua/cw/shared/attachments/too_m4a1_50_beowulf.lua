local att = {}
att.name = "too_m4a1_50_beowulf"
att.displayName = ".50 Beowulf Receiver"
att.displayNameShort = ".50 Beowulf"
att.SpeedDec = 5

att.statModifiers = {FireDelayMult = 7 / 9,
DamageMult = 16 / 15,
RecoilMult = 3.5,
HipSpreadMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Heavy-hitting .50 Beowulf rounds for close-quarter engagements", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases capacity to 10 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [3] = {t = "Decreases effective range by 30%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 10
	self.Primary.ClipSize_Orig = 10
	self:unloadWeaponPartially()
	self.FireSound = "CW_FAL_FIRE"
	self.FireSoundSuppressed = "CW_TOO_M40_FIRESUPPRESSED"
	self.Primary.Ammo = ".50 Beowulf"
	self.PrintName = ".50 Beowulf Tactical"
	self.Trivia = {text = "The .50 Beowulf is a heavy round developed by Alexander Arms used for smashing through vehicles and armor alike.", x = -900, y = -700}
	self.ShellScale = 1.14
end

function att:detachFunc()
	local clip = self:Clip1() or 0

	if clip >= 10 then
		self:SetClip1(self.Primary.ClipSize_ORIG_REAL + clip - 10)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.FireSound = "CW_TOO_AR15_FIRE"
	self.FireSoundSuppressed = "CW_TOO_AR15_FIRE_SUPPRESSED"
	self.Primary.Ammo = "5.56x45MM"
	self.PrintName = "M4A1"
	self.Trivia = {text = "The AR-15 platform sees global use from civilians, law enforcement agencies, and militaries. Many modern firearms take inspiration from the AR-15 in some way.", x = -900, y = -700}
	self.ShellScale = 0.5
end

CustomizableWeaponry:registerAttachment(att)

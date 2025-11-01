local att = {}
att.name = "too_m4a1_50_beowulf"
att.displayName = ".50 Beowulf Receiver"
att.displayNameShort = ".50 Beowulf"

att.statModifiers = {FireDelayMult = 7 / 9,
DamageMult = 16 / 15,
RecoilMult = 3.5,
HipSpreadMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Heavy-hitting .50 Beowulf rounds for close-quarter engagements", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases effective range by 30%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 10
	self.Primary.ClipSize_Orig = 10
	self.Primary.Ammo = ".50 Beowulf"
	self.Trivia = {text = "The .50 Beowulf is a heavy round developed by Alexander Arms used for smashing through vehicles and armor alike.", x = -900, y = -700}
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Primary.Ammo = "5.56x45MM"
	self.Trivia = {text = "The AR-15 platform sees global use from civilians, law enforcement agencies, and militaries. Many modern firearms take inspiration from the AR-15 in some way.", x = -900, y = -700}
end

CustomizableWeaponry:registerAttachment(att)

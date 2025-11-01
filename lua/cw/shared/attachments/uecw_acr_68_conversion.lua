local att = {}
att.name = "uecw_acr_68_conversion"
att.displayName = "6.8 SPC Receiver"
att.displayNameShort = "6.8 SPC"

att.statModifiers = {DamageMult = 28 / 39,
	FireDelayMult = 27 / 43,
	RecoilMult = 2,
	HipSpreadMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Installs a 6.8mm Remington SPC conversion kit. Fire more lethal shots in semi-automatic mode.", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases effective range by 15 M", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases damage fall off by 10%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = 25
	self.Primary.ClipSize_Orig = 25
	self.Primary.Ammo = "6.8 SPC"
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Primary.Ammo = "5.56x45MM"
end

CustomizableWeaponry:registerAttachment(att)
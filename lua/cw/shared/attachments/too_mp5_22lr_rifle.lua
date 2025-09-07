local att = {}
att.name = "too_mp5_22lr_rifle"
att.displayName = "MP5 .22 LR Rifle Conversion"
att.displayNameShort = ".22 LR Rifle"

att.statModifiers = {FireDelayMult = -3 / 5,
DamageMult = -20 / 37,
RecoilMult = -0.75,
HipSpreadMult = -0.99,}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to a semi-auto .22 LR carbine", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = 25
	self.Primary.ClipSize_Orig = 25
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)

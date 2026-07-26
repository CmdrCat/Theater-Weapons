local att = {}
att.name = "doi_atow_c96carbineconv"
att.displayName = "M1932 Conversion"
att.displayNameShort = "M1932"
att.SpeedDec = 5

att.statModifiers = {FireDelayMult = -11 / 20,
DamageMult = -8 / 19,
RecoilMult = -0.01,
ReloadSpeedMult = 0.07}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Adds a full-auto firemode.", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Change firemode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.PrintName = "C96 M1932"
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.PrintName = "C96"
end

CustomizableWeaponry:registerAttachment(att)

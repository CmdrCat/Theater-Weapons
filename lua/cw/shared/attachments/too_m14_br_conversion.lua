local att = {}
att.name = "too_m14_br_conversion"
att.displayName = "Select-Fire Battle Rifle Conversion"
att.displayNameShort = "Auto"

att.statModifiers = {FireDelayMult = -2 / 5,
DamageMult = -5 / 11}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Adds select-fire capability", c = CustomizableWeaponry.textColors.VPOSITIVE},
[2] = {t = "Change fire mode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)

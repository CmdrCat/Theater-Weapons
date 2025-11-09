local att = {}
att.name = "cw_m14_br_conversion"
att.displayName = "Select-Fire Battle Rifle Conversion"
att.displayNameShort = "Auto"

att.statModifiers = {FireDelayMult = -2 / 5,
DamageMult = -5 / 11,
HipSpreadMult = -0.04,
VelocitySensitivityMult = -0.25}

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
	self.Trivia = {text = "The practicality of firing this in full-auto can be debated due to its significant recoil.", x = -873, y = -450}
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Trivia = {text = "A modern marksman rifle version of the classic M14.", x = -300, y = -450}
end

CustomizableWeaponry:registerAttachment(att)

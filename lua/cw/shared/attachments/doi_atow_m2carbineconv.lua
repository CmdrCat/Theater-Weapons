local att = {}
att.name = "doi_atow_m2carbineconv"
att.displayName = "Select-Fire Receiver"
att.displayNameShort = "Auto"

att.statModifiers = {FireDelayMult = -1 / 15,
HipSpreadMult = 0.2}

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
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)

local att = {}
att.name = "uecw_m16a3_conversion"
att.displayName = "M16A3 Conversion"
att.displayNameShort = "M16A3"

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to an M16A3, a select-fire variant of the M16A2", c = CustomizableWeaponry.textColors.VPOSITIVE},
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
	self.FireModes = {"semi","safe","3burst"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)
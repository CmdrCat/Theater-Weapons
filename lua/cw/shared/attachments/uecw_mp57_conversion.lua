local att = {}
att.name = "uecw_mp57_conversion"
att.displayName = "MP57 Conversion"
att.displayNameShort = "MP57"

att.statModifiers = {DamageMult = -31 / 51,
	FireDelayMult = -41 / 66}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to the MP57, a fully-automatic-only variant", c = CustomizableWeaponry.textColors.VPOSITIVE},
[2] = {t = "Change fire mode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"auto", "safe"}
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

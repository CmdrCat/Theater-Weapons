local att = {}
att.name = "cw2_mw2cr_strikerauto"
att.displayName = "Full-Auto Conversion"
att.displayNameShort = "Auto"

att.statModifiers = {FireDelayMult = -13 / 365,
DamageMult = -2 / 9}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/khyber")
	att.description = {[1] = {t = "Fully-automatic conversion.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"auto", "safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"double","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)

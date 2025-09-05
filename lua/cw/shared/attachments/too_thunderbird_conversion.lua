local att = {}
att.name = "too_thunderbird_conversion"
att.displayName = "Thunderbird Conversion"
att.displayNameShort = "Thunderbird"

att.statModifiers = {DamageMult = -27 / 79,
	FireDelayMult = -191 / 543.5}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to the Thunderbird, a fully-automatic-only variant", c = CustomizableWeaponry.textColors.VPOSITIVE}}
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
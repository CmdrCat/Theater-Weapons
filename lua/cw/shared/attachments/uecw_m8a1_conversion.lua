local att = {}
att.name = "uecw_m8a1_conversion"
att.displayName = "M8A1 Conversion"
att.displayNameShort = "M8A1"

att.statModifiers = {FireDelayMult = -2 / 5,
DamageMult = -11 / 36}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to 4-round burst only", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"4burst", "safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)
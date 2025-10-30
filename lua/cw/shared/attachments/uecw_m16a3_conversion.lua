local att = {}
att.name = "uecw_m16a3_conversion"
att.displayName = "M16A3 Conversion"
att.displayNameShort = "M16A3"

att.statModifiers = {DamageMult = -1 / 17}

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
	self.Trivia = {text = "The M16A3 is a fully automatic variant of the M16A2 that is used in a limited capacity by select armed units.", x = 0, y = -450}
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","3burst"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Trivia = {text = "A classic assault rifle known for its 3-round burst. Its variants still see widespread use to this day.", x = 0, y = -450}
end

CustomizableWeaponry:registerAttachment(att)
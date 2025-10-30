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
	self.Trivia = {text = "4-round burst assault rifle. Bursts can be fired in quick succession.", x = 50, y = -500}
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Trivia = {text = "An advanced assault rifle platform meant to replace the US Army's M4. It instead became C.G.I.'s service rifle.", x = 50, y = -500}
end

CustomizableWeaponry:registerAttachment(att)
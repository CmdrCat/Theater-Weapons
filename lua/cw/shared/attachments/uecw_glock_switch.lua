local att = {}
att.name = "uecw_glock_switch"
att.displayName = "Glock Switch"
att.displayNameShort = "Switch"
att.aimPos = {"HoodPos", "HoodAng"}
att.isSight = true

att.statModifiers = {DamageMult = -7 / 32,
	FireDelayMult = -1 / 3,
	HipSpreadMult = 4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Adds select-fire capability; good luck hitting anything", c = CustomizableWeaponry.textColors.VPOSITIVE},
[2] = {t = "Increases headshot multiplier from 1.2 to 1.5", c = CustomizableWeaponry.textColors.POSITIVE},
[3] = {t = "Change fire mode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE}}
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

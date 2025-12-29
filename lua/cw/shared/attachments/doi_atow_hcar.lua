local att = {}
att.name = "doi_atow_hcar"
att.displayName = "HCAR Conversion"
att.displayNameShort = "HCAR"

att.statModifiers = {DamageMult = 1 / 3,
	FireDelayMult = 5 / 19,
	RecoilMult = 2,
	HipSpreadMult = 0.04,
	ReloadSpeedMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Installs internals for the HCAR, a semi-automatic variant", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases effective range by 5 M", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Increases damage fall off by 5%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.FireDelayFast = 60/475
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self:unloadWeaponPartially()
	self.Trivia = {text = "The HCAR is a modernized, semi-automatic variant of the BAR made by Ohio Ordinance Works.", x = 0, y = -375}
	self.FireSound = "DOIGARAND_FIRE"
	self.PrintName = "HCAR"
end

function att:detachFunc()
	self.FireDelayFast = 60/600
	self:CycleFiremodes()
	self.FireModes = {"fastauto", "slowauto", "semi"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Trivia = {text = "The SLOW-FIRE fire-mode will lower the firerate to 425rpm.", x = 0, y = -375}
	self.FireSound = "DOIBAR_FIRE"
	self.PrintName = "M1918A2 BAR"
end

CustomizableWeaponry:registerAttachment(att)
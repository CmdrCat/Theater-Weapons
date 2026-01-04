local att = {}
att.name = "bruenbm20"
att.displayName = "7\" Bruen B-M20"
att.displayNameShort = "7\" Bruen"
att.isBG = true

att.statModifiers = {
	RecoilMult = 0.05,
	SpreadPerShotMult = - -0.125,
	DrawSpeedMult = 0.25}

    att.SpeedDec = -250

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_bruenbm20")
	att.description = {[1] = {t = "Handguard and barrel designed for full-on mobility", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.short)
	self.PrintName = "MCX Rattler"
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.med)
	self.PrintName = "MCX Virtus"
end




CustomizableWeaponry:registerAttachment(att)
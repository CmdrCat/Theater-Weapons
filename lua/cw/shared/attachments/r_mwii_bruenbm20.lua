local att = {}
att.name = "bruenbm20"
att.displayName = "7' BRUEN B-M20"
att.displayNameShort = "7' BRUEN"
att.isBG = true

att.statModifiers = {
	RecoilMult = 0.05,
	SpreadPerShotMult = - -0.125,
	DrawSpeedMult = 0.25}

    att.SpeedDec = -250

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_bruenbm20")
	att.description = {[1] = {t = "Full on mobility handguard and barrel.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.short)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.med)

end




CustomizableWeaponry:registerAttachment(att)
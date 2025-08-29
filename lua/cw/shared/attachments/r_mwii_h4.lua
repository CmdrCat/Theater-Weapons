local att = {}
att.name = "h4hg"
att.displayName = "H4 11 5'"
att.displayNameShort = "H4"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.05,
	DrawSpeedMult = 0.05}

    att.SpeedDec = -5

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_h4hg")
	att.description = {[1] = {t = "A short, lightweight handguard. Provides a great mobility boost.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
    self:setBodygroup(self.FrontBGs.main, self.FrontBGs.med)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.long)

end




CustomizableWeaponry:registerAttachment(att)
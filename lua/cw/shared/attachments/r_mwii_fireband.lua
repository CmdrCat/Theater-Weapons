local att = {}
att.name = "firebandhg"
att.displayName = "FIREBAND SBR"
att.displayNameShort = "SBR"
att.isBG = true

att.statModifiers = {
    RecoilMult = 0.2,
    VelocitySensitivityMult = 0.3,
    SpreadPerShotMult = 0.1,
	DrawSpeedMult = 0.2}

    att.SpeedDec = -70

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_firebrandhg")
	att.description = {[1] = {t = "A short, lightweight handguard. Provides a great mobility boost.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
    self:setBodygroup(self.FrontBGs.main, self.FrontBGs.short)
    self.ForegripOverride = true
    self.ForegripParent = "short"
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
    self:setBodygroup(self.FrontBGs.main, self.FrontBGs.long)
    self.ForegripOverride = true
    self.ForegripParent = "default"

end




CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "bruenechelon"
att.displayName = "14' BRUEN Echelon"
att.displayNameShort = "14' BRUEN"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.08,
	SpreadPerShotMult = - 0.20,
	DamageMult = 0.15,
	DrawSpeedMult = -0.125}

    att.SpeedDec = 20

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_bruenechelon")
	att.description = {[1] = {t = "A long handguard with a light barrel. Provides extra damage.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.long)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.med)

end




CustomizableWeaponry:registerAttachment(att)
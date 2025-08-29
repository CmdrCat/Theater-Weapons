local att = {}
att.name = "shroudhg"
att.displayName = "CARBINE SHROUD"
att.displayNameShort = "CLASSIC"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.20,
	DamageMult = -0.08,
	SpreadPerShotMult = -0.1,
	DrawSpeedMult = -0.3}

    att.SpeedDec = -10

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_carbineshroud")
	att.description = {[1] = {t = "A heavy handguard. Provides a amazing recoil control , but increases spread after each shot.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
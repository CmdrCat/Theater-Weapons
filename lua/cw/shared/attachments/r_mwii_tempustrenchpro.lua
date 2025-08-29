local att = {}
att.name = "trenchhg"
att.displayName = "TRENCH PRO'"
att.displayNameShort = "TRENCH"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.15,
	SpreadPerShotMult = - 0.10,
	DrawSpeedMult = -0.2}

    att.SpeedDec = -10

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_tempustrenchpro")
	att.description = {[1] = {t = "A medium , heavy handguard. Provides a great recoil control.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
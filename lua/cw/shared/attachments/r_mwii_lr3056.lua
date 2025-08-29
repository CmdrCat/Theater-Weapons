local att = {}
att.name = "lr30"
att.displayName = "LR-30-56"
att.displayNameShort = "LR"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.15,
	SpreadPerShotMult = -0.10,
	DrawSpeedMult = -0.2}

    att.SpeedDec = -5

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_isodmr")
	att.description = {[1] = {t = "A long handguard for accuracy and recoil control.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
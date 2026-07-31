local att = {}
att.name = "bruenechelon"
att.displayName = "14\" Bruen Echelon"
att.displayNameShort = "14\" Bruen"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {
    RecoilMult = -0.08,
	SpreadPerShotMult = - 0.20,
	DrawSpeedMult = -0.125}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_bruenechelon")
	att.description = {[1] = {t = "A long handguard with a light barrel", c = CustomizableWeaponry.textColors.VPOSITIVE},
[2] = {t = "Increases effective range by 20%", c = CustomizableWeaponry.textColors.VPOSITIVE}}
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
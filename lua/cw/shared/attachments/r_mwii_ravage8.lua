local att = {}
att.name = "ravage8stock"
att.displayName = "Ravage 8"
att.displayNameShort = "RAVAGE"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.20,
	DrawSpeedMult = 0.10,
	MaxSpreadIncMult = -0.10,
	}

    att.SpeedDec = 35

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_ravage8")
	att.description = {[1] = {t = "A somewhat heavy stock. Provides extreme recoil control and accuracy.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
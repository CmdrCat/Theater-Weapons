local att = {}
att.name = "fadestock"
att.displayName = "DEMO FADE"
att.displayNameShort = "FADE"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.05,}

    att.SpeedDec = -10

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_demofade")
	att.description = {[1] = {t = "A light aluminium stock. Provides Mobility and a bit of Recoil Control.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
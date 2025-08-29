local att = {}
att.name = "bufferstock"
att.displayName = "DEMO Buffertube"
att.displayNameShort = "BUFFER"
att.isBG = true

att.statModifiers = {
    RecoilMult = 0.3,
	DrawSpeedMult = 0.5,
	}

    att.SpeedDec = -50

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_buffertube")
	att.description = {[1] = {t = "Who needs a third point of contact?", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "raid90"
att.displayName = "RAID-90"
att.displayNameShort = "RAID"
att.isBG = true

att.statModifiers = {
    RecoilMult = 0.05,
	DrawSpeedMult = -0.1,
	SpreadPerShotMult = -0.08
	}

    att.SpeedDec = -15

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_raid90")
	att.description = {[1] = {t = "A skeleton stock that provides accuracy , and mobility.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
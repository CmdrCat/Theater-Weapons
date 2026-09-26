local att = {}
att.name = "bg_precisionstock_mp5a3"
att.displayName = "PRS Precision Stock"
att.displayNameShort = "PRS"
att.isBG = true
att.SpeedDec = 10

att.statModifiers = {RecoilMult = -0.05,
					 VelocitySensitivityMult = -0.5,
					 DrawSpeedMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a stock for marksmen", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_precisionstock_mp5a3 then
		local ent

		ent = self.AttachmentModelsVM.bg_precisionstock_mp5a3.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(2, 1)
		ent:SetBodygroup(4, 1)
		ent:SetBodygroup(5, 1)

		ent:SetBodygroup(3, 0)	
	end
end

function att:detachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end
end

CustomizableWeaponry:registerAttachment(att)

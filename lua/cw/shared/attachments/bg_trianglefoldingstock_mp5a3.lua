local att = {}
att.name = "bg_trianglefoldingstock_mp5a3"
att.displayName = "Triangle Folding Stock"
att.displayNameShort = "Folding"
att.isBG = true
att.SpeedDec = -5

att.statModifiers = {RecoilMult = 0.15,
					 DrawSpeedMult = 0.25,
					 HipSpreadMult = 1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mac11_unfolded_stock")
	att.description = {[1] = {t = "Adds a thin folding stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_trianglefoldingstock_mp5a3 then
		local ent
		
		ent = self.AttachmentModelsVM.bg_trianglefoldingstock_mp5a3.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(3, 1)

		ent:SetBodygroup(2, 0)
	end
end

function att:detachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end
end

CustomizableWeaponry:registerAttachment(att)

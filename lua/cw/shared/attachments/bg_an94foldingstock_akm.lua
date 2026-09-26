local att = {}
att.name = "bg_an94foldingstock_akm"
att.displayName = "AN-94 Folding Stock"
att.displayNameShort = "AN-94"
att.isBG = true
att.SpeedDec = -2.5

att.statModifiers = {RecoilMult = -0.025}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a light folding stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_an94foldingstock_akm then
		local ent
		
		ent = self.AttachmentModelsVM.bg_an94foldingstock_akm.ent

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

local att = {}
att.name = "bg_akmfixedstock_saiga12k"
att.displayName = "AKM Fixed Stock"
att.displayNameShort = "AKM"
att.isBG = true
att.SpeedDec = 2.5

att.statModifiers = {RecoilMult = -0.1,
					 HipSpreadMult = -0.025,
					 DrawSpeedMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a wooden fixed stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_akmfixedstock_saiga12k then
		local ent
		
		ent = self.AttachmentModelsVM.bg_akmfixedstock_saiga12k.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(3, 1)
		ent:SetBodygroup(4, 1)
		ent:SetBodygroup(5, 1)

		ent:SetBodygroup(2, 0)
	end
end

function att:detachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end
end

CustomizableWeaponry:registerAttachment(att)

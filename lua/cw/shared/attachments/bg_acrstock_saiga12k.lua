local att = {}
att.name = "bg_acrstock_saiga12k"
att.displayName = "ACR Telescoping Stock"
att.displayNameShort = "ACR"
att.isBG = true
att.SpeedDec = 10

att.statModifiers = {RecoilMult = -0.15,
					 HipSpreadMult = -0.025,
					 VelocitySensitivityMult = -0.5,
					 DrawSpeedMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
	att.description = {[1] = {t = "Adds a reliable telescoping stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_acrstock_saiga12k then
		local ent = self.AttachmentModelsVM.bg_acrstock_saiga12k.ent

		if IsValid(ent) then
			local stockGroup = 4
			local foundStockGroup = false

			for _, bodygroup in ipairs(ent:GetBodyGroups()) do
				if bodygroup.id == stockGroup then
					foundStockGroup = true
				else
					ent:SetBodygroup(bodygroup.id, 1)
				end
			end

			if foundStockGroup then
				ent:SetBodygroup(stockGroup, 0)
			end
		end
	end
end

function att:detachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end
end

CustomizableWeaponry:registerAttachment(att)

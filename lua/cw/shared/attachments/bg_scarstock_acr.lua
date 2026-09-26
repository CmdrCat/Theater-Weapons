local att = {}
att.name = "bg_scarstock_acr"
att.displayName = "SCAR Buttstock"
att.displayNameShort = "SCAR"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {RecoilMult = -0.05,
					 HipSpreadMult = -0.1,
					 DrawSpeedMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
	att.description = {[1] = {t = "Adds a bulky telescoping stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_scarstock_acr then
		local ent = self.AttachmentModelsVM.bg_scarstock_acr.ent

		if IsValid(ent) then
			local stockGroup = 9
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

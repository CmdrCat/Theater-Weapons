local att = {}
att.name = "bg_foldedstock"
att.displayName = "Folded Stock"
att.displayNameShort = "Folded"
att.isBG = true
att.SpeedDec = -20

att.statModifiers = {DrawSpeedMult = 1,
					 VelocitySensitivityMult = -1.5,
					 RecoilMult = 1,
					 HipSpreadMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/nostock")
	att.description = {[1] = {t = "Folds the stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_foldedstock then
		local ent = self.AttachmentModelsVM.bg_foldedstock.ent

		if IsValid(ent) then
			local stockBGs = self.StockBGs
			local stockGroup = stockBGs and stockBGs.main
			local foundStockGroup = false

			for i, bodygroup in ipairs(ent:GetBodyGroups()) do
				if bodygroup.id == stockGroup then
					foundStockGroup = true
				else
					ent:SetBodygroup(bodygroup.id, 1)
				end
			end

			if foundStockGroup and stockBGs.regular ~= nil then
				ent:SetBodygroup(stockGroup, stockBGs.regular)
			end
		end
	end
end

function att:detachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end

end

CustomizableWeaponry:registerAttachment(att)
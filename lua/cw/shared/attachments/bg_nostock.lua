local att = {}
att.name = "bg_nostock"
att.displayName = "No Stock"
att.displayNameShort = "None"
att.isBG = true
att.SpeedDec = -20

att.statModifiers = {DrawSpeedMult = 1,
					 VelocitySensitivityMult = -1.5,
					 RecoilMult = 1,
					 HipSpreadMult = 5}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/nostock")
	att.description = {[1] = {t = "Removes the stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_nostock then
		local ent
		
		ent = self.AttachmentModelsVM.bg_nostock.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(2, 3)
		ent:SetBodygroup(3, 5)
		ent:SetBodygroup(4, 2)
		ent:SetBodygroup(5, 2)
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
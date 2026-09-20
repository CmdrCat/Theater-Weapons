local att = {}
att.name = "bg_ar15sturdystock"
att.displayName = "MOE Carbine Stock"
att.displayNameShort = "MOE"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {RecoilMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
	att.description = {[1] = {t = "Adds a sturdy stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs and self.StockBGs.main and self.StockBGs.sturdy then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.sturdy)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and (self.AttachmentModelsVM.bg_ar15sturdystock or self.AttachmentModelsVM.doi_atow_frankensten) then
		local ent

		if self.AttachmentModelsVM.doi_atow_frankensten then
			local models = self.AttachmentModelsVM.doi_atow_frankensten.models
			ent = models[1] and models[1].ent
		else
			ent = self.AttachmentModelsVM.bg_ar15sturdystock.ent
			ent:SetBodygroup(0, 1)
			ent:SetBodygroup(1, 1)
			ent:SetBodygroup(3, 5)
			ent:SetBodygroup(4, 2)
			ent:SetBodygroup(5, 2)
		end

		ent:SetBodygroup(2, 2)
	end
end

function att:detachFunc()
	if self.StockBGs and self.StockBGs.main and self.StockBGs.regular then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end

	if CLIENT and self.AttachmentModelsVM and (self.AttachmentModelsVM.bg_ar15sturdystock or self.AttachmentModelsVM.doi_atow_frankensten) then
		local ent

		if self.AttachmentModelsVM.doi_atow_frankensten then
			local models = self.AttachmentModelsVM.doi_atow_frankensten.models
			ent = models[1] and models[1].ent
		else
			ent = self.AttachmentModelsVM.bg_ar15sturdystock.ent
		end

		ent:SetBodygroup(2, 0)
	end
end

CustomizableWeaponry:registerAttachment(att)

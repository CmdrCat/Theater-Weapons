local att = {}
att.name = "bg_ar15heavystock"
att.displayName = "M16 Fixed Stock"
att.displayNameShort = "M16"
att.isBG = true
att.SpeedDec = 2

att.statModifiers = {RecoilMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a heavy, fixed stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.heavy)
	end

	if CLIENT and self.AttachmentModelsVM and (self.AttachmentModelsVM.bg_ar15sturdystock or self.AttachmentModelsVM.doi_atow_frankensten) then
		local ent

		if self.AttachmentModelsVM.doi_atow_frankensten then
			local models = self.AttachmentModelsVM.doi_atow_frankensten.models
			ent = models[1] and models[1].ent
		else
			ent = self.AttachmentModelsVM.bg_ar15sturdystock.ent
		end

		ent:SetBodygroup(2, 1)
	end
end

function att:detachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
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

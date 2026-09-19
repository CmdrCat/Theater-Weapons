local att = {}
att.name = "bg_ar15sturdystock"
att.displayName = "MOE Carbine Stock"
att.displayNameShort = "MOE"
att.isBG = true

att.statModifiers = {RecoilMult = -0.05,
OverallMouseSensMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
	att.description = {[1] = {t = "Adds a sturdy stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.sturdy)
	end

	if CLIENT and self.AttachmentModelsVM and (self.AttachmentModelsVM.bg_ar15sturdystock or self.AttachmentModelsVM.doi_atow_frankensten) then
		local ent

		if self.AttachmentModelsVM.doi_atow_frankensten then
			local models = self.AttachmentModelsVM.doi_atow_frankensten.models
			ent = models[1] and models[1].ent
		else
			ent = self.AttachmentModelsVM.bg_ar15sturdystock.ent
		end

		ent:SetBodygroup(2, 2)
	end
end

function att:detachFunc()
	if self.StockBgs then
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

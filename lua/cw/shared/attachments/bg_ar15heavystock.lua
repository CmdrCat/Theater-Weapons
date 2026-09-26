local att = {}
att.name = "bg_ar15heavystock"
att.displayName = "M16 Fixed Stock"
att.displayNameShort = "M16"
att.isBG = true
att.SpeedDec = 10

att.statModifiers = {RecoilMult = -0.15,
					 MaxSpreadIncMult = 0.5,
					 VelocitySensitivityMult = 1,
					 DrawSpeedMult = -0.4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a heavy fixed stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs and self.StockBGs.main and self.StockBGs.heavy then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.heavy)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and (self.AttachmentModelsVM.bg_ar15heavystock or self.AttachmentModelsVM.doi_atow_frankensten) then
		local ent

		if self.AttachmentModelsVM.doi_atow_frankensten then
			local models = self.AttachmentModelsVM.doi_atow_frankensten.models
			ent = models[1] and models[1].ent
		else
			ent = self.AttachmentModelsVM.bg_ar15heavystock.ent
			ent:SetBodygroup(0, 1)
			ent:SetBodygroup(1, 1)
			ent:SetBodygroup(3, 5)
			ent:SetBodygroup(4, 2)
			ent:SetBodygroup(5, 2)
		end

		ent:SetBodygroup(2, 1)
	end
end

function att:detachFunc()
	if self.StockBGs and self.StockBGs.main and self.StockBGs.regular then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end


	if CLIENT and self.AttachmentModelsVM and (self.AttachmentModelsVM.bg_ar15heavystock or self.AttachmentModelsVM.doi_atow_frankensten) then
		local ent

		if self.AttachmentModelsVM.doi_atow_frankensten then
			local models = self.AttachmentModelsVM.doi_atow_frankensten.models
			ent = models[1] and models[1].ent
		else
			ent = self.AttachmentModelsVM.bg_ar15heavystock.ent
		end

		ent:SetBodygroup(2, 0)
	end
end

CustomizableWeaponry:registerAttachment(att)

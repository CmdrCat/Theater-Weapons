local att = {}
att.name = "bg_precisionstock_ar15"
att.displayName = "PRS Precision Stock"
att.displayNameShort = "PRS"
att.isBG = true
att.SpeedDec = 20

att.statModifiers = {RecoilMult = -0.2,
					 MaxSpreadIncMult = 0.5,
					 VelocitySensitivityMult = 1,
					 DrawSpeedMult = -0.4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a stock for marksmen", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_precisionstock_ar15 then
		local srEnt

		srEnt = self.AttachmentModelsVM.bg_precisionstock_ar15.ent

		srEnt:SetBodygroup(0, 1)
		srEnt:SetBodygroup(2, 1)
		srEnt:SetBodygroup(4, 1)
		srEnt:SetBodygroup(5, 1)

		srEnt:SetBodygroup(3, 0)	
	end

	if self.AttachmentModelsVM and self.AttachmentModelsVM.doi_atow_frankensten then
		local arEnt

		local models = self.AttachmentModelsVM.doi_atow_frankensten.models
		arEnt = models[1] and models[1].ent
		arEnt:SetBodygroup(2, 4)
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

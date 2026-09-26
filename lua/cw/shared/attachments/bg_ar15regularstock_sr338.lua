local att = {}
att.name = "bg_ar15regularstock_sr338"
att.displayName = "M4 Collapsible Stock"
att.displayNameShort = "M4"
att.isBG = true
att.SpeedDec = -15

att.statModifiers = {RecoilMult = 0.2,
					 VelocitySensitivityMult = -0.8,
					 DrawSpeedMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
	att.description = {[1] = {t = "Adds a light stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_ar15regularstock_sr338 then
		local ent
		
		ent = self.AttachmentModelsVM.bg_ar15regularstock_sr338.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(3, 5)
		ent:SetBodygroup(4, 2)
		ent:SetBodygroup(5, 2)

		ent:SetBodygroup(2, 0)
	end
end

function att:detachFunc()
	if self.StockBgs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end
end

CustomizableWeaponry:registerAttachment(att)

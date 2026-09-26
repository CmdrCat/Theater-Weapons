local att = {}
att.name = "bg_ar15heavystock_sr338"
att.displayName = "M16 Fixed Stock"
att.displayNameShort = "M16"
att.isBG = true
att.SpeedDec = -7.5

att.statModifiers = {RecoilMult = 0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a heavy, fixed stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_ar15heavystock_sr338 then
		local ent

		ent = self.AttachmentModelsVM.bg_ar15heavystock_sr338.ent
		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(3, 5)
		ent:SetBodygroup(4, 2)
		ent:SetBodygroup(5, 2)

		ent:SetBodygroup(2, 1)
	end
end

function att:detachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end
end

CustomizableWeaponry:registerAttachment(att)

local att = {}
att.name = "bg_ar15heavystock_lighter"
att.displayName = "M16 Fixed Stock"
att.displayNameShort = "M16"
att.isBG = true
att.SpeedDec = -10

att.statModifiers = {RecoilMult = 0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a heavy, fixed stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_ar15heavystock_lighter then
		local ent

		ent = self.AttachmentModelsVM.bg_ar15heavystock_lighter.ent
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

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)

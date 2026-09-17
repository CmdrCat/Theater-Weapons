local att = {}
att.name = "r_mwii_mcxthinstock"
att.displayName = "Skeleton Stock"
att.displayNameShort = "THIN"

att.statModifiers = {DrawSpeedMult = 0.2,
VelocitySensitivityMult = -0.2,
RecoilMult = 0.15}
att.SpeedDec = -10

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/m3flash")

end

function att:attachFunc()

	local modelData = self.AttachmentModelsVM and self.AttachmentModelsVM["r_mwii_mcxthinstock"]
	if CLIENT and modelData and IsValid(modelData.ent) then
		modelData.ent:SetMaterial("phoenix_storms/black_brushes")
	end

	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end
end

function att:detachFunc()

	local modelData = self.AttachmentModelsVM and self.AttachmentModelsVM["r_mwii_mcxthinstock"]
	if CLIENT and modelData and IsValid(modelData.ent) then
		modelData.ent:SetMaterial("")
	end

	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)

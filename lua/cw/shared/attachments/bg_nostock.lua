local att = {}
att.name = "bg_nostock"
att.displayName = "No Stock"
att.displayNameShort = "None"
att.isBG = true
att.SpeedDec = -10

att.statModifiers = {DrawSpeedMult = 0.2,
VelocitySensitivityMult = -0.2,
RecoilMult = 0.45}

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
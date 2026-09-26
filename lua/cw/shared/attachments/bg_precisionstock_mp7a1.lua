local att = {}
att.name = "bg_precisionstock_mp7a1"
att.displayName = "PRS Precision Stock"
att.displayNameShort = "PRS"
att.isBG = true
att.SpeedDec = 25

att.statModifiers = {RecoilMult = -0.25,
					 VelocitySensitivityMult = 10,
					 DrawSpeedMult = -0.4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
	att.description = {[1] = {t = "Adds a stock for marksmen", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_precisionstock_mp7a1 then
		local ent

		ent = self.AttachmentModelsVM.bg_precisionstock_mp7a1.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(2, 1)
		ent:SetBodygroup(4, 1)
		ent:SetBodygroup(5, 1)

		ent:SetBodygroup(3, 0)	
	end
end

function att:detachFunc()
	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)

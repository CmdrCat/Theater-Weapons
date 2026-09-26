local att = {}
att.name = "bg_ar15sturdystock_mp7a1"
att.displayName = "MOE Carbine Stock"
att.displayNameShort = "MOE"
att.isBG = true
att.SpeedDec = 10

att.statModifiers = {RecoilMult = -0.1,
					 DrawSpeedMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
	att.description = {[1] = {t = "Adds a sturdy stock", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.009, 0.009, 0.009))
	end
	
	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_ar15sturdystock_mp7a1 then
		local ent
		
		ent = self.AttachmentModelsVM.bg_ar15sturdystock_mp7a1.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(3, 5)
		ent:SetBodygroup(4, 2)
		ent:SetBodygroup(5, 2)

		ent:SetBodygroup(2, 2)
	end
end

function att:detachFunc()
	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)

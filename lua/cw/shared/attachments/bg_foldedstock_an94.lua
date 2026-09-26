local att = {}
att.name = "bg_foldedstock_an94"
att.displayName = "Folded Stock"
att.displayNameShort = "Folded"
att.isBG = true
att.SpeedDec = -20

att.statModifiers = {DrawSpeedMult = 1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/nostock")
	att.description = {[1] = {t = "Folds the stock, preventing the gun from firing", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.bg_foldedstock_an94 then
		local ent
		
		ent = self.AttachmentModelsVM.bg_foldedstock_an94.ent

		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(3, 1)

		ent:SetBodygroup(2, 0)
	end
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto","2burst"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	if self.StockBGs then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	end
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "doi_atow_29ext"
att.displayName = "Extended Barrel"
att.displayNameShort = "Ext."
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {RecoilMult = -0.10,
DrawSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/m3barrel")
	att.description = {[1] = {t = "Increases effective range by 10M", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.ext)
	--self.MuzzleAttachmentName = 3
	self:setupCurrentIronsights(self.AltIronPos, self.AltIronAng)
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("AltIron")
	end
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.default)
	--self.MuzzleAttachmentName = 1
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)
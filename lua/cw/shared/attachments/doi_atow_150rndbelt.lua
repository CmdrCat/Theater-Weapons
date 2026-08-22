local att = {}
att.name = "doi_atow_150rndbelt"
att.displayName = "Reduced Capacity"
att.displayNameShort = "150Rnd"
att.isBG = true
att.SpeedDec = -15

att.statModifiers = {ReloadSpeedMult = 0.15,
DrawSpeedMult = 0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/150rndbelt")
	att.description = {[1] = {t = "A mid capacity belt, decreasing weight", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 150
	self.Primary.ClipSize_Orig = 150
	self:unloadWeaponPartially()
end

function att:detachFunc()
	if clip >= 150 then
		self:SetClip1(self.Primary.ClipSize_ORIG_REAL + clip - 150)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)
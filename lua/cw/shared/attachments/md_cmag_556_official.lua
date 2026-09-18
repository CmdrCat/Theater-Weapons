local att = {}
att.name = "md_cmag_556_official"
att.displayName = "Beta C-Magazine"
att.displayNameShort = "C-Mag"
att.SpeedDec = 50

att.statModifiers = {ReloadSpeedMult = -0.25,
DrawSpeedMult = -0.1,
HipSpreadMult = 0.15,
VelocitySensitivityMult = 0.15}


if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/cmag_official")
	att.description = {[1] = {t = "Increases mag size to 100 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.canOffsetMagBone = true
	
	self.ForegripOverride = true
	self.ForegripParent = "md_cmag_556_official"
	
	self.Primary.ClipSize = 100
	self.Primary.ClipSize_Orig = 100

	self:loadWeapon()
end

function att:detachFunc()
	self.canOffsetMagBone = false
	
	if CLIENT then
		self:offsetMagBone(true)
	end
	
	self.ForegripOverride = false
	self.ForegripParent = nil
	
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:unloadWeaponPartially()
end

CustomizableWeaponry:registerAttachment(att)
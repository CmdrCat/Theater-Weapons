local att = {}
att.name = "bg_mp5_sdbarrel"
att.displayName = "MP5SD Conversion"
att.displayNameShort = "MP5SD"
att.isBG = true

att.statModifiers = {DamageMult = -3 / 37,
RecoilMult = -0.25,
FireDelayMult = 0.14285714285714}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp5_sdbarrel")
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.sd)
	self:setupCurrentIronsights(self.SDPos, self.SDAng)
	self:updateSoundTo("CW_MP5_FIRE_SUPPRESSED", CustomizableWeaponry.sounds.SUPPRESSED)
	self.ForegripOverride = true
	self.ForegripParent = "bg_mp5_sdbarrel"
	self.dt.Suppressed = true
	self.PrintName = "MP5SD"
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("SD")
	end
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:restoreSound()
	self:revertToOriginalIronsights()
	self.ForegripOverride = false
	self.dt.Suppressed = false
	self.PrintName = "MP5A3"
end

CustomizableWeaponry:registerAttachment(att)
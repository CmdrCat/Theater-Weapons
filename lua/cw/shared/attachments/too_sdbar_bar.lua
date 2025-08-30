local att = {}
att.name = "too_sdbar_bar"
att.displayName = "SD variant"
att.displayNameShort = "SD"
att.isBG = true

att.statModifiers = {DamageMult = 8 / 37,
RecoilMult = -0.25,
FireDelayMult = 0.14285714285714}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp5_sdbarrel")
end

function att:attachFunc()
	self:setBodygroup(self.FrameBGs.main, self.FrameBGs.sd)
	self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.none)
	self:updateSoundTo("CW_TOO_MP5_FIRE_SUPPRESSED", CustomizableWeaponry.sounds.SUPPRESSED)
	self.dt.Suppressed = true
	
end

function att:detachFunc()
	self:setBodygroup(self.FrameBGs.main, self.FrameBGs.regular)
	self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.regular)
	self:restoreSound()
	self:revertToOriginalIronsights()
	self.dt.Suppressed = false
end

CustomizableWeaponry:registerAttachment(att)

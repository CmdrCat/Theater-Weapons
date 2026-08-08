local att = {}
att.name = "bg_mp515rndmag"
att.displayName = "15-Round Magazine"
att.displayNameShort = "15 RND"
att.isBG = true

att.statModifiers = {ReloadSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp530rnd")
	att.description = {[1] = {t = "Decreases capacity to 15 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 15
	self.Primary.ClipSize_Orig = 15
	self:unloadWeaponPartially()
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)
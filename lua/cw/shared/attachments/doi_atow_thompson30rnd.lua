local att = {}
att.name = "doi_atow_thompson30rnd"
att.displayName = "High Capacity"
att.displayNameShort = "30RND"
att.isBG = true

att.statModifiers = {ReloadSpeedMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/thom30rnd")
	att.description = {
	[1] = {t = "Increases capacity by ten rounds", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.thirty)
	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30
	self:loadWeapon()
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.twenty)
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:unloadWeaponPartially()
end

CustomizableWeaponry:registerAttachment(att)
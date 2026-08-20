local att = {}
att.name = "md_small40rndemag"
att.displayName = "40-Round E-Magazine"
att.displayNameShort = "40 RND"
att.isBG = true
att.SpeedDec = -20

att.statModifiers = {ReloadSpeedMult = 0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/emag/upgr_emag")
	att.description = {[1] = {t = "Decreases capacity to 40 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()

	self.Primary.ClipSize = 40
	self.Primary.ClipSize_Orig = 40

	self:unloadWeaponPartially()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:loadWeapon()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
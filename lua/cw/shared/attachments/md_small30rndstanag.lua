local att = {}
att.name = "md_small30rndstanag"
att.displayName = "30-Round STANAG"
att.displayNameShort = "30 RND"
att.isBG = true
att.SpeedDec = -20

att.statModifiers = {ReloadSpeedMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/usgimag/upgr_usgimag")
	att.description = {[1] = {t = "Decreases capacity to 30 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [2] = {t = "Changes magazine model to an aluminum STANAG one.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()

	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30

	self:unloadWeaponPartially()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
end

function att:detachFunc()
	if clip >= 30 then
		self:SetClip1(100 + clip - 30)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:loadWeapon()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
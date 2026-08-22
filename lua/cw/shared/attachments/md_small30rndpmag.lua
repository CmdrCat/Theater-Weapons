local att = {}
att.name = "md_small30rndpmag"
att.displayName = "30-Round PMAG"
att.displayNameShort = "30 RND"
att.isBG = true
att.SpeedDec = -20

att.statModifiers = {ReloadSpeedMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/emag/upgr_emag")
	att.description = {[1] = {t = "Decreases capacity to 30 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [2] = {t = "Changes magazine model to a polymer PMAG.", c = CustomizableWeaponry.textColors.COSMETIC}}
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
	local clip = self:Clip1() or 0

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
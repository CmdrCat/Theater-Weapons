local att = {}
att.name = "md_small60rndsurefire"
att.displayName = "Surefire 60-Round Magazine"
att.displayNameShort = "60 RND"
att.isBG = true
att.SpeedDec = -5

att.statModifiers = {ReloadSpeedMult = 0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar1560rndmag")
	att.description = {[1] = {t = "Decreases capacity to 60 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()

	self.Primary.ClipSize = 60
	self.Primary.ClipSize_Orig = 60

	self:unloadWeaponPartially()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
end

function att:detachFunc()
	local clip = self:Clip1() or 0

	if clip >= 60 then
		self:SetClip1(100 + clip - 60)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:loadWeapon()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
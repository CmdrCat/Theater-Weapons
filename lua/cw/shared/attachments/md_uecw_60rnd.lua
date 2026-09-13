local att = {}
att.name = "md_uecw_60rnd"
att.displayName = "Surefire 60-Round Magazine"
att.displayNameShort = "Surefire"
att.SpeedDec = 15

att.statModifiers = {ReloadSpeedMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar1560rndmag")
	att.description = {[1] = {t = "Increases mag size to 60 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 60
	self.Primary.ClipSize_Orig = 60

	-- MCX/M13B has one original magazine per reload animation.
	if self.ExtendedMagBoneNames then
		self.canOffsetMagBone = true
	end

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end

	if self.MagBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName2), Vector(0.009, 0.009, 0.009))
	end

	if self.BulletsBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletsBoneName2), Vector(0.009, 0.009, 0.009))
	end

	if self.SpringBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.SpringBoneName), Vector(0.009, 0.009, 0.009))
	end

	self:loadWeapon()
end

function att:detachFunc()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	if self.ExtendedMagBoneNames then
		self.canOffsetMagBone = false
		if CLIENT then
			self:offsetMagBone(true)
		end
	end

	self:unloadWeaponPartially()
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end

	if self.MagBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName2), Vector(1, 1, 1))
	end

	if self.BulletsBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletsBoneName2), Vector(1, 1, 1))
	end

	if self.SpringBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.SpringBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)

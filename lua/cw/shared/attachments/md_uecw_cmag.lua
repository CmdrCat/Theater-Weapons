local att = {}
att.name = "md_uecw_cmag"
att.displayName = "Beta C-Magazine"
att.displayNameShort = "CMAG"
att.SpeedDec = 50

att.statModifiers = {
	ReloadSpeedMult = -0.3,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("cw20_extras/icons/upgr_cmag")
	att.description = {[1] = {t = "Increases mag size to 100 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	
	if self.ActiveAttachments.md_foregrip or self.ActiveAttachments.md_m203 then
		self.ForegripOverride = false
	else
		self.ForegripOverride = true
	end
	
	self.ForegripParent = "md_uecw_cmag"
	
	self.Primary.ClipSize = 100
	self.Primary.ClipSize_Orig = 100
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
	if self.MagBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName2), Vector(0.009, 0.009, 0.009))
	end
	if self.BulletsBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletsBoneName), Vector(0.009, 0.009, 0.009))
	end
	if self.BulletsBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletsBoneName2), Vector(0.009, 0.009, 0.009))
	end
	if self.SpringBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.SpringBoneName), Vector(0.009, 0.009, 0.009))
	end
	if self.FollowerBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.FollowerBoneName), Vector(0.009, 0.009, 0.009))
	end
	self:loadWeapon()
end

function att:detachFunc()
	self.ForegripOverride = false
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:unloadWeaponPartially()
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
	if self.MagBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName2), Vector(1, 1, 1))
	end
	if self.BulletsBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletsBoneName), Vector(1, 1, 1))
	end
	if self.BulletsBoneName2 then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletsBoneName2), Vector(1, 1, 1))
	end
	if self.SpringBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.SpringBoneName), Vector(1, 1, 1))
	end
	if self.FollowerBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.FollowerBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
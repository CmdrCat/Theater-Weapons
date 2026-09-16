local att = {}
att.name = "md_tcw_9mm_33rnd"
att.displayName = "33-Round Magazine"
att.displayNameShort = "33RND"
att.SpeedDec = 15

att.statModifiers = {ReloadSpeedMult = -0.05,
					 DrawSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/thom30rnd")
	att.description = {[1] = {t = "Increases capacity to 33 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()

	self.Primary.ClipSize = 33
	self.Primary.ClipSize_Orig = 33
	self:loadWeapon()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end

	if self.BulletBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.md_tcw_9mm_33rnd then
		local ent = self.AttachmentModelsVM.md_tcw_9mm_33rnd.ent
		if not IsValid(ent) then return end

		local magBone = ent:LookupBone("Magazine")
		local boneCount = ent:GetBoneCount()

		for i = 0, boneCount - 1 do
			local bone = ent:GetBoneName(i)
			local id = ent:LookupBone(bone)

			if id and bone ~= "Magazine" then
				ent:ManipulateBoneScale(id, Vector(0.00001, 0.00001, 0.00001))
				ent:ManipulateBonePosition(id, Vector(0, 0, -5000))
			end
		end

		if magBone then
			ent:ManipulateBoneScale(magBone, Vector(1, 1, 1))
			ent:ManipulateBonePosition(magBone, Vector(0, 0, 5000))
		end
	end
end

function att:detachFunc()
local clip = self:Clip1() or 0

	if clip == 33 then
		self:SetClip1(self.Primary.ClipSize_ORIG_REAL + clip - 33)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:loadWeapon()


	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
	if self.BulletBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
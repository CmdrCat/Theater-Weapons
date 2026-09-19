local att = {}
att.name = "md_tcw_762_75rnd"
att.displayName = "Norinco 75-Round Drum Magazine"
att.displayNameShort = "75RND"
att.SpeedDec = 30

att.statModifiers = {ReloadSpeedMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/cmag_official")
	att.description = {[1] = {t = "Increases capacity to 75 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()

	self.Primary.ClipSize = 75
	self.Primary.ClipSize_Orig = 75
	self:loadWeapon()

	if CLIENT and IsValid(self.CW_VM) then
		local magBoneName = "mag"
		local magBone = self.CW_VM:LookupBone(magBoneName)

		if magBone then
			self.CW_VM:ManipulateBoneScale(magBone, Vector(0.009, 0.009, 0.009))
		end
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.md_tcw_762_75rnd then
		local ent = self.AttachmentModelsVM.md_tcw_762_75rnd.ent
		if not IsValid(ent) then return end

		local magBone = ent:LookupBone("tag_clip")
		local boneCount = ent:GetBoneCount()

		for i = 0, boneCount - 1 do
			local bone = ent:GetBoneName(i)
			local id = ent:LookupBone(bone)

			if id and bone ~= "tag_clip" then
				ent:ManipulateBoneScale(id, Vector(0.001, 0.001, 0.001))
				--ent:ManipulateBoneAngles(id, Angle(0, 90, 0))
				ent:ManipulateBonePosition(id, Vector(0, 0, 0))
			end
		end

		if magBone then
			ent:ManipulateBoneScale(magBone, Vector(1, 1, 1))
			--ent:ManipulateBoneAngles(magBone, Angle(0, -90, 0))
			--ent:ManipulateBonePosition(magBone, Vector(-0.53, 0.45, 0))
			ent:ManipulateBonePosition(magBone, Vector(0, 0, 0))
		end
	end
end

function att:detachFunc()
local clip = self:Clip1() or 0

	if clip >= 75 then
		self:SetClip1(self.Primary.ClipSize_ORIG_REAL + clip - 75)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:loadWeapon()


	if CLIENT and IsValid(self.CW_VM) then
		local magBoneName = "mag"
		local magBone = self.CW_VM:LookupBone(magBoneName)

		if magBone then
			self.CW_VM:ManipulateBoneScale(magBone, Vector(1, 1, 1))
		end
	end
end

CustomizableWeaponry:registerAttachment(att)
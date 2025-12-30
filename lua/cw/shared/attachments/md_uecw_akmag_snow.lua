local att = {}
att.name = "md_uecw_akmag_snow"
att.displayName = "Snow Camouflage Magazine"
att.displayNameShort = "Snow"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/rpkmag")
	att.description = {[1] = {t = "Changes magazine model to a snow camouflage one.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.MagBoneName then
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
	if CLIENT then
		if self.AttachmentModelsVM.md_uecw_akmag_snow then
			self.AttachmentModelsVM.md_uecw_akmag_snow.ent:SetBodygroup(1,1)
			self.AttachmentModelsVM.md_uecw_akmag_snow.ent:SetSkin(2)
		end
	end
end

function att:detachFunc()
	if self.MagBoneName then
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
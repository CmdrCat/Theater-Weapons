local att = {}
att.name = "md_uecw_akmag_bakelite"
att.displayName = "Bakelite Magazine"
att.displayNameShort = "Bake"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/rpkmag")
	att.description = {[1] = {t = "Changes magazine model to a bakelite one.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.MagBoneName then
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
	if CLIENT then
		if self.AttachmentModelsVM.md_uecw_akmag_bakelite then
			self.AttachmentModelsVM.md_uecw_akmag_bakelite.ent:SetBodygroup(1,1)
			self.AttachmentModelsVM.md_uecw_akmag_bakelite.ent:SetSkin(0)
		end
	end
end

function att:detachFunc()
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
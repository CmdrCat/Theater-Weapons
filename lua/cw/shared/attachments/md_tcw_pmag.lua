local att = {}
att.name = "md_tcw_pmag"
att.displayName = "PMAG"
att.displayNameShort = "PMAG"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/emag/upgr_emag")
	att.description = {[1] = {t = "Changes magazine model to a polymer PMAG.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.MagBoneName then
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
end

function att:detachFunc()
	if self.MagBoneName then
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
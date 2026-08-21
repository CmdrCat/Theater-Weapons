local att = {}
att.name = "md_tcw_cmag"
att.displayName = "Beta C-Mag"
att.displayNameShort = "C-Mag"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/cmag_official")
	att.description = {[1] = {t = "Changes magazine model to a Beta C-Mag.", c = CustomizableWeaponry.textColors.COSMETIC}}
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
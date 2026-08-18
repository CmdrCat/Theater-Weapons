local att = {}
att.name = "md_tcw_stanag"
att.displayName = "STANAG Magazine"
att.displayNameShort = "STANAG"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/usgimag/upgr_usgimag")
	att.description = {[1] = {t = "Changes magazine model to an aluminum STANAG magazine.", c = CustomizableWeaponry.textColors.COSMETIC}}
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
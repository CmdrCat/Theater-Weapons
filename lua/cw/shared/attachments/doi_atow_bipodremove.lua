local att = {}
att.name = "doi_atow_bipodremove"
att.displayName = "Bipod Remove"
att.displayNameShort = "Bipod"
att.SpeedDec = -5

att.statModifiers = { DrawSpeedMult = 0.1,
RecoilMult = 0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/bipod")
	att.description = {
	}
end

function att:attachFunc()
	self.BipodInstalled = false
	self.CanRestOnObjects = true
	if CLIENT and self.CW_VM and self.BipodBoneName then
		for i, index in ipairs(self.BipodBoneName) do
			self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(index), Vector(0.009, 0.009, 0.009))
		end
	end
end

function att:detachFunc()
	self.BipodInstalled = true
	self.CanRestOnObjects = false
	if CLIENT and self.CW_VM and self.BipodBoneName then
		for i, index in ipairs(self.BipodBoneName) do
			self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(index), Vector(1, 1, 1))
		end
	end
end

CustomizableWeaponry:registerAttachment(att)

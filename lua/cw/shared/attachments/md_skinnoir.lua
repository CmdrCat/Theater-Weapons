local att = {}
att.name = "md_skinnoir"
att.displayName = "Noir Skin"
att.displayNameShort = "Noir"
att.isBG = true

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/c96gold")
	att.description = {}
end

function att:attachFunc()
	if SERVER then
		return
	end

    wep.CW_VM:SetSubMaterial(0, "")

    for i, index in ipairs(self.MaterialIndexPrimary) do
		wep.CW_VM:SetSubMaterial(index, "phoenix_storms/black_brushes")
	end
	if self.MaterialIndexSecondary then
		for i, index in ipairs(self.MaterialIndexSecondary) do
			wep.CW_VM:SetSubMaterial(index, "models/debug/debugwhite")
		end
	end
end

function att:detachFunc()
	if SERVER then
		return
	end

	for i, index in ipairs(self.MaterialIndexPrimary) do
		wep.CW_VM:SetSubMaterial(index, "")
	end
	if self.MaterialIndexSecondary then
		for i, index in ipairs(self.MaterialIndexSecondary) do
			wep.CW_VM:SetSubMaterial(index, "")
		end
	end
    wep.CW_VM:SetSubMaterial(0, "")
end

CustomizableWeaponry:registerAttachment(att)
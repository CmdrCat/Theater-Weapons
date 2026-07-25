local att = {}
att.name = "md_skinrunes"
att.displayName = "Runes Skin"
att.displayNameShort = "Runes"
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
    wep.CW_VM:SetSubMaterial(self.MaterialIndex, "models/XQM/LightLinesRed_tool")
end

function att:detachFunc()
	if SERVER then
		return
	end

    wep.CW_VM:SetSubMaterial(self.MaterialIndex, "")
    wep.CW_VM:SetSubMaterial(0, "")
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "md_tcw_carryhandle_grip"
att.displayName = "Carry Handle Grip"
att.displayNameShort = "C. Handle"
att.SpeedDec = 45

att.statModifiers = {RecoilMult = -0.3,
					 DrawSpeedMult = -0.1,
					 VelocitySensitivityMult = 0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_ftactiger")
	att.description = {[1] = {t = "Mount a carry handle as a grip", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.md_tcw_carryhandle_grip then
		local ent = self.AttachmentModelsVM.md_tcw_carryhandle_grip.ent
		ent:SetBodygroup(0, 1)
		ent:SetBodygroup(1, 1)
		ent:SetBodygroup(2, 4)
		ent:SetBodygroup(3, 5)
		ent:SetBodygroup(5, 2)
	end
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
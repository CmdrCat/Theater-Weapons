local att = {}
att.name = "doi_atow_altsightlewis"
att.displayName = "Alternate Sight"
att.displayNameShort = "Alt"
att.FOVModifier = 0
att.isBG = true

att.statModifiers = {
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/altsight")
	att.description = {[1] = {t = "May improve sight picture.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.FSightBGs.main, self.FSightBGs.on)
	self:setBodygroup(self.RSightBGs.main, self.RSightBGs.on)
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("Ironsight2")
	end
end

function att:detachFunc()
	self:setBodygroup(self.FSightBGs.main, self.FSightBGs.off)
	self:setBodygroup(self.RSightBGs.main, self.RSightBGs.off)
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)

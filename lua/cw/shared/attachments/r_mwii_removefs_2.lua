local att = {}
att.name = "nofs2"
att.displayName = "Remove Front Sights"
att.displayNameShort = "NO FS"
att.isBG = true



if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_removefs")
	att.description = {[1] = {t = "Remove those front sights", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
    self:setBodygroup(self.FrontBGs.main, self.FrontBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.fs)

end




CustomizableWeaponry:registerAttachment(att)
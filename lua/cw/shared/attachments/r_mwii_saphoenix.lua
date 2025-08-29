local att = {}
att.name = "saphoenix"
att.displayName = "10' SA PHOENIX"
att.displayNameShort = "SA"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.10,
	SpreadPerShotMult = -0.10,
	DrawSpeedMult = -0.05}

    att.SpeedDec = 20

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_chimeraphoenix")
	att.description = {[1] = {t = "A long handguard for accuracy and recoil control.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
	self:updateSoundTo("MWII_CHIMERA_FIRE")
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:restoreSound()

end




CustomizableWeaponry:registerAttachment(att)
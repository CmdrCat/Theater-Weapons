local att = {}
att.name = "cipher"
att.displayName = "CIPHER-121"
att.displayNameShort = "CIPHER"
att.isBG = true
att.isSuppressor = true

att.statModifiers = {
    RecoilMult = -0.05,
}


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_isosil")
	att.description = {[1] = {t = "Integrated suppresor handguard.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:resetSuppressorStatus()

end




CustomizableWeaponry:registerAttachment(att)




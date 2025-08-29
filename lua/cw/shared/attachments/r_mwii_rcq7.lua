local att = {}
att.name = "rcq7"
att.displayName = "RCQ-7"
att.displayNameShort = "RCQ"
att.isBG = true

att.statModifiers = {
    RecoilMult = 0.05,
	DrawSpeedMult = 0.4}

    att.SpeedDec = -15

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_isoshort")
	att.description = {[1] = {t = "A short handguard for handling and mobility.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)

end




CustomizableWeaponry:registerAttachment(att)
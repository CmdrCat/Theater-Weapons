local att = {}
att.name = "md_fp_1895short"
att.displayName = "1895 ''Trench''"
att.displayNameShort = "14''" 
att.isBG = true
att.SpeedDec = -8

att.statModifiers = {AimSpreadMult = 0.25,
RecoilMult = 0.5,
VelocitySensitivityMult = -0.5,
OverallMouseSensMult = 0.1,
DrawSpeedMult = .25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/1895short")
	att.description = {[1] = {t = "Trades range for increased mobility.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end
	
function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.short)
	--self.MuzzleAttachmentName = 3
	self.MuzzleAttachmentName = "short"
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.long)
	--self.MuzzleAttachmentName = 1
	self.MuzzleAttachmentName = 1
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "doi_atow_lugerlongbarrel"
att.displayName = "Extended Barrel"
att.displayNameShort = "Ext." 
att.isBG = true
att.withoutRail = true
att.SpeedDec = 5

att.statModifiers = {AimSpreadMult = -0.15,
RecoilMult = -0.1,
DrawSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/c96barrel")
		att.description = {}
end
	
function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.on)
	self.MuzzleAttachmentName = 3
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.off)
	self.MuzzleAttachmentName = 1
end

CustomizableWeaponry:registerAttachment(att)
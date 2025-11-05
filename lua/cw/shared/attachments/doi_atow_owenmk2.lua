local att = {}
att.name = "doi_atow_owenmk2"
att.displayName = "Owen Mark 2/3"
att.displayNameShort = "Mark 2/3"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {AimSpreadMult = -0.1,
DrawSpeedMult = -0.05,
RecoilMult = -0.1,
MaxSpreadIncMult = -0.3}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/owenmk2")
	att.description = {[1] = {t = "Features a full stock and a heavy barrel.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self.PrintName = "Owen Mark 2/3"
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self.PrintName = "Owen Gun"
end

CustomizableWeaponry:registerAttachment(att)
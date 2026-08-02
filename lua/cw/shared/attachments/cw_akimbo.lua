local att = {}
att.name = "cw_akimbo"
att.displayName = "Akimbo"
att.displayNameShort = "Akimbo"

att.statModifiers = {
	RecoilMult = 0.25,
	HipSpreadMult = 15,
	MaxSpreadIncMult = 1,
	VelocitySensitivityMult = 10
}

if CLIENT then
    att.description = {[1] = {t = "Hold two guns at once!", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Removes ability to aim down sights", c = CustomizableWeaponry.textColors.NEGATIVE}} 
    att.displayIcon = surface.GetTextureID( "atts/onehand" )
end

function att:attachFunc()
	-- activate the activation of the dual wield function
	self:ActivateDualwield()
	self.ForegripOverride = true
	self.ForegripParent = "akimbo"
end

function att:detachFunc()
	-- activate the deactivation of the dual wield function
	self:DisableDualwield()
	self.ForegripParent = "nah"
	self.ViewModelOffsetPos = Vector(0, 0, 0)
	self.ViewModelOffsetAng = Angle(0, 0, 0)
	self.ViewModelOffsetPos2 = Vector(0, 0, 0)
	self.ViewModelOffsetAng2 = Angle(0, 0, 0)
end

CustomizableWeaponry:registerAttachment(att)

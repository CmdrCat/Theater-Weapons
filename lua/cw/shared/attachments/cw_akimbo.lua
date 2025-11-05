local att = {}
att.name = "cw_akimbo"
att.displayName = "Akimbo"
att.displayNameShort = "Akimbo"

att.statModifiers = {}

if CLIENT then
    att.description = {[1] = {t = "Hold two guns at once!", c = CustomizableWeaponry.textColors.POSITIVE}} 
    att.displayIcon = surface.GetTextureID( "atts/onehand" )
end

function att:attachFunc()
	-- activate the activation of the dual wield function
	self:ActivateDualwield()
	self.ForegripParent = "akimbo"
end

function att:detachFunc()
	-- activate the deactivation of the dual wield function
	self:DisableDualwield()
	self.ForegripParent = "nah"
end

CustomizableWeaponry:registerAttachment(att)

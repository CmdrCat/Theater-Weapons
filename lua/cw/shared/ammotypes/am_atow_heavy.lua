local att = {}
att.name = "am_atow_heavy"
att.displayName = "Overpressure Rounds"
att.displayNameShort = "+P"

att.statModifiers = {RecoilMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/hvyammo")
	att.description = {[1] = {t = "Light JHP & more powder increases velocity at the cost of penetration.", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Increases effective range by 10%.", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Decreases damage fall off by 7.5%.", c = CustomizableWeaponry.textColors.POSITIVE},
	[4] = {t = "Decreases surface penetration by 90%.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.PenMod = 0.1
end

function att:detachFunc()
	self.PenMod = 1
end

CustomizableWeaponry:registerAttachment(att)
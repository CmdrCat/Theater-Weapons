local att = {}
att.name = "am_atow_lowvel"
att.displayName = "Reduced Recoil Rounds"
att.displayNameShort = "RR"

att.statModifiers = {FireDelayMult = .12,
RecoilMult = -.50,
HipSpreadMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {[1] = {t = "Reduced powder slows cyclic rate for lighter recoil.", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Increases damage fall off by 20%.", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Decreases surface penetration by 90%.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
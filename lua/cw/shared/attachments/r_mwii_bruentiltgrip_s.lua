local att = {}
att.name = "bruentiltgrip_s"
att.displayName = "BRUEN TILT GRIP"
att.displayNameShort = "TILT"

att.statModifiers = {VelocitySensitivityMult = -0.1,
DrawSpeedMult = -0.1,
SpreadPerShotMult = -0.1,
OverallMouseSensMult = -0.05,
RecoilMult = -0.05} 

--balance this

function att:attachFunc()

self.ForegripOverride = true
    self.ForegripParent = "bruentiltgrip_s"
end


function att:detachFunc()

    self.ForegripOverride = true
    self.ForegripParent = "short"
end


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_bruentiltgrip")
end

CustomizableWeaponry:registerAttachment(att)
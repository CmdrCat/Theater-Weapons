local att = {}
att.name = "bruentiltgrip_s"
att.displayName = "Bruen Tilt Grip"
att.displayNameShort = "Tilt"

att.statModifiers = {VelocitySensitivityMult = -0.1,
SpreadPerShotMult = -0.1,
RecoilMult = -0.15} 

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
local att = {}
att.name = "bruentiltgrip_r"
att.displayName = "Bruen Tilt Grip"
att.displayNameShort = "Tilt"

att.statModifiers = {VelocitySensitivityMult = -0.1,
SpreadPerShotMult = -0.1,
RecoilMult = -0.15} 



--balance this

function att:attachFunc()

self.ForegripOverride = true
    self.ForegripParent = "bruentiltgrip_r"
end


function att:detachFunc()

    self.ForegripOverride = true
    self.ForegripParent = "default"
end


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_bruentiltgrip")
end

CustomizableWeaponry:registerAttachment(att)
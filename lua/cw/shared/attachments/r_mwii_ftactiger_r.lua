local att = {}
att.name = "ftactiger_r"
att.displayName = "FTac Tiger Grip"
att.displayNameShort = "Tiger"

att.statModifiers = {
    ReloadSpeedMult = 0.15,
    DrawSpeedMult = 0.10,
    SpreadPerShotMult = -0.15,
    VelocitySensitivityMult = -0.9,
    RecoilMult = -0.07} 

--balance this

function att:attachFunc()

self.ForegripOverride = true
    self.ForegripParent = "ftactiger_r"
end


function att:detachFunc()

    self.ForegripOverride = true
    self.ForegripParent = "default"
end


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_ftactiger")
end

CustomizableWeaponry:registerAttachment(att)
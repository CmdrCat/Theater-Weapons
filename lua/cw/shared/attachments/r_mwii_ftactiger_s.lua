local att = {}
att.name = "ftactiger_s"
att.displayName = "FTAC TIGER"
att.displayNameShort = "TIGER"

att.statModifiers = {
    ReloadSpeedMult = 0.15,
    DrawSpeedMult = 0.10,
    OverallMouseSensMult = -0.25,
    SpreadPerShotMult = -0.15,
    
    RecoilMult = -0.07}  



--balance this

function att:attachFunc()

self.ForegripOverride = true
    self.ForegripParent = "ftactiger_s"
end


function att:detachFunc()

    self.ForegripOverride = true
    self.ForegripParent = "default"
end


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_ftactiger")
end

CustomizableWeaponry:registerAttachment(att)
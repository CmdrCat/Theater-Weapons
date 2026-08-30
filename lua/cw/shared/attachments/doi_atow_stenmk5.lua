local att = {}
att.name = "doi_atow_stenmk5"
att.displayName = "Sten Mk V"
att.displayNameShort = "Mk V"
att.isBG = true
att.SpeedDec = 5
att.FOVModifier = 10

att.statModifiers = {
    VelocitySensitivityMult = -0.25,
    DrawSpeedMult = -0.1,
    RecoilMult = -0.15,
    MaxSpreadIncMult = -0.2
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/stenmk5")
    att.description = {
        [1] = {t = "Features a full stock and foregrip.", c = CustomizableWeaponry.textColors.POSITIVE},
        [2] = {t = "May improve sight picture.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.on)
    self.ForegripOverride = true
    self.ForegripParent = "grip"
    self.PrintName = "Sten Mk V"


    if self.SightBGs and self.SightBGs.main then
        self:setBodygroup(self.SightBGs.main, self.SightBGs.on)
    end
    if self.IronBGs and self.IronBGs.main then
        self:setBodygroup(self.IronBGs.main, self.IronBGs.on)
    end
    
    if self.AltIronPos and self.AltIronAng then
        self:setupCurrentIronsights(self.AltIronPos, self.AltIronAng)
        if not self:isAttachmentActive("sights") then
            self:updateIronsights("AltIron")
        end
    end
end

function att:detachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.off)
    self.ForegripOverride = true
    self.ForegripParent = "none"
    self.PrintName = "Sten Gun"

    if self.SightBGs and self.SightBGs.main then
        self:setBodygroup(self.SightBGs.main, self.SightBGs.off)
    end
    if self.IronBGs and self.IronBGs.main then
        self:setBodygroup(self.IronBGs.main, self.IronBGs.off)
    end
    
    if self.revertToOriginalIronsights then
        self:revertToOriginalIronsights()
    end
end

CustomizableWeaponry:registerAttachment(att)
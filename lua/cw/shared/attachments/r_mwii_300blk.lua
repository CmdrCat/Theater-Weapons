local att = {}
att.name = "r_mwii_300blk"
att.displayName = ".300 Blackout Conversion"
att.displayNameShort = "300 BLK"

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Changes the barrel to fire .300 Blackout, a heavy-hitting, subsonic round", c = CustomizableWeaponry.textColors.VPOSITIVE},
                       [2] = {t = "Decreases effective range by 12.5%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

att.statModifiers = {
    DamageMult   = 0.025,   -- +2.5% damage
    HipSpreadMult = -0.175,  -- -17.5% hipfire spread (improved)
    RecoilMult   = 0.25     -- +25% recoil
}

CustomizableWeaponry:registerAttachment(att)
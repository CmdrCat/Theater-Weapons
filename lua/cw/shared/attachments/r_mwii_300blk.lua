local att = {}
att.name = "r_mwii_300blk"
att.displayName = ".300 Blackout Conversion"
att.displayNameShort = ".300 BLK"

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Changes the barrel to fire .300 Blackout, a heavy-hitting, subsonic round", c = CustomizableWeaponry.textColors.VPOSITIVE},
                       [2] = {t = "Increases headshot multiplier from 1.25 to 1.35", c = CustomizableWeaponry.textColors.POSITIVE},  
                       [3] = {t = "Decreases effective range by 12.5%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

att.statModifiers = {
    DamageMult   = 0.025,   -- +2.5% damage
    HipSpreadMult = -0.175,  -- -17.5% hipfire spread (improved)
    RecoilMult   = 0.25     -- +25% recoil
}

function att:attachFunc()
    self.FireSound = "MWII_CHIMERA_FIRE"
    self.FireSoundSuppressed = "CW_TOO_UMP45_FIRE_SUPPRESSED"
	self.Primary.Ammo = ".300 Blackout"
    self.Trivia = {text = "Now chambered in .300 Blackout, the Virtus is exceptionally deadly, yet whisper-quiet, at close-range.", x = -250, y = -650}
end

function att:detachFunc()
    self.FireSound = "MWII_M13B_FIRE"
    self.FireSoundSuppressed = "MWII_M13B_FIRE_SUPPRESSED"
	self.Primary.Ammo = "5.56x45MM"
    self.Trivia = {text = "The Virtus delivers unmatched performance with modular adaptibility and precision. BSTF's standard-issue rifle.", x = -250, y = -650}
end

CustomizableWeaponry:registerAttachment(att)
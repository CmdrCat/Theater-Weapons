local att = {}
att.name = "cw_500nitroexpress"
att.displayName = ".500 Nitro Express Conversion"
att.displayNameShort = ".500"

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Somehow holds 6 rounds of .500 Nitro Express.", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases headshot multiplier from 2.0 to 1.2", c = CustomizableWeaponry.textColors.POSITIVE},
                       [3] = {t = "Increases effective range by 20M", c = CustomizableWeaponry.textColors.POSITIVE},
                       [4] = {t = "Decreases damage fall off by 45%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

att.statModifiers = {
    DamageMult = 67 / 100,
    FireDelayMult = 1,
    RecoilMult = 4,
    HipSpreadMult = 101 / 39
}

function att:attachFunc()
	self.Primary.Ammo = ".500 Nitro Express"
    self.Trivia = {text = ".500 Nitro Express is a full-length rifle cartridge used for hunting big game.", x = -400, y = -400}
end

function att:detachFunc()
	self.Primary.Ammo = ".44 Magnum"
    self.Trivia = {text = "The Raging Bull is a reliable revolver that delivers a .44 Magnum payload with no compromise.", x = -400, y = -400}
end

CustomizableWeaponry:registerAttachment(att)
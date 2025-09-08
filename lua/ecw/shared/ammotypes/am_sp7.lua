AddCSLuaFile()

local att = {}
att.name = "am_sp7"
att.displayName = "SP-7 Rounds"
att.displayNameShort = "SP-7"
att.isBG = true

att.statModifiers = {RecoilMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/sp-7")
	att.description = {[1] = {t = "High-velocity ammunition, extending its stopping power for longer ranges.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Increases effective range by 15%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

CustomizableWeaponry:registerAttachment(att)
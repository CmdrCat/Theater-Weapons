local att = {}
att.name = "ha_cgm3_smoke"
att.displayName = "84mm Smoke Rounds"
att.displayNameShort = "SMK"
att.SpeedDec = 4

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/cgm3_smk")
	att.description = {
	[1] = {t = "Low-velocity rounds that deploy a smokescreen to obscure enemy vision", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Direct impact is still lethal at close range", c = CustomizableWeaponry.textColors.COSMETIC},
}
	
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)

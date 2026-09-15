local att = {}
att.name = "too_optic_tacstance"
att.displayName = "Tac Stance"
att.displayNameShort = "Tac Stance"
att.aimPos = {"TacStancePos", "TacStanceAng"}
att.isSight = true
att.withoutRail = true
att.isBG = true
 

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Tac Stance without an optic.", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Double-tap use key to use iron sights.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
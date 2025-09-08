local att = {}
att.name = "am_reducedpowderload"
att.displayName = "Reduced Powder Load"
att.displayNameShort = "RPL"

att.statModifiers = {RecoilMult = -0.3}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/magnumrounds")
	att.description = {[1] = {t = "Reduced powder load, which reduces muzzle velocity and recoil alike.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Decreases effective range by 15%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()

end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
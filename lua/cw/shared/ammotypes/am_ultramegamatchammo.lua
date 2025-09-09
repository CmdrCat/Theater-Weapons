local att = {}
att.name = "am_ultramegamatchammo"
att.displayName = "Ultra Mega Match-Grade rounds"
att.displayNameShort = "UMGMatch"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {[1] = {t = "god i miss her so much", c = CustomizableWeaponry.textColors.VNEGATIVE},
	[2] = {t = "please come back", c = CustomizableWeaponry.textColors.COSMETIC},
	[3] = {"i can't live without you", c = CustomizableWeaponry.textcolors.VPOSITIVE}
	}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
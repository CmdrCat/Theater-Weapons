local att = {}
att.name = "am_ultramegamatchammo"
att.displayName = "Ultra Mega Match-Grade rounds"
att.displayNameShort = "UMGMatch"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {
		{t = "god i miss her so much", c = CustomizableWeaponry.textColors.VNEGATIVE}
	}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)
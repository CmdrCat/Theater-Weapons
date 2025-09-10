local att = {}
att.name = "md_csgo_silencer_rifle"
att.displayName = "Rifle Suppressor"
att.displayNameShort = "Rifle"
att.isSuppressor = true

att.statModifiers = {RecoilMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("cw20_extras/icons/upgr_csgo_silencer_rifle")
	att.description = {[1] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE},
					   [2] = {t = "Decreases effective range by 15%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self.dt.Suppressed = false
end

CustomizableWeaponry:registerAttachment(att)
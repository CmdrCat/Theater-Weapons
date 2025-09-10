local att = {}
att.name = "md_snip2_light_suppressor"
att.displayName = "Lightweight Suppressor"
att.displayNameShort = "Light"
att.isSuppressor = true

att.statModifiers = {
RecoilMult = -0.15,
AimSpreadMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("entities/light_suppressor")
	att.description = {[1] = {t = "looks cool", c = CustomizableWeaponry.textColors.POSITIVE},
    [2] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)
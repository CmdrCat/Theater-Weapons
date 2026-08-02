local att = {}
att.name = "hard20"
att.displayName = "Harbinger D20"
att.displayNameShort = "D20"
att.isSuppressor = true

att.statModifiers = {
RecoilMult = -0.05,
}

if CLIENT then
	
	att.displayIcon = surface.GetTextureID("vgui/atts/r_harbinger20")
	att.description = {[1] = {t = "Heavy-duty suppresor.", c = CustomizableWeaponry.textColors.NEUTRAL},
					   [2] = {t = "Effective range increased by 10%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)
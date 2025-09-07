local att = {}
att.name = "hard20"
att.displayName = "HARBINGER D-20"
att.displayNameShort = "D-20"
att.isSuppressor = true
att.SpeedDec = 2

att.statModifiers = {
RecoilMult = -0.20,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_harbinger20")
	att.description = {[1] = {t = "Heavy duty suppresor.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)
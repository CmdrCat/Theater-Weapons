local att = {}
att.name = "am_atow_riot"
att.displayName = "Shotshell"
att.displayNameShort = "SHOT"

att.statModifiers = {
	DamageMult = -0.4,
	RecoilMult = -.35}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/riot")
	att.description = {{t = "Riot control shell with four pellets.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	self.CrosshairParts = {left = false, right = false, upper = false, lower = false}
	self.ClumpSpread = 0.11
	self.ClumpSpread_Orig = 0.11
	self.Shots = 4
	self.PenMod = .8
end

function att:detachFunc()
	self.CrosshairParts = {left = true, right = true, upper = true, lower = true}
	self.ClumpSpread = nil
	self.Shots = self.Shots_Orig
	self.PenMod = 1
end

CustomizableWeaponry:registerAttachment(att)
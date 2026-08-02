local att = {}
att.name = "am_snakeshot"
att.displayName = "Snake Shot"
att.displayNameShort = "Snake"

att.statModifiers = {
	DamageMult = -99 / 100,
	RecoilMult = -.5}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/riot")
	att.description = {{t = "Shells loaded with a flurry of weak shot meant to kill small pests.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	self.CrosshairParts = {left = false, right = false, upper = false, lower = false}
	self.ClumpSpread = 5
	self.ClumpSpread_Orig = 5
	self.Shots = 100
	self.PenMod = 0.1
end

function att:detachFunc()
	self.CrosshairParts = {left = true, right = true, upper = true, lower = true}
	self.ClumpSpread = nil
	self.Shots = self.Shots_Orig
	self.PenMod = 1
end

CustomizableWeaponry:registerAttachment(att)
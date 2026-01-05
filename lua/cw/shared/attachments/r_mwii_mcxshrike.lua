local att = {}
att.name = "md_mcxshrike"
att.displayName = "MCX \"Shrike\" Conversion"
att.displayNameShort = "Shrike"
att.isSuppressor = true

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Aftermarket variant with a monolithic integrated suppressor", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Decreases damage fall off by 20%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.FireSound = "MWII_M13B_FIRE_SUPPRESSED"
	self.PrintName = "MCX \"Shrike\""
end

function att:detachFunc()
	self.FireSound = "MWII_M13B_FIRE"
	self.PrintName = "MCX Virtus"
end




CustomizableWeaponry:registerAttachment(att)
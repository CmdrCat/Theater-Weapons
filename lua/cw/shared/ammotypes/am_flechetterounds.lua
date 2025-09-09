local att = {}
att.name = "am_flechetterounds"
att.displayName = "Flechette Rounds"
att.displayNameShort = "Flechette"

att.statModifiers = {ClumpSpreadMult = -0.15,
	DamageMult = -0.4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/flechetterounds")
	att.description = {{t = "Increases amount of rounds per shot to 20.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Shots = 20
end

function att:detachFunc()
	self.Shots = self.Shots_Orig
end

CustomizableWeaponry:registerAttachment(att)
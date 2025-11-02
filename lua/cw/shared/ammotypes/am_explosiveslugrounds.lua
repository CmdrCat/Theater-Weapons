local att = {}
att.name = "am_explosiveslugrounds"
att.displayName = "Explosive Slug Rounds"
att.displayNameShort = "Explosive"

att.statModifiers =  {HipSpreadMult = 2.34,
FireDelayMult = 0.5}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/slugrounds")
	att.description = {{t = "Slug rounds that explode on impact", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Fires out only 1 pellet.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.Ammo = "12 Gauge Explosive Slugs"
end

function att:detachFunc()
	self.Primary.Ammo = "12 Gauge"
end

CustomizableWeaponry:registerAttachment(att)
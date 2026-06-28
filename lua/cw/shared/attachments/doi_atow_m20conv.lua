local att = {}
att.name = "doi_atow_m20conv"
att.displayName = "Mitrailleur M.20 Conversion"
att.displayNameShort = "M.20"
att.isBG = true

att.statModifiers = {DamageMult = -17 / 48,
FireDelayMult = -27 / 80,
RecoilMult = -0.25
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "A variant often mounted on aircraft and chambered in 6.5×53MMR", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Increases capacity to 97 rounds", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Decreases effective range by 5 M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[4] = {t = "Increases damage fall off by 5%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self:setBodygroup(self.FSightBGs.main, self.FSightBGs.on)
	self:setBodygroup(self.RSightBGs.main, self.RSightBGs.on)
	self.Primary.ClipSize = 97
	self.Primary.ClipSize_Orig = 97
	self:setupCurrentIronsights(self.AltIronPos, self.AltIronAng)
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("Ironsight2")
	end
	self.Primary.Ammo = "6.5x53MMR"
	self.FireSound = "DOIBREN_FIRE"
	self.PrintName = "Mitrailleur M.20"
	self.ShellScale = 0.59
	self:loadWeapon()
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self:setBodygroup(self.FSightBGs.main, self.FSightBGs.off)
	self:setBodygroup(self.RSightBGs.main, self.RSightBGs.off)
	self.Primary.ClipSize = 47
	self.Primary.ClipSize_Orig = 47
	self:unloadWeaponPartially()
	self:revertToOriginalIronsights()
	self.Primary.Ammo = ".303"
	self.FireSound = "DOILEWIS_FIRE"
	self.PrintName = "Lewis Gun"
	self.ShellScale = 0.7
end

CustomizableWeaponry:registerAttachment(att)

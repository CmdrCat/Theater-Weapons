local att = {}
att.name = "md_sr338_rsass_conversion"
att.displayName = "RSASS Conversion"
att.displayNameShort = "RSASS"

att.statModifiers = {DamageMult = -46 / 95,
	FireDelayMult = -4 / 7,
	RecoilMult = -0.6,
	ReloadSpeedMult = 0.08}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Precise, fast-firing semi-automatic sniper rifle chambered in 7.62x51MM", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decrease effective range by 50 M", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.PrintName = "RSASS"
	self.FireSound = "DOISPRING_FIRE"
	self.FireSoundSuppressed = "DOIM1A1CAR_FIRE_SUPPRESSED"
	self.Primary.Ammo = "7.62x51MM"
	self.ShellScale = 0.69
	self.Primary.ClipSize = 20
	self.Primary.ClipSize_Orig = 20
	self:loadWeapon()
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.000000001, 0.000000001, 0.000000001))
	end
	/* Yeah so CW sucks and this doesn't work lmao
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.911, 0.761, 0.911))
		self.CW_VM:ManipulateBonePosition(self.CW_VM:LookupBone(self.MagBoneName), Vector(1.575, -0.221, -0.92))
		self.CW_VM:ManipulateBoneAngles(self.CW_VM:LookupBone(self.MagBoneName), Angle(0, 0, 5))
	end
	*/
end

function att:detachFunc()
	self.PrintName = "SR-338"
	self.FireSound = "SR338_FIRE"
	self.FireSoundSuppressed = "SR338_SUPFIRE"
	self.Primary.Ammo = ".338 Lapua"
	self.ShellScale = 0.75
	self.Primary.ClipSize = 10
	self.Primary.ClipSize_Orig = 10
	self:unloadWeaponPartially()
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
	/*
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
		self.CW_VM:ManipulateBonePosition(self.CW_VM:LookupBone(self.MagBoneName), Vector(0, 0, 0))
		self.CW_VM:ManipulateBoneAngles(self.CW_VM:LookupBone(self.MagBoneName), Angle(0, 0, 0))
	end
	*/
end

CustomizableWeaponry:registerAttachment(att)
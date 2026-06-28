local att = {}
att.name = "doi_atow_mg3conv"
att.displayName = "MG 3 Conversion"
att.displayNameShort = "MG 3"

att.statModifiers = {FireDelayMult = 3 / 10,
ReloadSpeedMult = 0.3,
RecoilMult = -0.6,
AimSpreadMult = 4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "The MG 3 fires shofter-shooting 7.62x51MM rounds at the cost of fire rate.", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases capacity to 100 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},}
end

function att:attachFunc()
	self.PrintName = "MG 3"
	self.FireSound = "DOIBROWNING_FIRE"
	self.Primary.Ammo = "7.62x51MM"
	self.Shell = "mainshell"
	self.ShellScale = 0.69
	self.Primary.ClipSize = 100
	self.Primary.ClipSize_Orig = 100
	self:unloadWeaponPartially()
end

function att:detachFunc()
	self.PrintName = "MG 42"
	self.FireSound = "DOIMG42_FIRE"
	self.Primary.Ammo = "7.92x57MM"
	self.Shell = "khr79257"
	self.ShellScale = 0.7
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:loadWeapon()
end

CustomizableWeaponry:registerAttachment(att)

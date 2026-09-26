local att = {}
att.name = "uecw_acr_68_conversion"
att.displayName = "6.8 SPC Receiver"
att.displayNameShort = "6.8 SPC"
att.SpeedDec = 15

att.statModifiers = {DamageMult = 9 / 13,
	FireDelayMult = 27 / 43,
	RecoilMult = 0.5,
	HipSpreadMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/68spc")
	att.description = {[1] = {t = "Fire more lethal shots in semi-automatic mode.", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases capacity to 25 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [3] = {t = "Increases effective range by 15 M", c = CustomizableWeaponry.textColors.POSITIVE},
					   [4] = {t = "Decreases damage fall off by 10%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = 25
	self.Primary.ClipSize_Orig = 25
	self:unloadWeaponPartially()
	self.Primary.Ammo = "6.8 SPC"
	self.ShellScale = 0.61
end

function att:detachFunc()
	local clip = self:Clip1() or 0

	if clip >= 25 then
		self:SetClip1(30 + clip - 25)
	end 
	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Primary.Ammo = "5.56x45MM"
	self.ShellScale = 0.5
end

CustomizableWeaponry:registerAttachment(att)
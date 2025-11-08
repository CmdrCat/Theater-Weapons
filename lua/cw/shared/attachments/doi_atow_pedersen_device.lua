local att = {}
att.name = "doi_atow_pedersen_device"
att.displayName = " Pedersen Device"
att.displayNameShort = "Pedersen"
att.isBG = false

att.statModifiers = {FireDelayMult = -181 / 200,
ReloadSpeedMult = 1,
DamageMult = -101 / 170,
HipSpreadMult = -0.23}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to a self-loading .30 caliber rifle; 40-round mag not included", c = CustomizableWeaponry.textColors.POSITIVE},
					   [2] = {t = "Decreases effective range by 60M", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [3] = {t = "Increases damage fall off by 10%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	-- self:CycleFiremodes()
	-- self.FireModes = {"semi","safe"}
	function self:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 0.5
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end
	self.RoundBeltBoneNames = {
		"Bullet_1",
		"Bullet_2",
	}
	self.Primary.ClipSize = 9
	self.Primary.ClipSize_Orig = 9
	self.FireSound = "DOIM1A1CAR_FIRE"
	self.Primary.Ammo = ".30 Carbine"
	self.Shell = "khr30carbine"
end

function att:detachFunc()
	function self:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end
	self.Primary.ClipSize = 5
	self.Primary.ClipSize_Orig = 5
	self.FireSound = "DOISPRING_FIRE"
	self.Primary.Ammo = ".30-06"
	self.Shell = "khr3006"
end

CustomizableWeaponry:registerAttachment(att)
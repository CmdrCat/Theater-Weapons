local att = {}
att.name = "doi_atow_bm59conv"
att.displayName = "BM59 ITAL Conversion"
att.displayNameShort = "BM59"
att.isBG = true

att.statModifiers = {FireDelayMult = -8 / 15,
					 DamageMult = -35 / 83,
					 RecoilMult = 1.25,
					 ReloadSpeedMult = 0.5,
					 HipSpreadMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Select-fire, 7.62x51MM conversion", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Change firemode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases effective range by 20 M", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [4] = {t = "Increases damage fall off by 10%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.carbine)
	self.MuzzleEffect = "muzzleflash_m14"
	self.Primary.Ammo = "7.62x51MM"
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.rifle)
	self.MuzzleEffect = "muzzleflash_suppressed"
	self.Primary.Ammo = ".30-06"
end

CustomizableWeaponry:registerAttachment(att)

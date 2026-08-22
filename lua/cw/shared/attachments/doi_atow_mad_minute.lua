local att = {}
att.name = "doi_atow_mad_minute"
att.displayName = "Mad Minute"
att.displayNameShort = "Mad Minute"
att.isBG = true

att.statModifiers = {FireDelayMult = -73 / 115,
	HipSpreadMult = 0.2,
	DamageMult = -67 / 167}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/greasedbolt")
	att.description = {[1] = {t = "Rapidly fire your rifle at the cost of accuracy.", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases headshot multiplier from 1.2 to 2.0", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	function self:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 2.74
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

	self.RoundBeltBoneNames = {
		"Bullet_1",
		"Bullet_2",
	}
end

CustomizableWeaponry:registerAttachment(att)
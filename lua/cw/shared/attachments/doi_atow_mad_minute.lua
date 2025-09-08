local att = {}
att.name = "doi_atow_mad_minute"
att.displayName = "Mad Minute"
att.displayNameShort = "Mad Minute"
att.isBG = true

att.statModifiers = {FireDelayMult = -73 / 115,
	AimSpreadMult = 10,
	HipSpreadMult = 10}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/greasedbolt")
	att.description = {[1] = {t = "Rapidly fire your rifle at the cost of accuracy.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
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

CustomizableWeaponry:registerAttachment(att)
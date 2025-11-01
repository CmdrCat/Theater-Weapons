local att = {}
att.name = "uecw_mrad_conversion"
att.displayName = "MRAD .308 Winchester Conversion"
att.displayNameShort = "MRAD"

att.statModifiers = {DamageMult = -3 / 37,
	FireDelayMult = -2 / 5,
	RecoilMult = -0.25,
	HipSpreadMult = -0.135,
	VelocitySensitivityMult = -0.28}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Converts to an MRAD chambered in .308 Winchester.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	function self:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 5 / 3
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
	self.Primary.Ammo = ".308 Winchester"
end

function att:detachFunc()
	self.Primary.Ammo = ".338 Lapua"
end

CustomizableWeaponry:registerAttachment(att)
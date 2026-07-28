local att = {}
att.name = "am_3040"
att.displayName = ".30-40 Krag"
att.displayNameShort = ".30-40"

att.statModifiers = {DamageMult = -11 / 29,
	RecoilMult = -.15,
	FireDelayMult = -7 / 13}

att.sharedAmmoPool = {
	"7.62x54MMR",
	"7.92x57MM",
	".30-06",
	".30-03",
	".30-40",
	".303",
	".35 Winchester",
	".38-72",
	".40-72",
	".405 Winchester"
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/hvyammo")
	att.description = {[1] = {t = "A soft-shooting round that benefits from repeated hits over precision.", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Decreases effective range by 55 M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 20%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	function self:fireAnimFunc()
		clip = self:Clip1()
		cycle = 0
		rate = 2.1 * 1.75
		anim = "safe"
		prefix = ""
		suffix = ""

		if clip == 1 then
			suffix = suffix .. "_last"
		end

		if self:isAiming() then
			suffix = suffix .. "_aim"
			cycle = self.ironFireAnimStartCycle
		end

		self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
	end

	self.ShellDelay = 0.12

	self.Primary.Ammo			= ".30-40"
end

function att:detachFunc()
	function self:fireAnimFunc()
		clip = self:Clip1()
		cycle = 0
		rate = 2.1
		anim = "safe"
		prefix = ""
		suffix = ""

		if clip == 1 then
			suffix = suffix .. "_last"
		end

		if self:isAiming() then
			suffix = suffix .. "_aim"
			cycle = self.ironFireAnimStartCycle
		end

		self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
	end

	self.ShellDelay = 0.21

	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "am_792x57"
att.displayName = "7.92x57MM Mauser"
att.displayNameShort = "7.92"

att.statModifiers = {DamageMult = 5 / 29,
	RecoilMult = .3,
	FireDelayMult = 7 / 8}

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
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {[1] = {t = "A powerful cartridge that demands patience, rewarding precise marksmanship at long ranges.", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Increases effective range by 10 M", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Increases damage fall off by 5%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	function self:fireAnimFunc()
		clip = self:Clip1()
		cycle = 0
		rate = 2.1 * 0.45
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

	self.ShellDelay = 0.46

	self.ShellScale = 1.04
	self.Primary.Ammo			= "7.92x57MM"
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

	self.ShellScale = 1
	self.Primary.Ammo			= "7.62x54MMR"
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "am_303brit"
att.displayName = ".303 British"
att.displayNameShort = ".303"

att.statModifiers = {DamageMult = -48 / 145,
	FireDelayMult = -5 / 11}

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
	att.description = {[1] = {t = "A reliable cartridge that benefits from disciplined shooting at mid-close range.", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Decreases effective range by 60 M", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Increases damage fall off by 10%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	function self:fireAnimFunc()
		clip = self:Clip1()
		cycle = 0
		rate = 2.1 * 1.25
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

	self.ShellDelay = 0.17

	self.ShellScale = 1.01
	self.Primary.Ammo			= ".303"
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
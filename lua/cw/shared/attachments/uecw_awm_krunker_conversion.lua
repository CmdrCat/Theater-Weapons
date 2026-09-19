local att = {}
att.name = "uecw_awm_krunker_conversion"
att.displayName = "Good Ol' Days"
att.displayNameShort = "Hunter"
att.SpeedDec = -5

att.statModifiers = {DamageMult = -1 / 18,
	FireDelayMult = -5 / 13,
	RecoilMult = -0.78,
	ReloadSpeedMult = 1.35,
	HipSpreadMult = 3,
	VelocitySensitivityMult = 2,
	MaxSpreadIncMult = 7}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/hunter")
	att.description = {[1] = {t = "Converts to a lightweight, semi-automatic version of the AWP", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Increases headshot multiplier from 1.2 to 1.5", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases effective range by 50 M", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [4] = {t = "Increases damage fall off by 20%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Trivia = {text = "Donning a hat and a face bandana, the elusive Hunter takes out his opponents before they get a chance to fire back.", x = -100, y = -450}

	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	self.Primary.ClipSize = 3
	self.Primary.ClipSize_Orig = 3
	self:unloadWeaponPartially()

	self.allowSoloReloadDown = true

	self.Primary.Ammo = "7.62x51MM"
	self.ShellScale = 0.69
	self.ShellDelay = 0

	function self:fireAnimFunc()
	end

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1.304, 0.795, 1))
	end
	if self.BoltBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BoltBoneName), Vector(0.009, 0.009, 0.009))
	end

	self.PrintName = "Good Ol' Days"
end

function att:detachFunc()
	self.Trivia = {text = "An accurate sniper rifle designed for magnum rifle rounds. The original design was made in a shed. With a box of scraps!", x = -100, y = -450}

	self:CycleFiremodes()
	self.FireModes = {"bolt","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	local clip = self:Clip1()
	if clip >= 3 then
		self:SetClip1(5)
	end

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	self.Primary.Ammo = ".338 Lapua"
	self.ShellScale = 0.77
	self.ShellDelay = .6

	self.allowSoloReloadDown = nil

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
	if self.BoltBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BoltBoneName), Vector(1, 1, 1))
	end

	self.PrintName = "AWM"

	function self:fireAnimFunc()
		clip = self:Clip1()
		cycle = 0
		rate = 1
		anim = "safe"
		prefix = ""
		suffix = ""
		self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
	end
end

CustomizableWeaponry:registerAttachment(att)
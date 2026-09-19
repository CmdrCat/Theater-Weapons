local att = {}
att.name = "md_goldenjustice"
att.displayName = "Golden Justice"
att.displayNameShort = "Golden Justice"

att.statModifiers = {DamageMult = -57 / 145,
	FireDelayMult = 0.89285,
	RecoilMult = -0.8}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/goldenjustice")
	att.description = {[1] = {t = "Increases damage the further targets are from the player.", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Sets maximum damage range to 100 M", c = CustomizableWeaponry.textColors.COSMETIC},
					   [3] = {t = "Sets damage increase rate to 100%", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	function self:fireAnimFunc()
		local clip = self:Clip1() or 0
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

	self.PrintName = "Golden Justice"

	self.Trivia = {text = "They say Desperado's longarm can hit clean through an army of Bloons.", x = 300, y = -600}

	if SERVER then
		return
	end

    wep.CW_VM:SetSubMaterial(0, "")

    for i, index in ipairs(self.GoldenJusticeIndexWhite) do
		wep.CW_VM:SetSubMaterial(index, "xeon133/slider_12x12x12")
	end
	if self.GoldenJusticeIndexBrass then
		for i, index in ipairs(self.GoldenJusticeIndexBrass) do
			wep.CW_VM:SetSubMaterial(index, "models/khrcw2/doipack/brassknuckles/weapon_w_knuckles_dm")
		end
	end
	if self.GoldenJusticeIndexRed then
		for i, index in ipairs(self.GoldenJusticeIndexRed) do
			wep.CW_VM:SetSubMaterial(index, "phoenix_storms/red")
		end
	end
end

function att:detachFunc()
	function self:fireAnimFunc()
		local clip = self:Clip1() or 0
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

	self.PrintName = "Model 1895"

	self.Trivia = {text = "American lever-action rifle compatible with a plethora of cartridges. This model in particular was made for the Russian Empire.", x = -100, y = -600}

	if SERVER then
		return
	end

	for i, index in ipairs(self.GoldenJusticeIndexWhite) do
		wep.CW_VM:SetSubMaterial(index, "")
	end
	if self.GoldenJusticeIndexBrass then
		for i, index in ipairs(self.GoldenJusticeIndexBrass) do
			wep.CW_VM:SetSubMaterial(index, "")
		end
	end
	if self.GoldenJusticeIndexRed then
		for i, index in ipairs(self.GoldenJusticeIndexRed) do
			wep.CW_VM:SetSubMaterial(index, "")
		end
	end
	wep.CW_VM:SetSubMaterial(0, "")
end

CustomizableWeaponry:registerAttachment(att)
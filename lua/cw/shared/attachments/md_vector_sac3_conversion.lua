local att = {}
att.name = "md_vector_sac3_conversion"
att.displayName = "SAC3 Conversion"
att.displayNameShort = "SAC3"

att.statModifiers = {HipSpreadMult = -0.5,
					 MaxSpreadIncMult = 39,
					 VelocitySensitivityMult = 6000}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Steady-shooting variant dependent on whether it is dual / single-wielded. ", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Increases headshot multiplier to 1.1x", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases magazine capacity to 32 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [4] = {t = "Increases damage to 50 / 32", c = CustomizableWeaponry.textColors.POSITIVE},
					   [5] = {t = "Decreases firerate to 600 / 923 RPM", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [6] = {t = "Increases effective range to 31 / 22 M", c = CustomizableWeaponry.textColors.POSITIVE},
					   [7] = {t = "Decreases damage fall off to 28 / 37%", c = CustomizableWeaponry.textColors.POSITIVE},
					   [8] = {t = "Decreases reload speed to 1.5 / 2 s", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Trivia = {text = "Fully automatic. Best in class (NOT) fire rate.", x = 0, y = -850}
	self.PrintName = "SAC3"
	self.FireSound = "CW_MP9_FIRE"
	self.FireSoundSuppressed = "MWII_M13B_FIRE_SUPPRESSED"

	self.Primary.ClipSize = 32
	self.Primary.ClipSize_Orig = 32

	if SERVER then
		return
	end

    wep.CW_VM:SetSubMaterial(0, "")
    for i, index in ipairs(self.MaterialIndexPrimary) do
		wep.CW_VM:SetSubMaterial(index, "models/weapons/flare/shellside")
	end
end

function att:detachFunc()
	self.Trivia = {text = "Notable for its KRISS Super V mechanism, which reduces muzzle climb.", x = -300, y = -850}
	self.PrintName = "Vector"
	self.FireSound = "CW_VECTOR_FIRE"
	self.FireSoundSuppressed = "DOITHOM1928_FIRE_SUPPRESSED"

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	if SERVER then
		return
	end

    for i, index in ipairs(self.MaterialIndexPrimary) do
		wep.CW_VM:SetSubMaterial(index, "")
	end
    wep.CW_VM:SetSubMaterial(0, "")
end

CustomizableWeaponry:registerAttachment(att)
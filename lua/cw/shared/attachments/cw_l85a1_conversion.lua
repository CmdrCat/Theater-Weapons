local att = {}
att.name = "cw_l85a1_conversion"
att.displayName = "L85A1 Conversion"
att.displayNameShort = "L85A1"

att.statModifiers = {DamageMult = 161 / 39,
RecoilMult = 10}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Gun frequently jams, but each round is overloaded", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 1
	self.Primary.ClipSize_Orig = 1
end

function att:detachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)

local att = {}
att.name = "doi_atow_m3pam1conv"
att.displayName = "PAM-1 Conversion"
att.displayNameShort = "PAM-1"

att.statModifiers = {DamageMult = -19 / 65,
FireDelayMult = -5 / 16,
RecoilMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Argentinian Grease Gun variant chambered in 9x19mm", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self.FireSound = "DOIOWEN_FIRE"
	self.FireSoundSuppressed = "DOISTEN_SUPPRESSED"
	self.Primary.Ammo = "9x19MM"
	self.PrintName = "PAM-1"
	self.ShellScale = 1.25
end

function att:detachFunc()
	self.FireSound = "DOIM3_FIRE"
	self.FireSoundSuppressed = "DOIM3_FIRE_SUPP"
	self.Primary.Ammo = ".45 ACP"
	self.PrintName = "M3 Grease Gun"
	self.ShellScale = 1.59
end


CustomizableWeaponry:registerAttachment(att)

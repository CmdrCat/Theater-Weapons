local att = {}
att.name = "uecw_an94_58_conversion"
att.displayName = "5.8x42MM Conversion"
att.displayNameShort = "5.8x42MM"

att.statModifiers = {DamageMult = -2 / 15,
	FireDelayMult = -11 / 61,
	RecoilMult = 0.34}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/an9458")
	att.description = {[1] = {t = "Chinese version chambered in 5.8x42MM", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Increases effective range by 5 M", c = CustomizableWeaponry.textColors.POSITIVE},
					   [3] = {t = "Decreases damage fall off by 5%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.FireSound = "CW_TOO_G3A3_FIRE"
	self.FireSoundSuppressed = "CW_FAMASG2_SUPPRESSED"
	self.Trivia = {text = "An obscure, experimental Chinese variant of the AN-94 chambered in 5.8x42MM.", x = 0, y = -800}
	self.Primary.Ammo = "5.8x42MM"
	self.ShellScale = 0.52
	if self.MagBoneName then
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
	if CLIENT then
		if self.AttachmentModelsVM.uecw_an94_58_conversion then
			self.AttachmentModelsVM.uecw_an94_58_conversion.ent:SetBodygroup(1,1)
			self.AttachmentModelsVM.uecw_an94_58_conversion.ent:SetSkin(4)
		end
	end
end

function att:detachFunc()
	self.FireSound = "CW_AN94_FIRE"
	self.FireSoundSuppressed = "CW_AN94_FIRE_SUPPRESSED"
	self.Trivia = {text = "A complex assault rifle with a unique hyperburst mechanism. The rifle of choice for C.G.I. counter-terrorists.", x = 0, y = -800}
	self.Primary.Ammo = "5.45x39MM"
	self.ShellScale = 0.49
	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
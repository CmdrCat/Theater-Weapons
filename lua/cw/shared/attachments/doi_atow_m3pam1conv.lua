local att = {}
att.name = "doi_atow_m3pam1conv"
att.displayName = "PAM-1"
att.displayNameShort = "PAM-1"

att.statModifiers = {DamageMult = -19 / 65,
FireDelayMult = -5 / 16,
RecoilMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Argentinian Grease Gun variant chambered in 9x19mm", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self.Primary.Ammo = "9x19MM"
	self.Trivia = {text = "The MP5 .22 LR Rifle is a civilian-legal, .22 LR variant of the MP5. Though semi-automatic, it boasts a very high cyclic rate, if your finger can keep up with it.", x = -600, y = -600}
end

function att:detachFunc()
	self.Primary.Ammo = ".45 ACP"
	self.Trivia = {text = "This reliable submachine gun is the face of counter-terrorism due its successful usage by SAS operators in Operation Nimrod.", x = -600, y = -600}
end


CustomizableWeaponry:registerAttachment(att)

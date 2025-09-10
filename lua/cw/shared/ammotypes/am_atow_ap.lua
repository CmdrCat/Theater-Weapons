local att = {}
att.name = "am_atow_ap"
att.displayName = "Tungsten Core Rounds"
att.displayNameShort = "AP"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/apammo")
	att.description = {[1] = {t = "Dense rounds that can punch through cover more effectively.", c = CustomizableWeaponry.textColors.VPOSITIVE},
		[2] = {t = "Increases surface penetration by 99%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.PenMod = 1.99
end

function att:detachFunc()
	self.PenMod = 1
end

CustomizableWeaponry:registerAttachment(att)
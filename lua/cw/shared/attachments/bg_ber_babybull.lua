local att = {}
att.name = "bg_ber_babybull"
att.displayName = "Baby Bull"
att.displayNameShort = "Short"
att.isBG = true

att.statModifiers = {DamageMult = -0.1,
AimSpreadMult = 0.1,
RecoilMult = 0.1,
FireDelayMult = -0.05,
OverallMouseSensMult = 0.1,
DrawSpeedMult = 0.10}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/baby_bull")
	att.descripton = {[1] = {t = "Decreases effective range by 5M.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.small)
	self:updateSoundTo("CW_BER_BULL_FIRE_SHORT", CustomizableWeaponry.sounds.UNSUPPRESSED)
	self.Animations = {fire = {"shoot1_baby", "shoot2_baby"},
	reload = "reload",
	idle = "idle1",
	draw = "draw"}
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.main)
	self:restoreSound()
	self.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	idle = "idle1",
	draw = "draw"}
end

CustomizableWeaponry:registerAttachment(att)
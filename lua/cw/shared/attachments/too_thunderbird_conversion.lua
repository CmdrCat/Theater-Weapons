local att = {}
att.name = "too_thunderbird_conversion"
att.displayName = "Thunderbird Conversion"
att.displayNameShort = "Thunder"

att.statModifiers = {DamageMult = -27 / 79,
	FireDelayMult = -191 / 543.5}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mrwilk")
	att.description = {[1] = {t = "Converts to the Thunderbird, a fully-automatic-only variant", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"auto", "safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.PrintName = "Thunderbird"

	if SERVER then
		return
	end

    wep.CW_VM:SetSubMaterial(0, "")

    for i, index in ipairs(self.MaterialIndexSecondary) do
		wep.CW_VM:SetSubMaterial(index, "models/khrcw2/doipack/brassknuckles/weapon_w_knuckles_dm")
	end
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
	self.PrintName = "Desert Eagle"

	if SERVER then
		return
	end

	for i, index in ipairs(self.MaterialIndexSecondary) do
		wep.CW_VM:SetSubMaterial(index, "")
	end
	wep.CW_VM:SetSubMaterial(0, "")
end

CustomizableWeaponry:registerAttachment(att)
AddCSLuaFile()

------------------ EXTENDED BARREL

local att = {}
att.name = "bg_mac11_extended_barrel"
att.displayName = "Extended Barrel"
att.displayNameShort = "Ext"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {AimSpreadMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mac11_ext_barrel")
	att.description = {[1] = {t = "An extended barrel", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.extended)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)

------------------ UNFOLDED STOCK

local att = {}
att.name = "cw_mac11_recoil_buffer"
att.displayName = "Recoil Buffer"
att.displayNameShort = "Buffer"

att.statModifiers = {FireDelayMult = -13 / 25,
DamageMult = -15 / 29,
RecoilMult = -0.75,
HipSpreadMult = 100}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Reduces bolt travel distance and absorbs shock from recoil at the cost of reliability", c = CustomizableWeaponry.textColors.VPOSITIVE},
[2] = {t = "Decreases effective range by 25%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)

------------------ UNFOLDED STOCK

local att = {}
att.name = "bg_mac11_unfolded_stock"
att.displayName = "Unfolded Stock"
att.displayNameShort = "Unfold"
att.isBG = true

att.statModifiers = {DrawSpeedMult = -0.1,
RecoilMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mac11_unfolded_stock")
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.unfolded)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.folded)
end

CustomizableWeaponry:registerAttachment(att)
if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_soundscript.lua")
include("sh_soundscript.lua")

SWEP.magType = "smgMag"

if CLIENT then
	SWEP.DrawCrosshair = true
	SWEP.PrintName = "KRISS Vector"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.UseHands = true

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/cw_kk_ins2_cstm_kriss")

	SWEP.Shell = "khr79233"

	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 180}

	SWEP.AttachmentModelsVM = {
	}				

	SWEP.AttachmentModelsWM = {
		
	}

	SWEP.IronsightPos = Vector(-2.7495, -2, 1.097)
	SWEP.IronsightAng = Vector()


	SWEP.CustomizationMenuScale = 0.012
end

SWEP.MuzzleEffect = "muzzleflash_suppressed"

SWEP.Attachments = {
	{header = "Sight", offset = {400, -700}, atts = {}},
	{header = "Muzzle", offset = {-300, -700}, atts = {}},
	{header = "Lasers", offset = {-500, -200}, atts = {}},
	{header = "Handguard", offset = {900, -200}, atts = {}, },
	["+use"] = {header = "Sight Contract", offset = {400, -200}, atts = {}},
	["+reload"] = {header = "Ammo", offset = {0, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"
}

SWEP.SpeedDec = 15

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "2burst", "semi"}
SWEP.Base = "cw_base"	
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70	
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_cw_kk_ins2_cstm_kriss.mdl"
SWEP.WorldModel		= "models/weapons/w_cw_kk_ins2_cstm_kriss.mdl"

SWEP.WMPos = Vector(5.471, 0.967, 0.5)
SWEP.WMAng = Vector(-15, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ".45 ACP"

SWEP.FireDelay = 60/1200
SWEP.FireSound = "DOISTG44_FIRE"
SWEP.FireSoundSuppressed = "DOIM1A1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = 0.7

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.009
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 33

SWEP.FirstDeployTime = 2.3
SWEP.DeployTime = 0.6
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 16

SWEP.MuzzleVelocity = 700

SWEP.ReloadSpeed = 1.25
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 3.1
SWEP.ReloadTime_Empty = 3.8
SWEP.ReloadHalt_Empty = 4.85

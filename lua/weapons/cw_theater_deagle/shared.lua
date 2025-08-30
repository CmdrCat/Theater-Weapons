AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Desert Eagle"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true
	SWEP.Spawnable = false
	
	SWEP.IconLetter = "f"
	killicon.AddFont("cw_deagle", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
	SWEP.PosBasedMuz = false
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 1
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}
		
	SWEP.MicroT1Pos = Vector(-2.28, 0, -0.292)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.25, -6.198, -0.32)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-2.605, 10, 0.639)
	SWEP.IronsightAng = Vector(0.765, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.247, -6.5, -0.602)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)
	
	SWEP.AlternativePos = Vector(-0.88, 1.325, -0.561)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	
	
	
	SWEP.AttachmentModelsVM = {
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(3.325, -1.075, 0.209), angle = Angle(90, 0, -90), size = Vector(0.4, 0.4, 0.4)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "weapon", pos = Vector(-6.054, 8.47, -0.035), angle = Angle(0, 1.5, -90), size = Vector(0.85, 0.85, 0.85)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "weapon", pos = Vector(-1.831, 3.892, 0.504), angle = Angle(-90, 0, -90), size = Vector(0.85, 0.85, 0.85)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", pos = Vector(-4.784, -0.408, -1.581), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)}
	}
end

SWEP.ShootWhileProne = true

SWEP.MuzzleVelocity = 470 -- in meter/s

SWEP.CanRestOnObjects = false

SWEP.Attachments = {[1] = {header = "Sight", offset = {450, -350}, atts = {"md_microt1", "md_eotech", "md_acog"}},
[2] = {header = "Barrel", offset = {-600, -350}, atts = {"md_saker"}},
["+reload"] = {header = "Ammo", offset = {450, 100}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {
    fire         = "fire",
	fire_last         = "fire_empty",
	fire_aim         = "fire_iron",
	fire_last_aim         = "fire_empty",
    reload       = "reload",
    reload_empty = "reload_empty",
    idle         = "idle",
    draw         = "draw"
}

SWEP.Sounds = {
    draw = {
        {time = 0,    sound = "CW_FOLEY_LIGHT"}
    },

    reload = {
        {time = 0.57, sound = "CW_TOO_DEAGLE_MAGREL"},
        {time = 0.63,  sound = "CW_TOO_DEAGLE_MAGOUT"},
		{time = 0.95,  sound = "CW_TOO_DEAGLE_MAGHIT"},
		{time = 1.12,  sound = "CW_TOO_DEAGLE_MAGIN"},
    },

    reload_empty = {
        {time = 0.30, sound = "CW_TOO_DEAGLE_MAGOUT_EMPTY"},
		{time = 0.95, sound = "CW_TOO_DEAGLE_PIVOT"},
		{time = 1.45, sound = "CW_TOO_DEAGLE_MAGHIT_EMPTY"},
		{time = 1.58, sound = "CW_TOO_DEAGLE_MAGIN_EMPTY"},
		{time = 2.23, sound = "CW_TOO_DEAGLE_SLIDEBACK"},
		{time = 2.32, sound = "CW_TOO_DEAGLE_SLIDEREL"},
    }
}


SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Theater Customs"
SWEP.SubCategory = "Pistols"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.DrawSpeed = 1.5

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/pi/cw2_rfas_deagle44.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_deagle.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 7
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 AE"

SWEP.FireDelay = 60 / 350
SWEP.FireSound = "CW_TOO_DEAGLE_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_DEAGLE_FIRE_SUPPRESSED"
SWEP.Recoil = 2.8

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 1.35
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.32
SWEP.Shots = 1
SWEP.Damage = 56
SWEP.DeployTime = 1
--SWEP.Chamberable = false
SWEP.NearWallDistance = 15

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.89
SWEP.ReloadHalt = 1.89

SWEP.ReloadTime_Empty = 2.9
SWEP.ReloadHalt_Empty = 2.9


SWEP.ADSFireAnim = true

function SWEP:fireAnimFunc()
    clip = self:Clip1()         -- gets the current number of bullets left in the weapon's magazine
    cycle = 0                   -- default animation cycle start point
    rate = 1                    -- default animation playback rate
    anim = "safe"               -- unused variable here (probably placeholder)
    prefix = ""                 -- prefix for the animation name
    suffix = ""                 -- suffix for the animation name

    -- If the weapon is down to the last bullet, mark this shot as the "last" animation
    if clip == 1 then
        suffix = suffix .. "_last"
    end

    -- If the player is aiming down sights, adjust animation suffix and cycle
    if self:isAiming() then
        suffix = suffix .. "_aim"
        cycle = self.ironFireAnimStartCycle
    end
    
    -- Actually play the weapon animation
    self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end

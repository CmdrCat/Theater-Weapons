AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP5A5"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "x"
	killicon.AddFont("cw_mp5", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.87
	
	SWEP.IronsightPos = Vector(-2.36, 5, 0.119)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	
	SWEP.MicroT1Pos = Vector(-2.36, 3, -0.76)
	SWEP.MicroT1Ang = Vector(0, 0, 0)	
		
	SWEP.EoTechPos = Vector(-2.441, 0, -1)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.36, 0, -0.64)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.34, -2.5, -1.04)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)
	
	SWEP.AlternativePos = Vector(0, 1.325, -0.801)
	SWEP.AlternativeAng = Vector(0, 0, 0)
		
	SWEP.ShortDotPos = Vector(-2.32, 5, -0.76)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	

	

	SWEP.AttachmentModelsVM = {
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.087, 1.457), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_eotech"] = { type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "weapon", rel = "", pos = Vector(0.272, 9.942, -11.556), angle = Angle(90, 0, -90), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.238, 2.849, -5.137), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.355, 2.818, -4.783), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_tundra9mm"] = { type = "Model", model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.143, 14.92), angle = Angle(0, 180, 90), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "weapon", rel = "", pos = Vector(-0.331, 2.778, -4.482), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}
	
	SWEP.ForegripOverridePos = {

		["default"] = {},
		
	}
	

	SWEP.LaserPosAdjust = {x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = {p = 2, y = 180, r = 0}
	SWEP.SightWithRail = true
	SWEP.CustomizationMenuScale = 0.012
end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.FrameBGs = { main = 0, sd = 1, regular = 0 } -- Fixed duplicate 'main', added 'regular'
SWEP.HandguardBGs = { main = 3, regular = 0, none = 1 }
SWEP.RailBGs = { main = 2, on = 1, off = 0 }
SWEP.LuaViewmodelRecoil = true
SWEP.AttachmentExclusions = {["too_sdbar_bar"] = {"md_tundra9mm"}}
SWEP.Attachments = {
	[1] = {header = "Sight", offset = {700, -400}, atts = {"md_microt1", "md_eotech", "md_aimpoint", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Barrel", offset = {200, -400}, atts = {"md_tundra9mm"}},
	[3] = {header = "Handguard", offset = {-400, -400}, atts = {"too_sdbar_bar"}},
	["+reload"] = {header = "Ammo", offset = {700, 35}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire         = "fire",
	fire_aim         = "fire_iron",
	fire_last_aim         = "fire",
    reload       = "reload",
    reload_empty = "reload_empty",
    idle         = "idle",
    draw         = "draw"
}

SWEP.Sounds = {
    draw = {
        {time = 0, sound = "CW_FOLEY_MEDIUM"}
    },

    reload = {
		 {time = 0.19, sound = "CW_TOO_MP5_BOLTBACK"},
		 {time = 0.78, sound = "CW_TOO_MP5_MAGGRAB"},
		 {time = 1, sound = "CW_TOO_MP5_MAGOUT"},
		 {time = 1.4, sound = "CW_TOO_MP5_MAGHIT"},
		 {time = 1.48, sound = "CW_TOO_MP5_MAGIN"},
		 {time = 2.15, sound = "CW_TOO_MP5_BOLTREL"},
    },

    reload_empty = {
		{time = 0.19, sound = "CW_TOO_MP5_BOLTBACK"},
		{time = 0.85, sound = "CW_TOO_MP5_MAGOUT_EMPTY"},
		{time = 1.75, sound = "CW_TOO_MP5_MAGHIT_EMPTY"},
		{time = 1.98, sound = "CW_TOO_MP5_MAGIN_EMPTY"},
		{time = 2.49, sound = "CW_TOO_MP5_BOLTSLAP"},
    }
}


SWEP.SpeedDec = 15

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Theater Customs"
SWEP.SubCategory = "Submachine Guns"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/sm/cw2_theater_rfas_mp5a5.mdl"
SWEP.WorldModel		= "models/weapons/w_smg_mp5.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 60 / 800
SWEP.FireSound = "CW_TOO_MP5_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_MP5_FIRE_SUPPRESSED"
SWEP.Recoil = 0.63

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.009
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 37
SWEP.DeployTime = 0.8
SWEP.NearWallDistance = 25

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3.2
SWEP.ReloadTime_Empty = 3.35
SWEP.ReloadHalt = 3.2
SWEP.ReloadHalt_Empty = 3.35

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



SWEP.setMultipleBodygroups = function(self, bodygroups)
    for group, value in pairs(bodygroups) do
        self:setBodygroup(group, value)
    end
end

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 30 * 39.37
self.DamageFallOff = .5
end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G3A3"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "i"
	killicon.AddFont("cw_g3a3", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.EffectiveRange_Orig = 65 * 39.37
	SWEP.DamageFallOff_Orig = .2

	SWEP.MuzzleEffect = "muzzleflash_g3"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 0.6
	
	SWEP.IronsightPos = Vector(-1.612, -1.107, 0.388)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-1.622, -2, -0.505)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-1.622, -1, -0.406)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-1.607, 1.5, -0.173)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-1.606, -0.6, -0.487)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(-1.624, 1, -0.382)
	SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.SG1Pos = Vector(-1.614, 0, -0.51)
	SWEP.SG1Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.ShortDotPos = Vector(-1.601, -1.157, -0.299)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-1.606, -1.107, -1.5), [2] = Vector(0, 0, 0)}}

	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0, up = 0, forward = 0}

	SWEP.M203Pos = Vector(0, -1, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(0.319, 1.325, -1.04)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.M203OffsetCycle_Reload = 0.81
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = {pos = Vector(4.461, 0.308, -2.166), angle = Angle(0, 0, 0)}
	}

	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "G3SG1_Rail", pos = Vector(-0.24, -5.63, -4.604), angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "G3SG1_Rail", pos = Vector(0.266, -11.3, -10.278), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "G3SG1_Rail", pos = Vector(0.02, -0.65, 0.593), angle = Angle(0, 180, 0), size = Vector(0.349, 0.349, 0.349)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "G3SG1", pos = Vector(-3.34, 7.82, -5.904), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "G3SG1", pos = Vector(-2.921, 15.373, -4.996), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "G3SG1_Rail", pos = Vector(-0.324, -5.626, -4.821), angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "G3SG1", pos = Vector(-0.583, 3.305, -1.293), angle = Angle(2.538, -90, 0), size = Vector(1, 1, 1), animated = true},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "G3SG1", pos = Vector(-3.01, 10.85, -1.385), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "G3SG1_Rail", pos = Vector(-0.278, -5.081, -4.053), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "G3SG1", pos = Vector(-3.027, 9.477, -0.247), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)}
	}

	SWEP.ForeGripHoldPos = {
	}
	
	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 

	SWEP.LuaVMRecoilAxisMod = {vert = 0.5, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}
end

SWEP.MuzzleVelocity = 800 -- in meter/s

SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.BipodBGs = {main = 4, on = 1, off = 0}
SWEP.SightBGs = {main = 2, sg1 = 1, none = 0}
SWEP.LuaViewmodelRecoil = true

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -350},  atts = {"md_microt1", "md_eotech", "md_aimpoint", "md_schmidt_shortdot", "md_acog", "md_nightforce_nxs"}},
	[2] = {header = "Barrel", offset = {-300, -300},  atts = {"md_saker"}},
	[3] = {header = "Handguard", offset = {-300, 150}, atts = {"md_foregrip","bg_bipod"}},
	[4] = {header = "Rail", offset = {800, -20}, atts = {"md_anpeq15"}, dependencies = {md_microt1 = true}},
	["+reload"] = {header = "Ammo", offset = {800, 430}, atts = {"am_magnum", "am_matchgrade"}}}

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
		 {time = 0.18, sound = "CW_TOO_L86_MAGSLAP"},
		 {time = 0.51, sound = "CW_TOO_L86_MAGOUT"},
		{time = 2.0, sound = "CW_TOO_L86_MAGHIT"},
		{time = 2.1, sound = "CW_TOO_L86_MAGIN"},
    },

    reload_empty = {
		 {time = 0.18, sound = "CW_TOO_L86_MAGSLAP"},
		{time = 0.51, sound = "CW_TOO_L86_MAGOUT"},
		{time = 2.0, sound = "CW_TOO_L86_MAGHIT"},
		{time = 2.1, sound = "CW_TOO_L86_MAGIN"},
		{time = 2.68, sound = "CW_TOO_L86_BOLTBACK"},
		{time = 2.79, sound = "CW_TOO_L86_BOLTFWD"},

    }
}
SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/rifles/g3a3.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_g3sg1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_G3A3_FIRE"
SWEP.FireSoundSuppressed = "CW_G3A3_FIRE_SUPPRESSED"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.17
SWEP.Shots = 1
SWEP.Damage = 56
SWEP.DeployTime = 0.8
SWEP.NearWallDistance = 40

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 3.05
SWEP.ReloadHalt_Empty = 4.85

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 65 * 39.37
self.DamageFallOff = .2
end


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

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AK-74"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true

	SWEP.IronsightPos = Vector(-3.6, -2.922, 1.12)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.371, -2.59, -0.925)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.4, -3.493, -0.98)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.KobraPos = Vector(-3.641, -4.074, 0.159)
	SWEP.KobraAng = Vector(0, 0, 0)

	
	SWEP.PSOPos = Vector(-2.5, 0.65, -0.101)
	SWEP.PSOAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.412, -4.18, -0.977)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	

	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "b"
	killicon.AddFont("cw_ak74", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.PosBasedMuz = false
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	


	SWEP.AttachmentModelsVM = {
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "ak74_body", pos = Vector(11.609, 0.275, -7.834), adjustment = {min = 9, max = 11.609, axis = "x", inverse = true, inverseDisplay = true}, angle = Angle(0, 180, 0), size = Vector(1, 1, 1)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "ak74_body", pos = Vector(6.6, -0.247, -2.79), adjustment = {min = 4, max = 6.6, axis = "x", inverse = true}, angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak74_body", pos = Vector(4.151, -0.433, -2.721), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_pbs1"] = {model = "models/cw2/attachments/pbs1.mdl", bone = "ak74_body", pos = Vector(-19.57, 0, -0.816), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
		["md_kobra"] = { type = "Model", model = "models/cw2/attachments/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0.479, 1.35, 0.842), angle = Angle(180, 0, -90), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "ak74_body", pos = Vector(5.521, -0.174, -1.107), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak74_body", pos = Vector(4.558, -0.302, -1.67), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "ak74_body", pos = Vector(4.315, -0.288, -1.663), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "ak74_body", pos = Vector(-1.152, -0.083, 3.95), angle = Angle(0, 180, 0), size = Vector(1, 1, 1)},
	}

	SWEP.ShortDotPos = Vector(-2.428, -4.107, -0.721)
	SWEP.ShortDotAng = Vector(0, 0, 0)

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.LuaViewmodelRecoil = true

--SWEP.Attachments = {[1] = {header = "Sight", offset = {300, -50},  atts = {"md_kobra", "md_eotech", "md_aimpoint"}},
--	[2] = {header = "Barrel", offset = {-175, -100}, atts = {"md_pbs1"}},
--	[3] = {header = "Handguard", offset = {-100, 200}, atts = {"md_foregrip"}}}
SWEP.SightWithRail = true
SWEP.RailBGs = { main = 1, on = 1, off = 0 }
SWEP.StockBGs = {main = 1, regular = 0, heavy = 1, foldable = 2}

SWEP.Attachments = {[1] = {header = "Sight", offset = {950, -500},  atts = {"md_kobra", "md_eotech", "md_aimpoint", "md_schmidt_shortdot", "md_pso1", "md_acog", "md_nightforce_nxs"}},
	[2] = {header = "Barrel", offset = {300, -500}, atts = {"md_pbs1"}},
	[3] = {header = "Stock", offset = {700, 500}, atts = {"bg_ak74foldablestock", "bg_ak74heavystock"}},
	["+reload"] = {header = "Ammo", offset = {950, 0}, atts = {"am_magnum", "am_matchgrade"}}}

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
		 {time = 0.31, sound = "CW_TOO_AK74_MAGOUT"},
		{time = 1.6, sound = "CW_TOO_AK74_MAGHIT"},
		{time = 1.78, sound = "CW_TOO_AK74_MAGIN"},
    },

    reload_empty = {
		{time = 0.40, sound = "CW_TOO_AK74_MAGOUT_EMPTY"},
		{time = 1.1, sound = "CW_TOO_AK74_MAGHIT_EMPTY"},
		{time = 1.25, sound = "CW_TOO_AK74_MAGIN_EMPTY"},
		{time = 1.78, sound = "CW_TOO_AK74_BOLTBACK"},
		{time = 1.82, sound = "CW_TOO_AK74_BOLTFWD"},
    }
}


SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Theater Customs"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/ar/cw2_theater_rfas_ak74.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_ak47.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60 / 680
SWEP.FireSound = "CW_TOO_AK74_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_AK74_FIRE_SUPPRESSED"
SWEP.Recoil = 0.9

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 42
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.35
SWEP.ReloadTime_Empty = 1.5
SWEP.ReloadHalt = 2.35
SWEP.ReloadHalt_Empty = 2.6
SWEP.SnapToIdlePostReload = true

	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)

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

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = .4
end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "IMI Desert Eagle"
	SWEP.CSMuzzleFlashes = true
	
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

	SWEP.IronsightPos = Vector(-2.254, 5.913, 0.31)
	SWEP.IronsightAng = Vector(0.1, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.247, -6.5, -0.602)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.88, 1.325, -0.561)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-2.241, -4.728, -1.568), [2] = Vector(0, 0, 0)}}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.BoltBone = "slider"
	SWEP.BoltShootOffset = Vector(-2, 0, 0)
	SWEP.HoldBoltWhileEmpty = true
	SWEP.DontHoldWhenReloading = true
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	SWEP.BoltBonePositionRecoverySpeed = 25
	
	SWEP.AttachmentModelsVM = {
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(3.325, -1.075, 0.209), angle = Angle(90, 0, -90), size = Vector(0.4, 0.4, 0.4)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "weapon", pos = Vector(-6.054, 8.47, -0.035), angle = Angle(0, 1.5, -90), size = Vector(0.85, 0.85, 0.85)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "weapon", pos = Vector(-1.831, 3.892, 0.504), angle = Angle(-90, 0, -90), size = Vector(0.85, 0.85, 0.85)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", pos = Vector(-4.784, -0.408, -1.581), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)}
	}
end

SWEP.ShootWhileProne = true

SWEP.MuzzleVelocity = 470 

SWEP.BarrelBGs = {main = 1, regular = 0, compensator = 1, extended = 2}
SWEP.LuaViewmodelRecoil = true
SWEP.CanRestOnObjects = false

SWEP.Attachments = {[1] = {header = "Sight", offset = {450, -350}, atts = {"md_microt1","md_acog"}},
[2] = {header = "Barrel", offset = {-600, -350}, atts = {"md_saker", "bg_deagle_compensator", "bg_deagle_extendedbarrel"}},
[3] = {header = "Technique", offset = {-200, -400}, atts = {"doi_atow_onehand", "cw_akimbo"}},
[4] = {header = "Conversion", offset = {-100, 200}, atts = {"too_thunderbird_conversion"}},
["+reload"] = {header = "Ammo", offset = {200, 300}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	reload_empty = "reload_2",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_LIGHT"}},

	reload = {[1] = {time = 0.42, sound = "CW_DEAGLE_MAGOUT"},
	[2] = {time = 1.5, sound = "CW_DEAGLE_MAGIN"}},
	
	reload_2 = {[1] = {time = 0.42, sound = "CW_DEAGLE_MAGOUT"},
	[2] = {time = 1.5, sound = "CW_DEAGLE_MAGIN"},
	[3] = {time = 2.36, sound = "CW_DEAGLE_SLIDEBACK"},
	[4] = {time = 2.47, sound = "CW_DEAGLE_SLIDEFORWARD"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.DrawSpeed = 1.5

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/pistols/deagle.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_deagle.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 63
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 AE"

SWEP.FireDelay = 60 / 350
SWEP.FireSound = "CW_DEAGLE_FIRE"
SWEP.FireSoundSuppressed = "CW_DEAGLE_FIRE_SUPPRESSED"
SWEP.Recoil = 2.8

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.32
SWEP.Shots = 1
SWEP.Damage = 79
SWEP.DeployTime = 1
--SWEP.Chamberable = false
SWEP.NearWallDistance = 15

SWEP.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.5 / 1.2 ) 
	end
end

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.89
SWEP.ReloadHalt = 1.89

SWEP.ReloadTime_Empty = 2.9
SWEP.ReloadHalt_Empty = 2.9

function SWEP:IndividualThink()
	self.EffectiveRange = 30 * 39.37
	self.DamageFallOff = .85

	self.bulletCallback = function( att, tr, dmg )
		if tr.HitGroup == HITGROUP_HEAD then
			dmg:ScaleDamage( 1.5 / 2 )
		end
	end

	if self.ActiveAttachments.am_magnum then
		self.EffectiveRange = ((self.EffectiveRange * 1.15))
	end
	if self.ActiveAttachments.am_matchgrade then
		self.DamageFallOff = ((self.DamageFallOff * 0.5))
	end
	if self.ActiveAttachments.am_atow_lowvel then
		self.DamageFallOff = ((self.DamageFallOff * 1.2))
	end
	if self.ActiveAttachments.am_atow_heavy then
		self.EffectiveRange = ((self.EffectiveRange * 1.1))
		self.DamageFallOff = ((self.DamageFallOff * 0.925))
	end
end
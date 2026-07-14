AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Vector"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.EffectiveRange_Orig = 20 *39.37
	SWEP.DamageFallOff_Orig = .65
	
	SWEP.IconLetter = "x"
	killicon.AddFont("cw_mp5", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = -1, z = 2}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0
	
	SWEP.IronsightPos = Vector(-2.747, -4.624, 1.11)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.PronePos = Vector(-7.397, -2.497, -1.551)
	SWEP.ProneAng = Vector(5.618, -49.056, -15.311)

	SWEP.MicroT1Pos = Vector(-2.747, -2.624, 0.5)
	SWEP.MicroT1Ang = Vector(-0.026, 0, 0)	
		
	SWEP.EXPSPos = Vector(-2.75, -5, 0.55)
	SWEP.EXPSAng = Vector(0, 0, 0)

	
	SWEP.BackupSights = {["too_reflex_exps"] = {[1] = Vector(-4.75, 0, 0), [2] = Vector(0, 0, -40)},
	["md_microt1"] = {[1] = Vector(-4.75, 0, 0), [2] = Vector(0, 0, -40)}}

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 3, roll = 1, forward = 1, pitch = 1}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.SprintViewNormals = {x = 1, y = -1, z = 1}

	SWEP.AttachmentModelsVM = {
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(-0.375, -5, -2.05), angle = Angle(0, 0, 0), adjustment = {min = -5.971, max = -5, axis = "y", inverseOffsetCalc = false}, size = Vector(0.699, 0.699, 0.699)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(0.022, -2.2, 3.27), angle = Angle(0, 180, 0), size = Vector(.5, .5, .5)},
		["md_saker"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon", pos = Vector(0, 9.5, 0), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", pos = Vector(-0.15, 3.25, 2.9), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
        ["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -1, 3.05), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.LaserPosAdjust = {x = 0, y = 0, z = 0.25}
	SWEP.LaserAngAdjust = {p = 0, y = 180, r = 0}
	SWEP.SightWithRail = true
	SWEP.CustomizationMenuScale = 0.012
end
-- SWEP.PenMod = 0
SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, k = 2, regular = 0}
SWEP.StockBGs = {main = 1, regular = 0, retractable = 1, none = 2}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.MagBGs = {main = 4, round15 = 0, round30 = 1}
SWEP.LuaViewmodelRecoil = true

SWEP.Attachments = {[1] = {header = "Sight", offset = {-500, -300},  atts = {"md_microt1", "too_reflex_exps" }},
[2] = {header = "Barrel", offset = {800, 200}, atts = {"md_saker"}},
[3] = {header = "Laser", offset = {-500, 200}, atts = {"md_anpeq15"}},
[4] = {header = "Foregrip", offset = {-500, -800}, atts = {"md_foregrip"}},
["+reload"] = {header = "Ammo", offset = {800, -300}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap",}}}

SWEP.Animations = {fire = {"base_fire"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	base_reload = {[1] = {time = .5, sound = "CW_VECTOR_MAGREL"},
	[2] = {time = .8, sound = "CW_VECTOR_MAGOUT"},
	[3] = {time = 1, sound = "CW_VECTOR_RAT"},
	[4] = {time = 2.2, sound = "CW_VECTOR_MAGIN"}},
	
	base_reloadempty = {[1] = {time = 0.5, sound = "CW_VECTOR_MAGREL"},
	[2] = {time = .8, sound = "CW_VECTOR_MAGOUT"},
	[3] = {time = 1, sound = "CW_VECTOR_RAT"},
	[4] = {time = 2.7, sound = "CW_VECTOR_MAGIN"},
	[5] = {time = 3.5, sound = "CW_VECTOR_BOLTREL"}}}

SWEP.SpeedDec = 20

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "2burst", "semi"}
SWEP.BurstCooldownMul = 0
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_tfa_vector.mdl"
SWEP.WorldModel		= "models/weapons/w_tfa_vector.mdl"
SWEP.NearWallEnabled = false

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 33
SWEP.Primary.DefaultClip	= 198
SWEP.Primary.Automatic		= true

SWEP.Primary.Ammo = ".45 ACP"

SWEP.FireDelay = 0.05
SWEP.FireSound = "CW_VECTOR_FIRE"
SWEP.FireSoundSuppressed = "DOITHOM1928_FIRE_SUPPRESSED"
SWEP.Recoil = 0.25

SWEP.HipSpread = 0.15
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0
SWEP.MaxSpreadInc = 0.005
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1.6
SWEP.ReloadTime = 2
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 3.2
SWEP.ReloadHalt_Empty = 4.3

SWEP.UseHands = true

SWEP.Trivia = {text = "Notable for its Kriss Super V mechanism, which reduces muzzle climb", x = 0, y = -750}

SWEP.ForegripOverride = true
SWEP.ForegripParent = "nah"

SWEP.ForegripOverridePos = {
		["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, .3), angle = Angle(0, 0, 15) },
		["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, .40, -.5), angle = Angle(5, 2, -5) },
		["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, -3, -5) },
		["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 6, 0) }}
	

function SWEP:IndividualThink()

	if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end
	
	self.EffectiveRange = 20 * 39.37
	self.DamageFallOff = .65

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
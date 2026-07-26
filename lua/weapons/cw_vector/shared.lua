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
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
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

	SWEP.ENFORPos = Vector(-2.75, -6, 0.5)
    SWEP.ENFORAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.733, -5, 0.36)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.CustomizePos_Orig = Vector(5.488, -1.627, -1.821)
	SWEP.CustomizeAng_Orig = Vector(17.009, 29.971, 16.669)

	SWEP.CustomizePos = Vector(5.488, -1.627, -1.821)
	SWEP.CustomizeAng = Vector(17.009, 29.971, 16.669)

	SWEP.CustomizePos_Akimbo = Vector(0, 0, -7.5)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

	SWEP.MaterialIndexPrimary = {1}
	SWEP.MaterialIndexSecondary = {0, 2, 4, 5, 6, 7}
	
	SWEP.BackupSights = {["too_reflex_exps"] = {[1] = Vector(-4.25, 0, 0.75), [2] = Vector(0, 0, -50)},
	["md_microt1"] = {[1] = Vector(-4.25, 2, 0.75), [2] = Vector(0, 0, -50)},
	["md_acog"] = {[1] = Vector(-2.735, 0, -0.753), [2] = Vector(0, 0.028, 0)}, -- there you go
	["corioenforcer"] = {[1] = Vector(-4.25, -1.25, 0.75), [2] = Vector(0, 0, -50)}}

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 3, roll = 1, forward = 1, pitch = 1}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.SprintViewNormals = {x = 1, y = -1, z = 1}

	SWEP.AttachmentModelsVM = {
		--muzzle
		["md_saker"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon", pos = Vector(0, 10.138, 0.034), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "weapon", rel = "", pos = Vector(-0.05, 12.79, 1.017), angle = Angle(180, 90, -90), size = Vector(1, 1, 1)},
		--foregrip
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(-0.375, -5, -2.05), angle = Angle(0, 0, 0), adjustment = {min = -5.971, max = -5, axis = "y", inverseOffsetCalc = false}, size = Vector(0.699, 0.699, 0.699)},
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "weapon", rel = "", pos = Vector(-0.03, 4.5, 0.155), angle = Angle(0, -90, 0), adjustment = {min = 4.5, max = 5.147, axis = "y", inverseOffsetCalc = false}, size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "weapon", rel = "", pos = Vector(0, 4.5, 0.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		--sight
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(0.022, -2.2, 3.27), angle = Angle(0, 180, 0), adjustment = {min = -2.714, max = -0.547, axis = "y", inverseOffsetCalc = false}, size = Vector(.5, .5, .5)},
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "weapon", rel = "", pos = Vector(0.1, -1.70, 2.65), angle = Angle(0, -90, 0), adjustment = {min = -2.236, max = -0.961, axis = "y", inverseOffsetCalc = false}, size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -1, 3.05), angle = Angle(0, -90, 0), adjustment = {min = -1.986, max = -0.940, axis = "y", inverseOffsetCalc = false}, size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "weapon", pos = Vector(-0.35, -7.5 ,-2.75 ), angle = Angle(0, 0, 0), adjustment = {min = -8.165, max = -7.5, axis = "y", inverseOffsetCalc = false}, size = Vector(1, 1, 1)},
		--laser
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", pos = Vector(-0.15, 2.5, 2.9), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "weapon", rel = "", pos = Vector(0, 2.15, 3), angle = Angle(0, -90, 0), size = Vector(1, 1, 1) },
	}	
     
		
	
	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
    SWEP.GrimlineAngAdjust = Angle(0, 0, 0)
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

SWEP.Attachments = {[1] = {header = "Sight", offset = {-500, -300},  atts = {"md_microt1", "too_reflex_exps", "corioenforcer", "md_acog"}},
[2] = {header = "Muzzle", offset = {800, -300}, atts = {"md_saker", "hard20"}},
[3] = {header = "Laser", offset = {-500, 160}, atts = {"md_anpeq15","ftacgrimline"}},
[4] = {header = "Foregrip", offset = {-500, -750}, atts = {"md_foregrip","ftactiger_r", "bruentiltgrip_r", "cw_akimbo"}},
[5] = {header = "Skins", offset = {800, 160}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
["+reload"] = {header = "Ammo", offset = {800, -750}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap",}}}

SWEP.Trivia = {text = "Notable for its KRISS Super V mechanism, which reduces muzzle climb.", x = -300, y = -850}

SWEP.Animations = {fire = {"base_fire"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.Animations_Akimbo = {fire = {"base_fire"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw",
	fire_right = {"base_fire"},
	reload_right = "base_reload",
	reload_empty_right = "base_reloadempty",
	idle_right = "base_idle",
	draw_right = "base_draw"}
	
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
SWEP.ViewModel_AkimboL = "models/weapons/v_tfa_vector.mdl"
SWEP.ViewModel_AkimboR = "models/weapons/v_tfa_vector.mdl"
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

SWEP.ForegripOverride = true
SWEP.ForegripParent = "nah"

SWEP.BaseArm = "L Clavicle"
SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

SWEP.ForegripOverridePos = {
		["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, .3), angle = Angle(0, 0, 15) },
		["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, .40, -.5), angle = Angle(5, 2, -5) },
		["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, -3, -5) },
		["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 6, 0) },
		["akimbo"] = {
     		["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, -50, 0), angle = Angle(0, 0, 0) }},
		["nah"] = {
   			["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}}
	

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
	if self.ActiveAttachments.cw_akimbo then
		self.ViewModelOffsetPos = Vector(-2, 0, -1)
		self.ViewModelOffsetAng = Angle(0, 0, -30)
		self.ViewModelOffsetPos2 = Vector(2, 0, -1)
		self.ViewModelOffsetAng2 = Angle(0, 0, 30)
	end
end
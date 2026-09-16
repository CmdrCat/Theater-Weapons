AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AKM"
	SWEP.CSMuzzleFlashes = true
	
--	SWEP.CustomizePos = Vector(-20, -13.981, 1.175)
--	SWEP.CustomizeAng = Vector(27.256, -90, -29.239)

	SWEP.IronsightPos = Vector(-3.846, -3.109, 1.1)
	SWEP.IronsightAng = Vector(0.577, 0.079, 0)

	SWEP.RMRPos = Vector(-3.873, -3.109, 0.74)
	SWEP.RMRAng = Vector(0, 0, 0)

	SWEP.POINTPos = Vector(-3.873, -3.109, 0.68)
    SWEP.POINTAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(-3.873, -3.109, 0.598)
	SWEP.ReflexAng = Vector(0, 0, 0)

	SWEP.TrijiconPos = Vector(-3.873, -3.109, 0.46)
	SWEP.TrijiconAng = Vector(0, 0, 0)

	SWEP.KobraPos = Vector(-3.846, -3.109, 0.7)
	SWEP.KobraAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-3.873, -3.109, 0.561)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ROMEO4TPos = Vector(-3.85, -3.109, 0.3)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-3.873, -6.683, 0.351)
	SWEP.AimpointAng = Vector(0, 0, 0)

	SWEP.EXPSPos = Vector(-3.873, -3.109, 0.3)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ENFORPos = Vector(-3.85, -3.109, 0.434)
    SWEP.ENFORAng = Vector(0, 0, 0)

	SWEP.ShortDotPos = Vector(-3.859, -8.905, 0.476)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-3.866, -8.995, 0.229)
	SWEP.ACOGAng = Vector(0, 0, 0)
		
	SWEP.PSOPos = Vector(-3.859, 5, 0.16)
	SWEP.PSOAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-5.5, -2, 2)
	SWEP.TacStanceAng = Vector(0,0,-45)

	SWEP.AlternativePos = Vector(-1, -2, -0.6)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.MagBoneName = "mag"
	
	SWEP.BackupSights = {
		["too_optic_tacstance"] = {[1] = Vector(-3.846, -3.109, 1.1), [2] = Vector(0.577, 0.079, 0)},
		["md_rmr"] = {[1] = Vector(-5.5, -2, 2), [2] = Vector(0,0,-45)},
		["xrkonpoint"] = {[1] = Vector(-5.5, -2, 2), [2] = Vector(0,0,-45)},
		["md_reflex"] = {[1] = Vector(-5.5, -2, 2), [2] = Vector(0,0,-45)},
		["md_trijicon"] = {[1] = Vector(-5.5, -2, 2), [2] = Vector(0,0,-45)},
		["md_kobra"] = {[1] = Vector(-5.5, -2, 2), [2] = Vector(0,0,-45)},
		["md_microt1"] = {[1] = Vector(-5.5, 0.5, 2), [2] = Vector(0,0,-45)},
		["too_reflex_romeo4t"] = {[1] = Vector(-5.5, -2.5, 2), [2] = Vector(0,0,-45)},
		["md_aimpoint"] = {[1] = Vector(-5.5, -0.5, 2), [2] = Vector(0,0,-45)},
		["too_reflex_exps"] = {[1] = Vector(-5.5, -2, 2), [2] = Vector(0,0,-45)},
		["corioenforcer"] = {[1] = Vector(-5.5, -2, 2), [2] = Vector(0,0,-45)},
		["md_schmidt_shortdot"] = {[1] = Vector(-5.5, 0, 2), [2] = Vector(0,0,-45)},
		["md_acog"] = {Vector(-3.862, 0, -0.676), Vector(0, 0, 0)},
		["md_pso1"] = {[1] = Vector(-5.5, 0, 2), [2] = Vector(0,0,-45)},
	}

	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/akm")
	killicon.Add("cw_akm_official", "vgui/killicons/akm", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 45 * 39.37
	SWEP.DamageFallOff_Orig = .4

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.ShellScale = 0.69
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = -1, z = 1}
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.52
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.76
	
	SWEP.MaterialIndexPrimary = {2}
	SWEP.BoltBone = "bolt"
	SWEP.BoltShootOffset = Vector(-4.81, 0, 0)
	SWEP.OffsetBoltOnBipodShoot = true

	SWEP.NXSPos = Vector(-2.442, -2.941, -0.823)
	SWEP.NXSAng = Vector(0, -0.429, 0)

	SWEP.AttachmentModelsVM = {
		--Muzzles
		["md_pbs1"] = { type = "Model", model = "models/cw2/attachments/pbs1.mdl", bone = "body", rel = "", pos = Vector(0, 21, -0.85), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "body", rel = "", pos = Vector(-0.031, 21.5, -0.635), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "body", rel = "", pos = Vector(-0.031, 23.5, 0.25), angle = Angle(0, -90, 90), size = Vector(1, 1, 1)},
		--Optics
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "body", pos = Vector(-0.302, -1.737, -2.55), angle = Angle(0, -90, 0), adjustment = {min = -2.22, max = -1.45, axis = "y", inverseOffsetCalc = true}, size = Vector(0.8, 0.8, 0.8)},
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "body", rel = "", pos = Vector(-0.01, 2.64, 2.069), angle = Angle(0, -90, 0), adjustment = {min = 2.25, max = 2.86, axis = "y", inverseOffsetCalc = true}, size = Vector(0.72, 0.72, 0.72), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "body", rel = "", pos = Vector(-0.02, 4.76, 2.2), angle = Angle(0, 0, 0), adjustment = {min = 4.54, max = 4.76, axis = "y", inverseOffsetCalc = true}, size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "body", rel = "", pos = Vector(0, 4.537, -0.219), angle = Angle(0, 0, 0), size = Vector(1.899, 1.899, 1.899)},
		["md_kobra"] = { type = "Model", model = "models/cw2/attachments/kobra.mdl", bone = "body", rel = "", pos = Vector(0.46, -1.23, -1.85), angle = Angle(0, 180, 0), size = Vector(0.59, 0.59, 0.59), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "body", rel = "", pos = Vector(0, 2.501, 2.126), angle = Angle(0, 180, 0), adjustment = {min = 2.1, max = 3, axis = "y", inverseOffsetCalc = true}, size = Vector(0.34, 0.34, 0.34)},
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "body", rel = "", pos = Vector(0, 2.6, 1.983), angle = Angle(0, -90, 0), adjustment = {min = 2.23, max = 2.75, axis = "y", inverseOffsetCalc = true}, size = Vector(0.7, 0.7, 0.7)},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "body", rel = "", pos = Vector(-0.232, -3.06, -3.096), angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "body", rel = "", pos = Vector(0, 3, 1.99), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "body", rel = "", pos = Vector(0.07, 2.791, 1.791), angle = Angle(0, -90, 0), adjustment = {min = 2.5, max = 2.791, axis = "y", inverseOffsetCalc = true}, size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "body", rel = "", pos = Vector(-0.292, -2.12, -2.57), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "body", rel = "", pos = Vector(-0.297, -2.15, -2.57), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "body", pos = Vector(-0.165, -5.090, -1.342), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85)},
		--Underbarrels
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "body", rel = "", pos = Vector(0, 7.328, -0.41), angle = Angle(0, -90, 0), size = Vector(0.932, 0.932, 0.932), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "body", rel = "", pos = Vector(0, 7.322, -0.63), angle = Angle(0, -90, 0), size = Vector(0.932, 0.932, 0.932), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "body", rel = "", pos = Vector(-0.385, -3.379, -2.883), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "body", rel = "", pos = Vector(0.05, 8.940, -1.282), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		--Magazines
		["md_ak_556_conv"] = { type = "Model", model = "models/gmod4phun/usgimag.mdl", bone = "mag", rel = "", pos = Vector(0, -0.25, 1.5), angle = Angle(0, 0, 0), size = Vector(0.625, 0.625, 0.625), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_uecw_emag"] = { type = "Model", model = "models/gmod4phun/emag.mdl", bone = "mag", rel = "", pos = Vector(0, -0.3, 0.75), angle = Angle(0, 0, 0), size = Vector(0.625, 0.625, 0.625), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_uecw_60rnd"] = { type = "Model", model = "models/gmod4phun/60rndmag.mdl", bone = "mag", rel = "", pos = Vector(0, 1.39, 1.3), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_tcw_pmag"] = { type = "Model", model = "models/gmod4phun/pmag30.mdl", bone = "mag", rel = "", pos = Vector(0, -0.096, -0.405), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}

	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 83.181, 0) },
		["Bip01 L Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, 34.194, 0) },
		["Bip01 L UpperArm"] = {pos = Vector(0.907, -0.471, -2.847), angle = Angle(0, 0, 0) },
		["Bip01 L Finger31"] = {pos = Vector(0, 0, 0), angle = Angle(0, 53.886, 0) },
		["Bip01 L Finger12"] = {pos = Vector(0, 0, 0), angle = Angle(0, 21.756, 0) },
		["Bip01 L ForeTwist"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 44.928) },
		["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(11.442, 0, 0) },
		["Bip01 L Forearm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 72.1) },
		["Bip01 L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(-7.89, 53.339, 0) },
		["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, 67.512, 0) },
		["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(13.019, 30.686, 0) },
		["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(0, 33.571, -11.86) }
	}

	SWEP.ForegripOverridePos = {
		["default"] = {},
		
		["bruentiltgrip_r"] = {
			["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 83.181, 0) },
			["Bip01 L Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, 34.194, 0) },
			["Bip01 L UpperArm"] = {pos = Vector(0.907, -0.471, -2.847), angle = Angle(0, 0, 0) },
			["Bip01 L Finger31"] = {pos = Vector(0, 0, 0), angle = Angle(0, 53.886, 0) },
			["Bip01 L Finger12"] = {pos = Vector(0, 0, 0), angle = Angle(0, 21.756, 0) },
			["Bip01 L ForeTwist"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 44.928) },
			["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(11.442, 0, 0) },
			["Bip01 L Forearm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 72.1) },
			["Bip01 L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(-7.89, 53.339, 0) },
			["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, 67.512, 0) },
			["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(13.019, 30.686, 0) },
			["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(0, 33.571, -11.86) }
		}}
		
	--SWEP.PSO1AxisAlign = {right = 0, up = 0.4, forward = -90}
	--SWEP.SchmidtShortDotAxisAlign = {right = 0, up = -0.4, forward = 0}
	--SWEP.ACOGAxisAlign = {right = 0, up = -0.4, forward = 0}
end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "The most common gun in the world, found in the hands of modern militaries and insurgents alike.", x = 0, y = -600}

SWEP.Attachments = {
	{header = "Sight", offset = {0, -500},  atts = {"md_rmr", "xrkonpoint", "md_reflex", "md_trijicon", "md_kobra", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "too_reflex_exps", "corioenforcer", "md_schmidt_shortdot", "md_acog", "md_pso1"}},
	{header = "Muzzle", offset = {-600, -500}, atts = {"md_pbs1", "md_csgo_silencer_rifle", "hard20"}},
	{header = "Handguard", offset = {-600, 100}, atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_bipod"}},
	{header = "Signature Attachment", offset = {550, 500}, atts = {"md_ak_556_conv"}},
	{header = "Magazines", offset = {-400, 600}, atts = {"md_uecw_emag", "md_uecw_60rnd", "md_tcw_pmag"}, dependencies = {md_ak_556_conv = true}},
	{header = "Skins", offset = {1200, 350}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
	["+use"] = {header = "Sight", offset = {1550, -500},  atts = {"too_optic_category_reflex", "too_optic_category_magnified", "too_optic_tacstance"}},
	["+reload"] = {header = "Ammo", offset = {950, -150}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.AttachmentDependencies = {["md_rmr"] = {"too_optic_category_reflex"},
	["xrkonpoint"] = {"too_optic_category_reflex"},
	["md_reflex"] = {"too_optic_category_reflex"},
	["md_trijicon"] = {"too_optic_category_reflex"},
	["md_kobra"] = {"too_optic_category_reflex"},
	["md_microt1"] = {"too_optic_category_reflex"},
	["too_reflex_romeo4t"] = {"too_optic_category_reflex"},
	["md_aimpoint"] = {"too_optic_category_reflex"},
	["too_reflex_exps"] = {"too_optic_category_reflex"},
	["corioenforcer"] = {"too_optic_category_reflex"},

	["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
	["md_acog"] = {"too_optic_category_magnified"},
	["md_pso1"] = {"too_optic_category_magnified"}}

SWEP.AttachmentExclusions = {
	["am_atow_lowvel"] = {"md_ak_556_conv"}}

SWEP.Animations = {fire = {"ak47_fire1", "ak47_fire2", "ak47_fire3"},
	reload = "ak47_reload",
	idle = "ak47_idle",
	draw = "ak47_draw"}
	
SWEP.Sounds = {	
	draw = {
		{time = 0, sound = "CW_FOLEY_MEDIUM"}
	},
	ak47_reload = {
		{time = 0.05, sound = "CW_FOLEY_MEDIUM"},
		{time = 0.3, sound = "CW_AKM_OFFICIAL_MAGOUT"},
		{time = 0.35, sound = "CW_AKM_OFFICIAL_MAGRELEASE"},
		{time = 0.8, sound = "CW_AKM_OFFICIAL_CLOTH"},
		{time = 1.15, sound = "CW_AKM_OFFICIAL_MAGIN"},
		{time = 1.92, sound = "CW_AKM_OFFICIAL_BOLTPULL"},
		{time = 2.08, sound = "CW_AKM_OFFICIAL_BOLTRELEASE"},
		{time = 2.2, sound = "CW_FOLEY_MEDIUM"}
	}
}

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/rifles/akm_official_v.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_ak47.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.Secondary.DefaultClip	= 90
SWEP.Secondary.Ammo         = "5.56x45MM"

SWEP.FireDelay = 60/600
SWEP.FireSound = "CW_AKM_OFFICIAL_FIRE"
SWEP.FireSoundSuppressed = "CW_AKM_OFFICIAL_FIRE_SUPPRESSED"
SWEP.Recoil = 1.2

SWEP.HipSpread = 0.1
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.6
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 46
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 0.85
SWEP.ReloadTime = 1.65
SWEP.ReloadTime_Empty = 2.1
SWEP.ReloadHalt = 1.65
SWEP.ReloadHalt_Empty = 2.6
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 45 * 39.37
self.DamageFallOff = .4
if self.ActiveAttachments.md_ak_556_conv then
	self.EffectiveRange = ((self.EffectiveRange + 5 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - 0.1))
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

function SWEP:Holster(wep)
	-- can't switch if neither the weapon we want to switch to or the wep we're trying to switch to are not valid
	if not IsValid(wep) and not IsValid(self.SwitchWep) then
		self.SwitchWep = nil
		return false
	end
	
	local CT = CurTime()
	
	-- can't holster if we have a global delay on the weapon
	if CT < self.GlobalDelay or CT < self.HolsterWait then
		self.dt.HolsterDelay = CurTime() + self.HolsterTime
		self.dt.State = CW_HOLSTER_START
		self.dt.HolsterDelay = 0
	end
	
	if self.dt.HolsterDelay ~= 0 and CT < self.dt.HolsterDelay then
		return false
	end
	
	-- can't holster if there are sequenced actions
	if #self._activeSequences > 0 then
		return false
	end
	
	if self.ReloadDelay then
		self.dt.HolsterDelay = CurTime() + self.HolsterTime
		self.dt.State = CW_HOLSTER_START
		self.dt.HolsterDelay = 0
	end
	
	if self.dt.State ~= CW_HOLSTER_START then
		self.dt.HolsterDelay = CurTime() + self.HolsterTime
	end
	
	self.dt.State = CW_HOLSTER_START
	
	-- if holster sequence is over, let us select the desired weapon
	if self.SwitchWep and self.dt.State == CW_HOLSTER_START and CurTime() > self.dt.HolsterDelay then
		self.dt.State = CW_IDLE
		self.dt.HolsterDelay = 0
		
		return true
	end
	
	-- if it isn't, make preparations for it
	self.ShotgunReloadState = 0
	self.ReloadDelay = nil
	
	if self:filterPrediction() then
		if self.holsterSound then -- quick'n'dirty prediction fix
			self:EmitSound("CW_HOLSTER", 70, 100)
			self.holsterSound = false
			
			if IsFirstTimePredicted() then
				if self.holsterAnimFunc then
					self:holsterAnimFunc()
				else
					if self.Animations.holster then
						self:sendWeaponAnim("holster")
					end
				end
			end
		end
	end
	
	self.SwitchWep = wep
	self.SuppressTime = nil
end

local simpleTextColor = Color(255, 210, 0, 255)
local mod = 25

function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)
	if self.SelectIcon then
		surface.SetTexture(self.SelectIcon)
		
		wide = wide - mod
		
		x = x + (mod / 2)
		y = y + (mod / 4) + (wide / 8)
		
		surface.SetDrawColor(255, 255, 255, alpha)
		
		surface.DrawTexturedRect(x, y, wide, (wide / 2))
	else
		simpleTextColor.a = alpha
		draw.SimpleText(self.IconLetter, self.SelectFont, x + wide / 2, y + tall * 0.2, simpleTextColor, TEXT_ALIGN_CENTER)
	end
end
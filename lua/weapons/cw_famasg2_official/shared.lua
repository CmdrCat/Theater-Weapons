AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "FAMAS G2"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.TelescopeSkipRotate = false
	
	SWEP.IronsightPos = Vector(-2.932, -3, 0.046)
	SWEP.IronsightAng = Vector(1.556, -0.886, 2.65)
	
	SWEP.RMRPos = Vector(-2.78, -3, -1.15)
	SWEP.RMRAng = Vector(0, 0, 2.65)

	SWEP.POINTPos = Vector(-2.78, -3, -1.18)
    SWEP.POINTAng = Vector(0, 0, 2.65)

	SWEP.ReflexPos = Vector(-2.78, -3, -1.333)
    SWEP.ReflexAng = Vector(0, 0, 2.65)
	
	SWEP.CmorePos = Vector(-2.75, -3, -1.446)
	SWEP.CmoreAng = Vector(0, 0, 2.65)
	
	SWEP.TrijiconPos = Vector(-2.71, -3, -1.45)
	SWEP.TrijiconAng = Vector(0, 0, 2.65)

	SWEP.MicroT1Pos = Vector(-2.911, 0, -1.441)
	SWEP.MicroT1Ang = Vector(0.61, -0.85, 2.65)	

	SWEP.ROMEO4TPos = Vector(-2.77, -3, -1.6)
	SWEP.ROMEO4TAng = Vector(0, 0, 2.65)
	
	SWEP.AimpointPos = Vector(-2.863, -3, -1.663)
	SWEP.AimpointAng = Vector(0.58, -0.77, 2.65)

	SWEP.EXPSPos = Vector(-2.77, -3, -1.56)
	SWEP.EXPSAng = Vector(0, 0, 2.65)

	SWEP.ENFORPos = Vector(-2.78, -3, -1.440)
    SWEP.ENFORAng = Vector(0, 0, 2.65)

	SWEP.ShortDotPos = Vector(-2.843, -3, -1.525)
	SWEP.ShortDotAng = Vector(1.478, -0.789, 2.65)

	SWEP.ELCANPos = Vector(-2.796, -2.5, -1.7)
	SWEP.ELCANAng = Vector(0, 0, 2.65)
	
	SWEP.ACOGPos = Vector(-2.796, -2.5, -1.795)
	SWEP.ACOGAng = Vector(0.46, -0.179, 2.65)

	SWEP.ThermalPos = Vector(-2.796, -2.5, -1.7)
	SWEP.ThermalAng = Vector(0, 0, 2.65)

	SWEP.NXSPos = Vector(-2.864, -1, -1.74)
    SWEP.NXSAng = Vector(0, 0, 2.65)
	
	SWEP.SprintPos = Vector(1.786, 0, -2)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.BackupSights = {["md_rmr"] = {[1] = Vector(-4, 2, 0), [2] = Vector(0,0,-30)},
	["xrkonpoint"] = {[1] = Vector(-4, 2, 0), [2] = Vector(0,0,-30)},
	["md_reflex"] = {[1] = Vector(-4, 2, 0), [2] = Vector(0,0,-30)},
	["md_cmore"] = {[1] = Vector(-4, 2, 0), [2] = Vector(0,0,-30)},
	["md_trijicon"] = {[1] = Vector(-4, 2, 0), [2] = Vector(0,0,-30)},
	["md_microt1"] = {[1] = Vector(-4, 5, 0), [2] = Vector(0,0,-30)},
	["too_reflex_romeo4t"] = {[1] = Vector(-4, 1, 0), [2] = Vector(0,0,-30)},
	["md_aimpoint"] = {[1] = Vector(-4, 3, 0), [2] = Vector(0,0,-30)},
	["too_reflex_exps"] = {[1] = Vector(-4, 2, 0), [2] = Vector(0,0,-30)},
	["corioenforcer"] = {[1] = Vector(-4, 1, 0), [2] = Vector(0,0,-30)},
	["md_schmidt_shortdot"] = {[1] = Vector(-4, 5, 0), [2] = Vector(0,0,-30)},
	["md_elcan"] = {[1] = Vector(-2.816, -3, -2.476), [2] = Vector(0.457, -1, 2.65)},
	["md_acog"] = {[1] = Vector(-2.85, 0, -2.717), [2] = Vector(0.3, -0.93, 2.65)},
	["md_nightforce_nxs"] = {[1] = Vector(-4, 4, 0), [2] = Vector(0,0,-30)}}
	
	SWEP.AlternativePos = Vector(-0.8, 0, -0.8)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.012
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/g2 famas")
	killicon.Add("cw_famasg2_official", "vgui/killicons/g2 famas", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 50 * 39.37
	SWEP.DamageFallOff_Orig = .45

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3, y = -2, z = -1}
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.85
	
	SWEP.magBoneName = {"magazine", "bulletq"}

	SWEP.MagBoneName = "magazine"

	SWEP.SchmidtShortDotAxisAlignNew = {right = 0, up = 0, forward = -2.65}
	SWEP.ACOGAxisAlignNew = {right = 0, up = 0, forward = -2.65}

	SWEP.GrimlinePosAdjust = Vector(0.5, 0, 0.3)
	SWEP.GrimlineAngAdjust = Angle(0, -1, 0) 

	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(-0.5, 180 - 0.6, -2.65) 
	
	SWEP.AttachmentModelsVM = {
		--Optics
		["md_rail"] = {model = "models/wystan/attachments/rail.mdl", bone = "gun", pos = Vector(-0.245, 1.501, 2.469), angle = Angle(0, -90, 0), size = Vector(1.034, 1.034, 1.034)},
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "gun", pos = Vector(-0.301, -3.376, -0.227), angle = Angle(0, -90, 0), size = Vector(0.81, 0.81, 0.81)},
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "gun", rel = "", pos = Vector(-0.005, 1.218, 4.41), angle = Angle(0, -90, 0), size = Vector(0.73, 0.73, 0.73), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "gun", rel = "", pos = Vector(-0.017, 3.473, 4.58), angle = Angle(0, 0, 0), size = Vector(0.62, 0.62, 0.62), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "gun", rel = "", pos = Vector(-0.002, 1.812, 4.36), angle = Angle(0, 0, 0), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "gun", rel = "", pos = Vector(0.035, 3.498, 2.1), angle = Angle(0, 0, 0), size = Vector(1.95, 1.95, 1.95), color = Color(255, 255, 255, 255)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "gun", pos = Vector(0.006, 0.586, 4.493), adjustment = {min = 0.586, max = 4.245, axis = "y", inverseOffsetCalc = true}, angle = Angle(0, 180, 0), size = Vector(0.347, 0.347, 0.347)},
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "gun", rel = "", pos = Vector(0, 0.644, 4.362), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "gun", pos = Vector(-0.253, -4.612, -0.678), adjustment = {min = -4.612, max = -2.086, axis = "y", inverseOffsetCalc = true}, angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "gun", rel = "", pos = Vector(0, 1.829, 4.36), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "gun", rel = "", pos = Vector(0.06, 1.271, 4.167), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "gun", pos = Vector(-0.265, -2.544, 0.101), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "gun", rel = "", pos = Vector(-0.27, -2.884, 0.147), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "gun", pos = Vector(-0.301, -4, -0.334), angle = Angle(0, 0, 0), size = Vector(0.829, 0.829, 0.829)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "gun", rel = "", pos = Vector(-0.27, -2.884, 0.147), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "gun", rel = "", pos = Vector(-0.135, 2.117, 5.55), angle = Angle(0, -90, 0), size = Vector(1.1, 1.1, 1.1)},
		--Muzzles
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "gun", pos = Vector(-0.019, 1.91, -0.249), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "gun", rel = "", pos = Vector(-0.019, 13.93, 0.35), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "gun", rel = "", pos = Vector(-0.019, 15.59, 1.22), angle = Angle(0, -90, 90), size = Vector(0.9, 0.9, 0.9)},
		--Handguards
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "gun", rel = "", pos = Vector(0, 5.05, 0.43), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "gun", rel = "", pos = Vector(0, 5.969, 0.557), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "gun", pos = Vector(-0.403, -5.182, -1.742), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "gun", pos = Vector(0.076, 6.361, -0.06), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		--Lasers
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "gun", rel = "", pos = Vector(0, 5.6, 4.36), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "gun", pos = Vector(-0.123, 5.447, 4.297), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
		--Magazines
		["md_uecw_emag"] = { type = "Model", model = "models/gmod4phun/emag.mdl", bone = "magazine", rel = "", pos = Vector(0, -0.27, 1.079), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_uecw_60rnd"] = { type = "Model", model = "models/gmod4phun/60rndmag.mdl", bone = "magazine", rel = "", pos = Vector(0, 1.405, 1.8), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_cmag_556_official"] = {model = "models/wystan/Cmag.mdl", bone = "magazine", pos = Vector(-0.182, -3.918, 1.111), angle = Angle(0, -90, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_tcw_pmag"] = { type = "Model", model = "models/gmod4phun/pmag30.mdl", bone = "magazine", rel = "", pos = Vector(0, -0.1, 0.626), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.ForeGripHoldPos = {
		["Bone07"] = {pos = Vector(0, 0, 0), angle = Angle(30.129, 0, 0) },
		["Bone02"] = {pos = Vector(0, 0, 0), angle = Angle(-12.506, 0, 0) },
		["Bone09"] = {pos = Vector(0, 0, 0), angle = Angle(87.529, 0, -10.704) },
		["Bone03"] = {pos = Vector(0, 0, 0), angle = Angle(7.043, 0, 0) },
		["Bone_L_LowerThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(86.033, 0, 0) },
		["Bone_L_LowerArm01"] = {pos = Vector(-0.403, 2.645, -0.38), angle = Angle(-1.601, 0, 75.903) },
		["Bone05"] = {pos = Vector(0, 0, 0), angle = Angle(67.432, 0.662, -11.282) },
		["Bone13"] = {pos = Vector(0, 0, 0), angle = Angle(80.552, -4.981, -15.509) },
		["Bone_L_MiddleThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(21.812, 0, 0) },
		["Bone15"] = {pos = Vector(0, 0, 0), angle = Angle(30.725, 9.206, 0) },
		["Bone_L_UpperThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(5.41, -10.047, -6.314) },
		["Bone01"] = {pos = Vector(0, 0, 0), angle = Angle(81.065, 0, -7.411) },
		["Bone_L_Hand01"] = {pos = Vector(0, 0, 0), angle = Angle(22.538, 0, 10.763) },
		["Bone06"] = {pos = Vector(0, 0, 0), angle = Angle(-34.194, 0, 0) },
		["Bone10"] = {pos = Vector(0, 0, 0), angle = Angle(-83.87, 0, 0) },
		["Bone14"] = {pos = Vector(0, 0, 0), angle = Angle(-73.589, -4.473, 0) },
		["Bone11"] = {pos = Vector(0, 0, 0), angle = Angle(58.02, 0, 0) }
	}
end

	SWEP.ForegripOverridePos = {
		["default"] = {},
		
		["bruentiltgrip_r"] = {
			["Bone07"] = {pos = Vector(0, 0, 0), angle = Angle(30.129, 0, 0) },
			["Bone02"] = {pos = Vector(0, 0, 0), angle = Angle(-12.506, 0, 0) },
			["Bone09"] = {pos = Vector(0, 0, 0), angle = Angle(87.529, 0, -10.704) },
			["Bone03"] = {pos = Vector(0, 0, 0), angle = Angle(7.043, 0, 0) },
			["Bone_L_LowerThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(86.033, 0, 0) },
			["Bone_L_LowerArm01"] = {pos = Vector(-0.403, 2.645, -0.38), angle = Angle(-1.601, 0, 75.903) },
			["Bone05"] = {pos = Vector(0, 0, 0), angle = Angle(67.432, 0.662, -11.282) },
			["Bone13"] = {pos = Vector(0, 0, 0), angle = Angle(80.552, -4.981, -15.509) },
			["Bone_L_MiddleThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(21.812, 0, 0) },
			["Bone15"] = {pos = Vector(0, 0, 0), angle = Angle(30.725, 9.206, 0) },
			["Bone_L_UpperThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(5.41, -10.047, -6.314) },
			["Bone01"] = {pos = Vector(0, 0, 0), angle = Angle(81.065, 0, -7.411) },
			["Bone_L_Hand01"] = {pos = Vector(0, 0, 0), angle = Angle(22.538, 0, 10.763) },
			["Bone06"] = {pos = Vector(0, 0, 0), angle = Angle(-34.194, 0, 0) },
			["Bone10"] = {pos = Vector(0, 0, 0), angle = Angle(-83.87, 0, 0) },
			["Bone14"] = {pos = Vector(0, 0, 0), angle = Angle(-73.589, -4.473, 0) },
			["Bone11"] = {pos = Vector(0, 0, 0), angle = Angle(58.02, 0, 0) }
		}}

SWEP.MuzzleVelocity = 925 -- in meter/s

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "A French bullpup assault rifle with a high fire rate.", x = -100, y = -700}

SWEP.BarrelBGs = {main = 2, rpk = 1, short = 4, regular = 0}
SWEP.StockBGs = {main = 1, regular = 0, heavy = 1, foldable = 2}
SWEP.ReceiverBGs = {main = 3, rpk = 1, regular = 0}
SWEP.MagBGs = {main = 4, regular = 0, rpk = 1}

SWEP.Attachments = {[1] = {header = "Sight", offset = {-100, -600},  atts = {"md_rmr", "xrkonpoint", "md_reflex", "md_cmore", "md_trijicon", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "too_reflex_exps", "corioenforcer", "md_schmidt_shortdot", "md_elcan", "md_acog", "md_thermal", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-950, -250}, atts = {"md_saker", "md_csgo_silencer_rifle", "hard20"}},
	[3] = {header = "Handguard", offset = {-650, 200}, atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_bipod"}},
	[4] = {header = "Laser", offset = {-900, -700}, atts = {"ftacgrimline", "md_anpeq15"}, dependencies = {md_rmr = true, xrkonpoint = true, md_reflex = true, md_cmore = true, md_trijicon = true, md_microt1 = true, too_reflex_romeo4t = true, md_aimpoint = true, too_reflex_exps = true, corioenforcer = true, md_schmidt_shortdot = true, md_elcan = true, md_acog = true, md_thermal = true, md_nightforce_nxs = true}},
	[5] = {header = "Magazine", offset = {600, 300}, atts = {"md_uecw_emag", "md_uecw_60rnd", "md_cmag_556_official", "md_tcw_pmag"}},
	["+use"] = {header = "Sight", offset = {1450, -600},  atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
	["+reload"] = {header = "Ammo", offset = {850, -150}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.AttachmentDependencies = {["md_rmr"] = {"too_optic_category_reflex"},
	["xrkonpoint"] = {"too_optic_category_reflex"},
	["md_reflex"] = {"too_optic_category_reflex"},
	["md_cmore"] = {"too_optic_category_reflex"},
	["md_trijicon"] = {"too_optic_category_reflex"},
	["md_microt1"] = {"too_optic_category_reflex"},
	["too_reflex_romeo4t"] = {"too_optic_category_reflex"},
	["md_aimpoint"] = {"too_optic_category_reflex"},
	["too_reflex_exps"] = {"too_optic_category_reflex"},
	["corioenforcer"] = {"too_optic_category_reflex"},

	["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
	["md_elcan"] = {"too_optic_category_magnified"},
	["md_acog"] = {"too_optic_category_magnified"},
	["md_thermal"] = {"too_optic_category_magnified"},
	["md_nightforce_nxs"] = {"too_optic_category_magnified"}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {	draw = {{time = 0, sound = "CW_FAMASG2_CLOTH"}},

	reload = {[1] = {time = 0.65, sound = "CW_FAMASG2_MAGOUT"},
	[2] = {time = 1.6, sound = "CW_SVD_OFFICIAL_MAGIN_PARTIAL"},
	[3] = {time = 1.9, sound = "CW_FAMASG2_MAGIN1"},
	[4] = {time = 2.5, sound = "CW_FAMASG2_FOREARM"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Snark"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/rifles/v_famasg2.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_famas.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 1100
SWEP.FireSound = "CW_FAMASG2_FIRE"
SWEP.FireSoundSuppressed = "CW_FAMASG2_SUPPRESSED"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.RecoilToSpread = 0.7
SWEP.BurstRecoilMul = 0.7
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1.0
SWEP.ReloadTime = 2.23
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 2.23
SWEP.ReloadHalt_Empty = 3.5
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = .45
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
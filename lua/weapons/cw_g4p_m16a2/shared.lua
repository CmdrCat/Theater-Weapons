if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M16A2"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/m16a4")
	killicon.Add("cw_g4p_m16a2", "vgui/killicons/m16a4", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 50 * 39.37
	SWEP.DamageFallOff_Orig = .25

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
--	SWEP.MuzzleAtachment = 1
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 1, y = 0, z = 3}
	
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.7
	SWEP.ForeGripOffsetCycle_Reload_Empty = 1
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(3.894, -4.755, 1.911)
	SWEP.IronsightAng = Vector(-0.138, 0.019, 0)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)

	SWEP.RMRPos = Vector(3.894, -2.401, 1.09)
	SWEP.RMRAng = Vector(0, 0, 0)
	
	SWEP.POINTPos = Vector(3.896, -2.401, 1.05)
    SWEP.POINTAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(3.894, -2.401, 0.962)
	SWEP.ReflexAng = Vector(0, 0, 0)

	SWEP.CmorePos = Vector(3.894, -2.401, 0.82)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.TrijiconPos = Vector(3.867, -2.401, 0.847)
	SWEP.TrijiconAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(3.905, -2.401, 0.97)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ROMEO4TPos = Vector(3.89, -2.401, 0.733)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(3.920, -1.076, 0.77)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.EXPSPos = Vector(3.898, -2.401, 0.809)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ENFORPos = Vector(3.894, -2.401, 0.855)
    SWEP.ENFORAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(3.897, -6.5, 0.902)
    SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(3.886, -6.5, 0.79)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(3.898, -6.5, 0.68)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	--SWEP.CSGOACOGPos = Vector(3.894, -2, 0.705)
	--SWEP.CSGOACOGAng = Vector(0, 0, 0)
	
	SWEP.ThermalPos = Vector(3.886, -6.5, 0.79)
	SWEP.ThermalAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(3.917, -6.5, 0.767)
    SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.CustomizePos = Vector(-13.507, -6.981, 1.175)
	SWEP.CustomizeAng = Vector(27.256, -50.713, -29.239)
	
	SWEP.SprintPos = Vector(-3.401, -2.201, 1.399)
	SWEP.SprintAng = Vector(-15.801, -34.401, 0)
	
	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {
	["md_rmr"] = {[1] = Vector(6, 5, 2), [2] = Vector(0,0,30)},
	["xrkonpoint"] = {[1] = Vector(6, 5, 2), [2] = Vector(0,0,30)},
	["md_reflex"] = {[1] = Vector(6, 5, 2), [2] = Vector(0,0,30)},
	["md_cmore"] = {[1] = Vector(6, 5, 2), [2] = Vector(0,0,30)},
	["md_trijicon"] = {[1] = Vector(6, 5, 2), [2] = Vector(0,0,30)},
	["md_microt1"] = {[1] = Vector(6, 10, 2), [2] = Vector(0,0,30)},
	["too_reflex_romeo4t"] = {[1] = Vector(6, 4, 2), [2] = Vector(0,0,30)},
	["md_aimpoint"] = {[1] = Vector(6, 8, 2), [2] = Vector(0,0,30)},
	["too_reflex_exps"] = {[1] = Vector(6, 5, 2), [2] = Vector(0,0,30)},
	["corioenforcer"] = {[1] = Vector(6, 4, 2), [2] = Vector(0,0,30)},
	["md_schmidt_shortdot"] = {[1] = Vector(6, 9, 2), [2] = Vector(0,0,30)},
	["md_elcan"] = {[1] = Vector(3.886, 0, 0.29), [2] = Vector(-0.1, 0, 0)},
	["md_acog_fixed"] = {[1] = Vector(3.897, 0, -0.027), [2] = Vector(0, 0, 0)},
	["md_nightforce_nxs"] = {[1] = Vector(6, 9, 2), [2] = Vector(0,0,30)}
	}

	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0.04, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		--Optics
		["md_rail"] = { type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "Body", rel = "", pos = Vector(0.142, 1.98, -2.52), angle = Angle(90, 0, 90), size = Vector(0.819, 0.819, 0.819)},
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "Body", pos = Vector(0.189, -0.204, -6.42), angle = Angle(90, 0, 90), size = Vector(0.65, 0.65, 0.65)},
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "Body", rel = "", pos = Vector(-0.048, 3.537, -2.83), angle = Angle(90, 0, 90), size = Vector(0.59, 0.59, 0.59), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "Body", rel = "", pos = Vector(-0.043, 3.653, -0.974), angle = Angle(180, 0, 90), size = Vector(0.49, 0.49, 0.49)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "Body", rel = "", pos = Vector(-0.053, 3.477, -2.2), angle = Angle(180, 0, 90), size = Vector(0.54, 0.54, 0.54), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "Body", rel = "", pos = Vector(-0.0795, 1.658, -0.9), angle = Angle(180, 0, 90), size = Vector(1.57, 1.57, 1.57)},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "Body", rel = "", pos = Vector(-0.057, 3.582, -2.991), angle = Angle(0, 0, 90), size = Vector(0.27, 0.27, 0.27)},
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "Body", rel = "", pos = Vector(-0.056, 3.478, -2.87), angle = Angle(90, 0, 90), size = Vector(0.57, 0.57, 0.57)},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "Body", rel = "", pos = Vector(0.1492, -0.493, -7), angle = Angle(180, 0, 90), size = Vector(0.71, 0.71, 0.71), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "Body", rel = "", pos = Vector(-0.053, 3.477, -2.32), angle = Angle(90, 0, 90), size = Vector(0.53, 0.53, 0.53), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "Body", rel = "", pos = Vector(-0.105, 3.326, -2.73), angle = Angle(90, 0, 90), size = Vector(0.56, 0.56, 0.56), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "Body", pos = Vector(0.1736, 0.025 , -6.241), angle = Angle(90, 0, 90), size = Vector(0.61, 0.61, 0.61)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "Body", rel = "", pos = Vector(0.13, 0.49, -5.706), angle = Angle(180, 0, 90), size = Vector(0.53, 0.53, 0.53), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog_fixed"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "Body", rel = "", pos = Vector(0.178, -0.084, -6.014), angle = Angle(180, 0, 90), size = Vector(0.63, 0.63, 0.63), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "Body", rel = "", pos = Vector(0.13, 0.49, -5.706), angle = Angle(180, 0, 90), size = Vector(0.53, 0.53, 0.53), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "Body", rel = "", pos = Vector(0.044, 4.388, -1.767), angle = Angle(90, 0, 90), size = Vector(0.85, 0.85, 0.85)},
		--Handguards
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "Body", rel = "", pos = Vector(-0.057, 0.33, 5.5), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "Body", rel = "", pos = Vector(-0.057, 0.228, 5.39), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "Body", rel = "", pos = Vector(-0.438, -2.099, 15.869), angle = Angle(0, 0, 90), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "Body", rel = "", pos = Vector(0.03, -0.46, 8.555), angle = Angle(180, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		--Muzzles
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "Body", rel = "", pos = Vector(-0.08, 3.42, 2.25), angle = Angle(0, 0, -90), size = Vector(0.75, 0.75, 0.75)},
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "Body", rel = "", pos = Vector(0.6, 1.159, 17.78), angle = Angle(90, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		--Mags
		["md_uecw_usgimag"] = { type = "Model", model = "models/gmod4phun/usgimag.mdl", bone = "Clip", rel = "", pos = Vector(0.07, 1.017, -0.09), angle = Angle(0, 180, -90), size = Vector(0.625, 0.625, 0.625), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_uecw_emag"] = { type = "Model", model = "models/gmod4phun/emag.mdl", bone = "Clip", rel = "", pos = Vector(0.08, 0.333, -0.11), angle = Angle(0, 180, -90), size = Vector(0.55, 0.55, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_uecw_60rnd"] = { type = "Model", model = "models/gmod4phun/60rndmag.mdl", bone = "Clip", rel = "", pos = Vector(0.1, 0.556, 1.55), angle = Angle(0, 180, -90), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_tcw_pmag"] = { type = "Model", model = "models/gmod4phun/pmag30.mdl", bone = "Clip", rel = "", pos = Vector(0.12, -0.406, 0.11), angle = Angle(90, 180, -90), size = Vector(0.67, 0.67, 0.67), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.76, 2.651, 1.386), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
		['R_Pinky1'] = {vector = Vector(0, 0, 0), angle = Angle(-30.301000595093, -5.9060001373291, 31.805999755859)},
		['R_Ring3'] = {vector = Vector(0, 0, 0), angle = Angle(-26.25, 0, 0)},
		['R_Pinky3'] = {vector = Vector(0, 0, 0), angle = Angle(-32.381000518799, 0, 0)},
		['R_Thumb2'] = {vector = Vector(0, 0, 0), angle = Angle(0, 33.46900177002, 0)},
		['R_Thumb1'] = {vector = Vector(0, 0, 0), angle = Angle(-18.350999832153, 26.450000762939, 0)},
		['R_Ring2'] = {vector = Vector(0, 0, 0), angle = Angle(-4.2189998626709, 0, 0)},
		['R_Ring1'] = {vector = Vector(0, 0, 0), angle = Angle(-46.51900100708, 7.4499998092651, 11.255999565125)},
		['R_Mid3'] = {vector = Vector(0, 0, 0), angle = Angle(-12.875, 0, 0)},
		['R_Armdummy'] = {pos = Vector(-3.4, 11.8, -2.6), angle = Angle(49.643001556396, -85.625, 0)},
		['R_Mid2'] = {vector = Vector(0, 0, 0), angle = Angle(-20.549999237061, 0, 0)},
		['R_Mid1'] = {vector = Vector(0, 0, 0), angle = Angle(-46.331001281738, 10.293999671936, 9.5059995651245)},
		['R_Index2'] = {vector = Vector(0, 0, 0), angle = Angle(-51.26900100708, 0, 0)},
		['R_Thumb3'] = {vector = Vector(0, 0, 0), angle = Angle(0, 72.305999755859, 0)},
		['R_Index1'] = {vector = Vector(0, 0, 0), angle = Angle(-56.956001281738, 6.0250000953674, 18.386999130249)},
		['R_Index3'] = {vector = Vector(0, 0, 0), angle = Angle(-22.118999481201, 0, 0)}
	}

	SWEP.ForegripOverridePos = {
		["default"] = {},
		
		["bruentiltgrip_r"] = {
			['R_Pinky1'] = {vector = Vector(0, 0, 0), angle = Angle(-30.301000595093, -5.9060001373291, 31.805999755859)},
			['R_Ring3'] = {vector = Vector(0, 0, 0), angle = Angle(-26.25, 0, 0)},
			['R_Pinky3'] = {vector = Vector(0, 0, 0), angle = Angle(-32.381000518799, 0, 0)},
			['R_Thumb2'] = {vector = Vector(0, 0, 0), angle = Angle(0, 33.46900177002, 0)},
			['R_Thumb1'] = {vector = Vector(0, 0, 0), angle = Angle(-18.350999832153, 26.450000762939, 0)},
			['R_Ring2'] = {vector = Vector(0, 0, 0), angle = Angle(-4.2189998626709, 0, 0)},
			['R_Ring1'] = {vector = Vector(0, 0, 0), angle = Angle(-46.51900100708, 7.4499998092651, 11.255999565125)},
			['R_Mid3'] = {vector = Vector(0, 0, 0), angle = Angle(-12.875, 0, 0)},
			['R_Armdummy'] = {pos = Vector(-3.4, 11.8, -2.6), angle = Angle(49.643001556396, -85.625, 0)},
			['R_Mid2'] = {vector = Vector(0, 0, 0), angle = Angle(-20.549999237061, 0, 0)},
			['R_Mid1'] = {vector = Vector(0, 0, 0), angle = Angle(-46.331001281738, 10.293999671936, 9.5059995651245)},
			['R_Index2'] = {vector = Vector(0, 0, 0), angle = Angle(-51.26900100708, 0, 0)},
			['R_Thumb3'] = {vector = Vector(0, 0, 0), angle = Angle(0, 72.305999755859, 0)},
			['R_Index1'] = {vector = Vector(0, 0, 0), angle = Angle(-56.956001281738, 6.0250000953674, 18.386999130249)},
			['R_Index3'] = {vector = Vector(0, 0, 0), angle = Angle(-22.118999481201, 0, 0)}
		}}

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(2, 180, 0) --{p = 2, y = 180, r = 0}

	SWEP.MagBoneName = "Clip"
	
function SWEP:RenderTargetFunc()
	
	if !self.SkinSilencerInstalled then -- if we dont have skin silencer, hide it
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone("silencer"), Vector(0.009, 0.009, 0.009))
	else
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone("silencer"), Vector(1, 1, 1))
	end

end

end

SWEP.SightBGs = {main = 2, none = 1}
SWEP.LuaViewmodelRecoil = true
SWEP.CustomizationMenuScale = 0.012

SWEP.Trivia = {text = "A classic assault rifle known for its 3-round burst. Its variants still see widespread use to this day.", x = -200, y = -700}

SWEP.Attachments = {[1] = {header = "Sight", offset = {-100, -600},  atts = {"md_rmr", "xrkonpoint", "md_reflex", "md_cmore", "md_trijicon", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "too_reflex_exps", "corioenforcer", "md_schmidt_shortdot", "md_elcan", "md_acog_fixed", "md_thermal", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-700, -600}, atts = {"md_saker", "md_csgo_silencer_rifle", "uecw_skin_silencer"}},
	[3] = {header = "Handguard", offset = {-800, 0}, atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_bipod"}},
	[4] = {header = "Magazines", offset = {-500, 500}, atts = {"md_uecw_usgimag", "md_uecw_emag", "md_uecw_60rnd", "md_tcw_pmag"}},
	[5] = {header = "Conversion", offset = {1025, 525}, atts = {"uecw_m16a3_conversion"}},
	["+use"] = {header = "Optic Type", offset = {1450, -600}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
	["+reload"] = {header = "Ammo", offset = {1600, -100}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
	
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
		["md_acog_fixed"] = {"too_optic_category_magnified"},
		["md_thermal"] = {"too_optic_category_magnified"},
		["md_nightforce_nxs"] = {"too_optic_category_magnified"}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.55, sound = "CW_M16A2_MAGOUT"},
	[2] = {time = 1.35, sound = "CW_M16A2_MAGIN"},
	[3] = {time = 2.35, sound = "CW_M16A2_BOLT"}},
	draw = {{time = 0.01, sound = "CW_XM8_CLOTH"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/weapons/v_rif_m164.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 900
SWEP.FireSound = "CW_M16A2_FIRE"
SWEP.FireSoundSuppressed = "CW_M16A2_FIRE_SUPPRESSED"
SWEP.Recoil = 0.75

SWEP.HipSpread = 0.12
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.6
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 34
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.2
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt = 2.6
SWEP.ReloadHalt_Empty = 3.8
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = .25
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
if self.ActiveAttachments.md_csgo_silencer_rifle then
	self.EffectiveRange = ((self.EffectiveRange * 0.85))
end
if self.ActiveAttachments.uecw_skin_silencer then
	self.EffectiveRange = ((self.EffectiveRange * 1.1))
end

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
	
	if self.dt.M203Active then
		if SERVER and SP then
			SendUserMessage("CW20_M203OFF", self.Owner)
		end
		
		if CLIENT then
			self:resetM203Anim()
		end
	end

	self.dt.M203Active = false
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
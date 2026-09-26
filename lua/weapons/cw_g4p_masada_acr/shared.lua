if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "ACR"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/masada")
	killicon.Add("cw_g4p_masada_acr", "vgui/killicons/masada", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 50 * 39.37
	SWEP.DamageFallOff_Orig = .3

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0.8, y = -1, z = 2}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

--grip pos temp


	SWEP.ForeGripHoldPos ={

	["ValveBiped.Bip01_L_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 23.59, 0) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.397, -87.78, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 36.016, 0) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 8.699, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(23.943, 8.255, 14.635) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-13.348, -1.923, 12.897) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-14.533, -26.123, 37.264) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(3.45, -48.892, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 29.312, 4.981) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(23.763, -13.099, -1.884) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.55, 2.98, -2.852), angle = Angle(8.472, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(2.44, 14.171, 14.847) }

	}


	SWEP.ForegripOverridePos = {

		["default"] = {},

		["bruentiltgrip_r"] = {

			["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(37.265, 0, 17.61) },
			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(7.656, -59.252, -25.736) },
			["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(31.277, -31.014, -2.794) },
			["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(19.322, -46.232, -21.198) },
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.48, 1.922, -1.007), angle = Angle(0, 0, 0) },
			["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-35.827, -4.282, 27.684) },
			["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-44.926, 17.809, 0) }
		


	

		},

		["bruentiltgrip_s"] = {

			
			["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(37.265, 0, 17.61) },
			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(7.656, -59.252, -25.736) },
			["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(31.277, -31.014, -2.794) },
			["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(19.322, -46.232, -21.198) },
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.48, 0.922, -1.007), angle = Angle(0, 0, 0) },
			["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-35.827, -4.282, 27.684) },
			["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-44.926, 17.809, 0) }

		
				},

				["ftactiger_r"] = {

					["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-8.325, -17.361, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-17.504, 0, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-23.334, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.8, 3.96, -0.429), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-13.363, 0, 0) }

				},
				
				["ftactiger_s"] = {

					["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-8.325, -17.361, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-17.504, 0, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-23.334, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.8, 0.96, -0.429), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-13.363, 0, 0) }

				},

			}
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
--	SWEP.CustomizePos = Vector(-13.507, -6.981, 1.175)
--	SWEP.CustomizeAng = Vector(27.256, -50.713, -29.239)

	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
	SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.IronsightPos = Vector(-2.75, 1.5, 0)
	SWEP.IronsightAng = Vector(0, 0,- 45)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)
		
    SWEP.RMRPos = Vector(-1.635, -3, 0.2)
    SWEP.RMRAng = Vector(0, 0, 0)

	SWEP.POINTPos = Vector(-1.635, -2.5, 0.25)
    SWEP.POINTAng = Vector(0, 0, 0)
		
	SWEP.ReflexPos = Vector(-1.62, -1.4, 0.08)
	SWEP.ReflexAng = Vector(0, 0, 0)

	SWEP.CmorePos = Vector(-1.62, -1.4, -0.06)
	SWEP.CmoreAng = Vector(0, 0, 0)
		
	SWEP.TrijiconPos = Vector(-1.64, -1.4, 0.1)
	SWEP.TrijiconAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-1.64, -1.4, 0.06)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ROMEO4TPos = Vector(-1.62, -1.4, -0.25)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)
		
	SWEP.AimpointPos = Vector(-1.62, -1.4, -0.2)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.EXPSPos = Vector(-1.635, -3.5, 0)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ENFORPos = Vector(-1.635, -2.5, 0)
    SWEP.ENFORAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-1.605, -2.85, -0.220265)
    SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.ELCANPos = Vector(-1.62, -2.8, -0.14)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-1.66, -2.8, -0.4)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.CSGOACOGPos = Vector(-1.68, -2.8, -0.4)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)

	SWEP.CSGO556Pos = Vector(-1.7, -2.6, 0.064)
	SWEP.CSGO556Ang = Vector(0, 0, 0)
	
	SWEP.ThermalPos = Vector(-1.62, -2.8, -0.14)
	SWEP.ThermalAng = Vector(0, 0, 0)

	SWEP.NXSPos = Vector(-1.665, -3.5, -0.06)
    SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.BallisticPos = Vector(-1.62, -1.4, -0.12)
	SWEP.BallisticAng = Vector(0, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {
	["md_rmr"] = {[1] = Vector(-3, 1.5, 0.5), [2] = Vector(0,0,-45)},
	["xrkonpoint"] = {[1] = Vector(-3, 1.5, 0.5), [2] = Vector(0,0,-45)},
	["md_reflex"] = {[1] = Vector(-3, 1.5, 0.5), [2] = Vector(0,0,-45)},
	["md_cmore"] = {[1] = Vector(-3, 1.5, 0.5), [2] = Vector(0,0,-45)},
	["md_trijicon"] = {[1] = Vector(-3, 1.5, 0.5), [2] = Vector(0,0,-45)},
	["md_microt1"] = {[1] = Vector(-3, 3.5, 0.5), [2] = Vector(0,0,-45)},
	["too_reflex_romeo4t"] = {[1] = Vector(-3, 0.25, 0.5), [2] = Vector(0,0,-45)},
	["md_aimpoint"] = {[1] = Vector(-3, 2.25, 0.5), [2] = Vector(0,0,-45)},
	["too_reflex_exps"] = {[1] = Vector(-3, 1.5, 0.5), [2] = Vector(0,0,-45)},
	["corioenforcer"] = {[1] = Vector(-3, 0.25, 0.5), [2] = Vector(0,0,-45)},
	["md_schmidt_shortdot"] = {[1] = Vector(-3.25, 3.75, 0.5), [2] = Vector(0,0,-60)},
	["md_elcan"] = {[1] = Vector(-1.63, 0, -0.903), [2] = Vector(-0.1, -0.2, 0)},
	["md_acog"] = {[1] = Vector(-1.635, 5, -1.5), [2] = Vector(-0.05, 0.01, 0)},
	["md_uecw_csgo_acog"] = {[1] = Vector(-3, 3.25, 0.5), [2] = Vector(0,0,-45)},
	["md_uecw_csgo_556"] = {[1] = Vector(-1.667, 0, -0.88), [2] = Vector(0.75, 0, 0)},
	["md_nightforce_nxs"] = {[1] = Vector(-3.25, 3.75, 0.5), [2] = Vector(0,0,-60)},
	["md_ballistic"] = {[1] = Vector(-3, 3.25, 0.5), [2] = Vector(0,0,-45)}
	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.MaterialIndexPrimary = {14, 15}
	SWEP.MaterialIndexSecondary = {10, 17, 18}

	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.MagBoneName = "Masada_PMAG30"
	SWEP.MagBoneName2 = "Masada_PMAG30.2"

	SWEP.BulletsBoneName = "Masada_Cases001"
	SWEP.BulletsBoneName2 = "Masada_Bullets001"

	SWEP.SpringBoneName = "Masada_FollowerSpring"
	SWEP.FollowerBoneName = "Masada_PMAGFollower001"

	SWEP.AttachmentModelsVM = {
		--Underbarrels
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "Masada_body", rel = "", pos = Vector(0, 4.5, -1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "Masada_body", rel = "", pos = Vector(0, 5, -1.25), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "Masada_body", rel = "", pos = Vector(-0.4, -5, -3.295), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_tcw_carryhandle_grip"] = {model = "models/cw2/rifles/ar15.mdl", bone = "Masada_body", rel = "", pos = Vector(-2.205, -5.090, -2.892), angle = Angle(0, -90, 180), size = Vector(1, 1, 1)},
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "Masada_Body", rel = "", pos = Vector(0, 6.5, -2.06), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "Masada_body", pos = Vector(2.35, -12, 1.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), animated = true},
		--Optics
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "Masada_body", pos = Vector(-0.4, -7.5, -4.70), angle = Angle(0, -90, 0), adjustment = {min = -9.01, max = -4.1, axis = "y", inverseOffsetCalc = true}, size = Vector(1, 1, 1)},
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "Masada_body", rel = "", pos = Vector(0, -2.5, 1), angle = Angle(0, -90, 0), adjustment = {min = -3.6, max = 1.32, axis = "y", inverseOffsetCalc = true}, size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "Masada_body", rel = "", pos = Vector(0.006, -0.4, 1.2), angle = Angle(0, 0, 0), adjustment = {min = -0.66, max = 3.65, axis = "y", inverseOffsetCalc = true}, size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "Masada_body", rel = "", pos = Vector(0, -2, 0.96), angle = Angle(180, 180, 180), adjustment = {min = -2.55, max = 0.58, axis = "y", inverseOffsetCalc = true}, size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "Masada_Body", rel = "", pos = Vector(-0.02, -0.6, -1.44), angle = Angle(0, 0, 0), adjustment = {min = -0.89, max = 3.13, axis = "y", inverseOffsetCalc = true}, size = Vector(2, 2, 2)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "Masada_body", pos = Vector(0, -2, 1.1), angle = Angle(0, 180, 0), adjustment = {min = -3.77, max = 1.47, axis = "y", inverseOffsetCalc = true}, size = Vector(0.4, 0.4, 0.4)},
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "Masada_body", rel = "", pos = Vector(0, -2, 0.98), angle = Angle(0, -90, 0), adjustment = {min = -3.67, max = 1.26, axis = "y", inverseOffsetCalc = true}, size = Vector(0.8, 0.8, 0.8)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "Masada_body", rel = "", pos = Vector(-0.26, -8.2, -4.64), angle = Angle(0, 0, 0), adjustment = {min = -9.48, max = -5.17, axis = "y", inverseOffsetCalc = true}, size = Vector(1, 1, 1)},
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "Masada_body", rel = "", pos = Vector(0, -2, 0.9), angle = Angle(0, -90, 0), adjustment = {min = -2.97, max = 0.73, axis = "y", inverseOffsetCalc = true}, size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "Masada_body", rel = "", pos = Vector(0.06, -3.125, 0.6), angle = Angle(0, -90, 0), adjustment = {min = -3.35, max = 0.69, axis = "y", inverseOffsetCalc = true}, size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "Masada_body", pos = Vector(-0.35, -7.5 , -4.65), angle = Angle(0, -90, 0), adjustment = {min = -9.09, max = -6.95, axis = "y", inverseOffsetCalc = true}, size = Vector(1, 1, 1)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "Masada_body", rel = "", pos = Vector(-0.28, -7.2, -3.66), angle = Angle(180, 180, 180), adjustment = {min = -7.55, max = -4.5, axis = "y", inverseOffs1etCalc = false}, size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "Masada_body", pos = Vector(-0.38, -7.2, -4.8), angle = Angle(0, 0, 0), adjustment = {min = -8.14, max = -5.68, axis = "y", inverseOffs1etCalc = false}, size = Vector(1, 1, 1)},
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "Masada_Body", rel = "", pos = Vector(0, -9.601, -3.5), angle = Angle(0, -90, 0), adjustment = {min = -10.35, max = -7.9, axis = "y", inverseOffs1etCalc = false}, size = Vector(1, 1, 1)},
		["md_uecw_csgo_556"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_sig.mdl", bone = "Masada_Body", rel = "", pos = Vector(0, -1.8, 0.74), angle = Angle(0, -90, 0), adjustment = {min = -2.21, max = 0.87, axis = "y", inverseOffs1etCalc = false}, size = Vector(0.8, 0.8, 0.8)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "Masada_body", rel = "", pos = Vector(-0.28, -7.2, -3.66), angle = Angle(180, 180, 180), adjustment = {min = -7.55, max = -4.5, axis = "y", inverseOffs1etCalc = false}, size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "Masada_body", rel = "", pos = Vector(-0.136, -0.5, 2.065), angle = Angle(0, -90, 0),  adjustment = {min = -0.94, max = 1.75, axis = "y", inverseOffs1etCalc = false}, size = Vector(1, 1, 1)},
		["md_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "Masada_body", rel = "", pos = Vector(-1.315, -10.2, 1.52), angle = Angle(0, -90, 0), adjustment = {min = -11.2, max = -6.9, axis = "y", inverseOffs1etCalc = false}, size = Vector(1.039, 1.039, 1.039), color = Color(255, 255, 255, 255)},
		--Lasers
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "Masada_body", rel = "", pos = Vector(0, 4.5, 0.9), angle = Angle(0, -90, 0), size = Vector(0.9, 0.9, 0.9) },
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "Masada_body", pos = Vector(-0.08, 4, 0.94), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
		--Muzzles
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "Masada_body", pos = Vector(0, 0.22, -1.985), angle = Angle(0, 0, 0), size = Vector(0.55, 0.55, 0.55)},
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "Masada_Body", rel = "", pos = Vector(0, 12.71, -1.097), angle = Angle(0, -90, 0), size = Vector(0.873, 0.873, 0.873)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "Masada_body", rel = "", pos = Vector(0, 14.47, -0.33), angle = Angle(180, 90, 180), size = Vector(0.856, 0.856, 0.856)},
		["md_snip2_m200_heavy_muzzle_brake"] = { type = "Model", model = "models/attachments/heavy_muzzle_brake.mdl", bone = "Masada_body", rel = "", pos = Vector(0, 2.73, -1.551), angle = Angle(0, 0, 0), size = Vector(0.41, 0.41, 0.41)},
		--Magazines
		["md_uecw_emag"] = {
			models = {
					{type = "Model", model = "models/gmod4phun/emag.mdl", bone = "Masada_PMAG30", rel = "", pos = Vector(-0.005, 0.016, -2.124), angle = Angle(0, 180, 0), size = Vector(0.55, 0.55, 0.55)},
					{type = "Model", model = "models/gmod4phun/emag.mdl", bone = "Masada_PMAG30.2", rel = "", pos = Vector(-0.005, 0.016, -2.124), angle = Angle(0, 180, 0), size = Vector(0.55, 0.55, 0.55)}
			}},
		["md_uecw_60rnd"] = {
			models = {
					{type = "Model", model = "models/gmod4phun/60rndmag.mdl", bone = "Masada_PMAG30", rel = "", pos = Vector(0.012, -1.718, -1.261), angle = Angle(0, 180, 0), size = Vector(0.745, 0.745, 0.745)},
					{type = "Model", model = "models/gmod4phun/60rndmag.mdl", bone = "Masada_PMAG30.2", rel = "", pos = Vector(0.012, -1.718, -1.261), angle = Angle(0, 180, 0), size = Vector(0.745, 0.745, 0.745)}
			}},
		["md_uecw_cmag"] = {
			models = {
					{type = "Model", model = "models/wystan/Cmag.mdl", bone = "Masada_PMAG30", rel = "", pos = Vector(0.162, 3.240, -1.579), angle = Angle(0, 90, 0), size = Vector(0.614, 0.614, 0.614)},
					{type = "Model", model = "models/wystan/Cmag.mdl", bone = "Masada_PMAG30.2", rel = "", pos = Vector(0.162, 3.240, -1.579), angle = Angle(0, 90, 0), size = Vector(0.614, 0.614, 0.614)}
			}},
		["md_tcw_stanag"] = {
			models = {
					{type = "Model", model = "models/gmod4phun/usgimag.mdl", bone = "Masada_PMAG30", rel = "", pos = Vector(-0.018, -0.079, -0.889), angle = Angle(0, 180, 0), size = Vector(0.614, 0.614, 0.614)},
					{type = "Model", model = "models/gmod4phun/usgimag.mdl", bone = "Masada_PMAG30.2", rel = "", pos = Vector(-0.018, -0.079, -0.889), angle = Angle(0, 180, 0), size = Vector(0.614, 0.614, 0.614)}
			}},
		--Stocks
		["bg_foldedstock"] = { type = "Model", model = "models/weapons/v_mas_scar.mdl", bone = "Masada_body", rel = "", pos = Vector(18.373, -8.92, 24.858), angle = Angle(31.998, 67, 57.216), size = Vector(1, 1, 1) },
		["bg_scarstock_acr"] = { type = "Model", model = "models/weapons/v_mas_scar.mdl", bone = "Masada_body", rel = "", pos = Vector(1.442, -10.213, 1.813), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85) }
	}
	

	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3.2, 0.3, -3.1), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
	['Bone06'] = {pos = Vector(0, 0, 0), angle = Angle(88.449996948242, 0, 0)},
	['Bone10'] = {pos = Vector(0, 0, 0), angle = Angle(62.006000518799, 0, 0)},
	['Bone12'] = {pos = Vector(0, 0, 0), angle = Angle(37.987998962402, 0, 0)},
	['Bone24'] = {pos = Vector(0, 0, 0), angle = Angle(0, -84.275001525879, 0)},
	['Bone22'] = {pos = Vector(0, 0, 0), angle = Angle(11.244000434875, -1.7690000534058, 13.89999961853)},
	['Bone23'] = {pos = Vector(0, 0, 0), angle = Angle(0.64999997615814, -37.838001251221, 0)},
	['Bone16'] = {pos = Vector(0, 0, 0), angle = Angle(63.831001281738, 0, 0)},
	['Right_L_Arm'] = {pos = Vector(-1, -0.9, 0.3), angle = Angle(-15.463000297546, 0, -87.300003051758)},
	['Right_Hand'] = {pos = Vector(0, 0, 0), angle = Angle(0, 19.386999130249, 0)},
	['Bone18'] = {pos = Vector(0, 0, 0), angle = Angle(28.062999725342, -13.137999534607, 0)},
	['Bone08'] = {pos = Vector(0, 0, 0), angle = Angle(18.218999862671, 0, 0)},
	['Bone14'] = {pos = Vector(0, 0, 0), angle = Angle(53.325000762939, 0, 0)},
	['Bone20'] = {pos = Vector(0, 0, 0), angle = Angle(48.137001037598, 0, 0)}
	}

--	SWEP.BoltBone = "Masada_Charger" -- do not move it :D
--	SWEP.BoltShootOffset = Vector(-2.4, 0, 0)
	
	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
end

SWEP.HandsBGs = {main = 0, hands = 0, none = 1}
SWEP.MagBGs = {main = 1, regular = 0, none = 1}
SWEP.ReceiverBGs = {main = 2, regular = 0, none = 1}
SWEP.HandguardBGs = {main = 3, regular = 0, none = 1}
SWEP.StockBGs = {main = 4, regular = 0, none = 1}
SWEP.RailBGs = {main = 5, regular = 0, none = 1}
SWEP.HoloBGs = {main = 6, regular = 0, none = 1}
SWEP.SCARLowerReceiverBGs = {main = 7, regular = 0, none = 1}
SWEP.SCARUpperReceiverBGs = {main = 8, regular = 0, none = 1}
SWEP.SCARStockBGs = {main = 9, regular = 0, none = 1}
SWEP.SCARRearGripBGs = {main = 10, regular = 0, none = 1}
SWEP.SCARIronSightsBGs = {main = 11, regular = 0, none = 1}
SWEP.SCARReflexBGs = {main = 12, regular = 0, none = 1}
SWEP.SCARSuppressorBGs = {main = 13, regular = 0, none = 1}
SWEP.LuaViewmodelRecoil = true
SWEP.CustomizationMenuScale = 0.01

SWEP.Trivia = {text = "The Masada manufactured by Remington for military and law enforcement use.", x = -200, y = -800}

SWEP.Attachments = {[1] = {header = "Sight", offset = {-25, -600},  atts = {"md_rmr", "xrkonpoint", "md_reflex", "md_cmore", "md_trijicon", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "too_reflex_exps", "corioenforcer", "md_schmidt_shortdot", "md_elcan", "md_acog", "md_uecw_csgo_acog", "md_uecw_csgo_556", "md_thermal", "md_nightforce_nxs", "md_ballistic"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Muzzle", offset = {-700, -600}, atts = {"md_saker", "md_csgo_silencer_rifle", "hard20", "md_snip2_m200_heavy_muzzle_brake"}},
	[3] = {header = "Underbarrel", offset = {-650, 350}, atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_tcw_carryhandle_grip", "md_bipod", "md_m203"}},
	[4] = {header = "Laser", offset = {-700, -150}, atts = {"ftacgrimline", "md_anpeq15"}},	
	[5] = {header = "Stock", offset = {1900, 550}, atts = {"bg_foldedstock", "bg_scarstock_acr"}},	
	[6] = {header = "Magazine", offset = {1200, 600}, atts = {"md_uecw_emag", "md_uecw_60rnd", "md_uecw_cmag", "md_tcw_stanag"}, exclusions = {uecw_acr_68_conversion = true}},
	[7] = {header = "Signature Attachment", offset = {550, 500}, atts = {"uecw_acr_68_conversion"}},
	[8] = {header = "Skins", offset = {1200, 250}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes","md_skinyellowjacket"}},
	["+use"] = {header = "Optic Type", offset = {1500, -600}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
	["+reload"] = {header = "Ammo", offset = {1500, -250}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
	
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
		["md_uecw_csgo_acog"] = {"too_optic_category_magnified"},
		["md_uecw_csgo_556"] = {"too_optic_category_magnified"},
		["md_thermal"] = {"too_optic_category_magnified"},
		["md_nightforce_nxs"] = {"too_optic_category_magnified"},
		["md_ballistic"] = {"too_optic_category_magnified"}}

SWEP.AttachmentExclusions = {
	["md_uecw_cmag"] = {"bg_foldedstock"}
}

SWEP.AttachmentPosDependency = {
	["md_anpeq15"] = {["md_nightforce_nxs"] = Vector(-0.76, 6, -0.2)},
	["md_anpeq15"] = {["md_ballistic"] = Vector(-0.76, 6, -0.2)}
	}

SWEP.AttachmentAngDependency = {
	md_anpeq15 = {md_nightforce_nxs = Angle(0, 90, -84)},
	md_anpeq15 = {md_ballistic = Angle(0, 90, -84)}
	}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload_unsil",
	idle = "idle_unsil",
	draw = "draw_unsil"}
	
SWEP.Sounds = {reload_unsil = {[1] = {time = 1, sound = "CW_MASADA_MAGOUT"},
	[2] = {time = 1.6, sound = "CW_MASADA_MAGIN"},
	[3] = {time = 2.3, sound = "CW_MASADA_BOLT"}},
	draw_unsil = {{time = 0.01, sound = "CW_XM8_CLOTH"}}}

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

print(SWEP, self, SWEP == self) 


SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_mas_scar.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.Secondary.DefaultClip	= 75
SWEP.Secondary.Ammo			= "6.8 SPC"

SWEP.FireDelay = 60 / 700
SWEP.FireSound = "CW_MASADA_FIRE"
SWEP.FireSoundSuppressed = "CW_MASADA_FIRE_SUPPRESSED"
SWEP.Recoil = 0.9

SWEP.HipSpread = 0.1
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.6
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 39
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2
SWEP.ReloadHalt_Empty = 3.3
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = 0.3
self.FireSound = "CW_MASADA_FIRE"
self.FireSoundSuppressed = "CW_MASADA_FIRE_SUPPRESSED"
self.PrintName = "ACR"
self.Trivia = {text = "The Masada manufactured by Remington for military and law enforcement use.", x = -200, y = -800}
if self.ActiveAttachments.uecw_acr_68_conversion then
	self.EffectiveRange = ((self.EffectiveRange + 15 * 39.37))
	self.FireSound = "CW_M14_FIRE"
	self.FireSoundSuppressed = "CW_M14_FIRE_SUPPRESSED"
	self.PrintName = "6.8 SPC ACR Carbine"
	self.Trivia = {text = "6.8 SPC is a cartridge with properties that are midway between 5.56×45mm and 7.62×51mm.", x = -200, y = -800}
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
if self.ActiveAttachments.md_csgo_silencer_rifle then
	self.EffectiveRange = ((self.EffectiveRange * 0.85))
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
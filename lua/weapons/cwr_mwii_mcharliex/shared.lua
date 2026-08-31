AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MCX Virtus"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.018
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/m13b")
	killicon.Add( "cwr_mwii_mcharliex", "vgui/killicons/m13b", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 55 * 39.37
	SWEP.DamageFallOff_Orig = .15

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	
	SWEP.IronsightPos = Vector(-3.063, -5.447, 0.6)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-5, -0.5, 1)
	SWEP.TacStanceAng = Vector(0, 0, -45)

	SWEP.SprintPos = Vector(-0.12, 0, -0.281)
	SWEP.SprintAng = Vector(-32.262, 23.718, -19.75)
	
	SWEP.AlternativePos = Vector(-0.4, -3, -0.5)
	SWEP.AlternativeAng = Vector(0, 0, -3)
	

	SWEP.ForegripOverride = false
	
	
	
	--grip pos temp


	SWEP.ForeGripHoldPos ={

	["ValveBiped.Bip01_L_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 23.59, 0) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.397, -87.78, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 36.016, 0) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 8.699, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(23.943, 8.255, 14.635) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -1.12800), angle = Angle(-13.348, -1.923, 12.897) },
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

				}
	}
	



	
	-- Magazines are native choices in bodygroup 1. Keep both animated bones
	-- at their original scale for reloads and inspection.

	SWEP.AttachmentModelsVM = {
		--Lasers
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "weapon", rel = "", pos = Vector(-0.036, -2.893, 9.272), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
        ["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", pos = Vector(-0.08, -2.8, 9), angle = Angle(-90, 90, 0), size = Vector(0.75, 0.75, 0.75)},
		--Optics
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.036, -2.893, -0.5), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.168, 0.861), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "weapon", rel = "", pos = Vector(0, -3, -0.25), angle = Angle(90, -90, 0), size = Vector(1, 1, 1)},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.308, 3.272, -5.993), angle = Angle(0, 0, -90), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["szbattleoptic"] = { type = "Model", model = "models/shared/optics/r_sz_battleoptic.mdl", bone = "weapon", rel = "", pos = Vector(-0.036, -2.893, 2.033), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "weapon", rel = "", pos = Vector(0.105, -2.484, 0.939), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["cronenzerop"] = { type = "Model", model = "models/shared/optics/r_cronenzerop.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.893, 0.95), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_thermal"] = { type = "Model", model = "models/shared/optics/r_cronenzerop.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.893, 0.95), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	    ["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "weapon", rel = "", pos = Vector(-0.168, -4.578, 2.57), angle = Angle(90, 0, -90), size = Vector(1.5, 1.5, 1.5)},
		--Underbarrels
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "weapon", rel = "", pos = Vector(0, 0, 8.817), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruentiltgrip_s"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "weapon", rel = "", pos = Vector(0, 0, 7.), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(-0.454, 2.608, -4.907), angle = Angle(0, 0, -90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "weapon", rel = "", pos = Vector(0.023, 0.664, 9.38), angle = Angle(0, 0, -90), size = Vector(0.76, 0.76, 0.76), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		["ftactiger_s"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "weapon", rel = "", pos = Vector(0,-0.2, 6.407), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	    ["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.164, 8.02), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		--Muzzles
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(-0.02, 1.63, -4.432), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "weapon", rel = "", pos = Vector(-0.03, -0.476, 16.295), angle = Angle(90, 0, -90), size = Vector(1, 1, 1)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "weapon", rel = "", pos = Vector(-0.02, -1.349, 18.4), angle = Angle(90, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_mcxshrike"] = { type = "Model", model = "models/kali/weapons/csgo/eq_dsr50_suppressor.mdl", bone = "weapon", rel = "", pos = Vector(-0.006, -1.376, -1.85), angle = Angle(90, 0, 0), size = Vector(0.736, 0.736, 0.736), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		--Handguards
		["bruenechelon"] = { type = "Model", model = "models/shared/wparts/m13/cw_reshed_att_bruenechelon.mdl", bone = "weapon", rel = "", pos = Vector(3, -4.7, -17), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruenbm20"] = { type = "Model", model = "models/shared/wparts/m13/cw_reshed_att_bruenbm20.mdl", bone = "weapon", rel = "", pos = Vector(3, -4.7, -17), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}


	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
	SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	-- Sight Pos Optic

    SWEP.POINTPos = Vector(-3.06, -5.933, 1.029)
    SWEP.POINTAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-3.066, -5, 0.602)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ROMEO4TPos = Vector(-3.05, -10, 0.2)
    SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-3.06, -5, 0.527)
	SWEP.AimpointAng = Vector(0,0,0)

	SWEP.BATPos = Vector(-3.06, -5.733, 0.349)
    SWEP.BATAng = Vector(0, 0, 0)
	
	SWEP.ENFORPos = Vector(-3.06, -11.5, 0.639)
    SWEP.ENFORAng = Vector(0, 0, 0)
	
	SWEP.ZEROPos = Vector(-3.06, -7.433, 0.472)
    SWEP.ZEROAng = Vector(0, 0, 0)

	SWEP.ThermalPos = Vector(-3.06, -9.733, 0.472)
    SWEP.ThermalAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(-3.06, -7.433, 0.27)
    SWEP.NXSAng = Vector(0, 0, 0)

    SWEP.ANGELPos = Vector(-3.06, -5.933, 0.509)
    SWEP.ANGELAng = Vector(0, 0, 0)
	
	SWEP.AngelPosAdjust = Vector(-1, 0, 1)
	SWEP.AngelAngAdjust = Angle(0, 0, 0)

	SWEP.BackupSights = {
	["too_optic_tacstance"] = {[1] = Vector(-3.063, -5.447, 0.6), [2] = Vector(0,0,0)},
	["xrkonpoint"] = {[1] = Vector(-5, -3, 1), [2] = Vector(0,0, -45)},
	["md_microt1"] = {[1] = Vector(-5, -0.5, 1), [2] = Vector(0,0, -45)},
	["too_reflex_romeo4t"] = {[1] = Vector(-5, -4.5, 1), [2] = Vector(0,0, -45)},
	["md_aimpoint"] = {[1] = Vector(-5, -2, 1), [2] = Vector(0,0, -45)},
	["szbattleoptic"] = {[1] = Vector(-5, -4.5, 1), [2] = Vector(0,0, -45)},
	["corioenforcer"] = {[1] = Vector(-5, -4.5, 1), [2] = Vector(0,0, -45)},
	["cronenzerop"] = {[1] = Vector(-5, -3.25, 1), [2] = Vector(0,0, -45)},
	["md_nightforce_nxs"] = {[1] = Vector(-5.25, -0.75, 1.75), [2] = Vector(0,0, -60)}
	}

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.MaterialIndexPrimary = {1, 2, 5, 6, 8}
SWEP.MaterialIndexSecondary = {0, 3, 4, 7, 9}

SWEP.SightBGs = {main = 5 , on = 0 , none = 1}
SWEP.BarrelBGs = {main = 3 , regular = 0 , none = 1}
SWEP.StockBGs = {main = 2 , regular = 0 , none = 1}
SWEP.FrontBGs = {main = 6 , short = 1 , long = 2 , med = 0 , none = 3}

SWEP.AttachmentExclusions = {["nofs"] = {"xrkonpoint"},
							 ["am_atow_lowvel"] = {"md_csgo_silencer_rifle"}
}

SWEP.AttachmentDependencies = {
	["md_mcxshrike"] = {"bruenechelon"},
	["bruentiltgrip_s"] = {"bruenbm20"}
} 

SWEP.AttachmentPosDependency = {
	["md_saker"] = {["bruenechelon"] = Vector(-0.02, 1.63, -0.92), ["bruenbm20"] = Vector(-0.02, 1.63, -8.059)},
	["md_csgo_silencer_rifle"] = {["bruenechelon"] = Vector(-0.03, -0.476, 19.802), ["bruenbm20"] = Vector(-0.03, -0.476, 12.668)},
	["hard20"] = {["bruenechelon"] = Vector(-0.02, -1.349, 21.91), ["bruenbm20"] = Vector(-0.02, -1.349, 14.777)},
	["md_bipod"] = {["bruenechelon"] = Vector(0.023, 0.664, 13.965)},
	["ftacgrimline"] = {["bruenbm20"] = Vector(-0.036, -2.893, 5.8), ["bruenechelon"] = Vector(-0.036, -2.893, 12.8)},
	["md_anpeq15"] = {["bruenbm20"] =Vector(-0.08, -2.8, 5.5), ["bruenechelon"] = Vector(-0.08, -2.8, 12.5)},
}

SWEP.Attachments = {

	[1] = {header = "Optic", offset = {1200 , -450},  atts = {"xrkonpoint", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "szbattleoptic", "corioenforcer", "cronenzerop", "md_thermal", "md_nightforce_nxs", "too_optic_tacstance"}},
	[6] = {header = "Tac - Top", offset = {320 , -450},  atts = {"ftacgrimline", "md_anpeq15"}},
	[2] = {header = "Muzzle", offset = {-700 , -450},  atts = {"md_saker", "md_csgo_silencer_rifle", "hard20", "md_mcxshrike"}},
	[4] = {header = "Bottom Rail Long", offset = {-700 , 50},  atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_bipod"}, exclusions = {bruenbm20 = true}},
	[5] = {header = "Bottom Rail Short", offset = {-700 , 50},  atts = {"ftactiger_s", "bruentiltgrip_s", "md_foregrip"}, dependencies = {bruenbm20 = true}},
	[9] = {header = "Front Sights", offset = {0 , -50},  atts = {"nofs"}},
	[3] = {header = "Handguard", offset = {-700 , 550},  atts = {"bruenechelon", "bruenbm20"}},
	[7] = {header = "Magazine", offset = {1200, 550},  atts = {"md_uecw_emag", "md_uecw_60rnd"}},
	[8] = {header = "Conversion", offset = {100, 550},  atts = {"r_mwii_300blk"}},
	["+use"] = {header = "Skins", offset = {0, 250}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
	["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}

}


SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true

SWEP.Trivia = {text = "The Virtus delivers unmatched performance with modular adaptibility and precision. BSTF's standard-issue rifle.", x = -250, y = -650}

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.1
	anim = "safe"
	prefix = ""
	suffix = ""
	
		if clip == 1 then
		suffix = suffix .. "_last"
	end

	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end 

SWEP.Animations = {

	fire = "fire",
	inspect_30 = "inspect_30",
	fire_aim = "fire_iron",
	fire_last = "fire_empty",
	fire_last_aim = "fire_empty",
	reload = "reload_30",
	reload_empty = "reload_empty_30",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload_30 = {
		{time = 0, sound = "weapons/r_mw/m13b/raise.wav"},
		{time = 0.5, sound = "weapons/r_mw/m13b/magout.wav"},
		{time = 0.90, sound = "weapons/r_mw/m13b/magin.wav"},
		{time = 1.95, sound = "weapons/r_mw/m13b/drop.wav"},
	},

	reload_empty_30 = {
		{time = 0, sound = "weapons/r_mw/m13b/raise.wav"},
		{time = 0.14, sound = "weapons/r_mw/m13b/magout_empty2.wav"},
		{time = 1.25, sound = "weapons/r_mw/m13b/magin_empty.wav"},
		{time = 1.99, sound = "weapons/r_mw/m13b/boltcatch.wav"},
		{time = 2.3, sound = "weapons/r_mw/m13b/drop.wav"},
	},

	inspect_30 = {

		{time = 0, sound = "weapons/r_mw/m13b/raise.wav"},
		{time = 1.1, sound = "weapons/r_mw/m13b/inspect_magout.wav"},
		{time = 3.5, sound = "weapons/r_mw/m13b/inspect_magin.wav"},
		{time = 4.4, sound = "weapons/r_mw/m13b/inspect_boltback.wav"},
		{time = 5.2, sound = "weapons/r_mw/m13b/inspect_boltfwd.wav"},

	}
}

SWEP.SpeedDec = 35

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw_r_mw/cw_reshed_m13b.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.Secondary.DefaultClip	= 90
SWEP.Secondary.Ammo			= ".300 Blackout"

SWEP.FireDelay = 60 / 900
SWEP.FireSound = "MWII_M13B_FIRE"
SWEP.FireSoundSuppressed = "MWII_M13B_FIRE_SUPPRESSED"
SWEP.Recoil = 0.45

SWEP.AimMobilitySpreadMod = 0.3
SWEP.VelocitySensitivity = 0.6

SWEP.HipSpread = 0.12
SWEP.AimSpread = 0.003
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.6

SWEP.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.2 / 1.2 ) -- 1.2 multiplied by this value is the resulting multiplier
	end
end

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.25
SWEP.ReloadHalt = 2.25
SWEP.ReloadTime_Empty = 2.8
SWEP.ReloadHalt_Empty = 2.8

SWEP.SnapToIdlePostReload = false

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 55 * 39.37
self.DamageFallOff = .15

self.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.2 / 2 ) -- 2 multiplied by this value is the resulting multiplier
	end
end

self:setBodygroup(self.FrontBGs.main, self.FrontBGs.med)
self:setBodygroup(self.SightBGs.main, self.SightBGs.on)

-- The original model drives both magazine meshes through every animation.
self:setBodygroup(1, self.ActiveAttachments.md_uecw_60rnd and 2 or self.ActiveAttachments.md_uecw_emag and 1 or 0)

if self.ActiveAttachments.bruenechelon then
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.long)
end
if self.ActiveAttachments.bruenbm20 then
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.short)
end
if self.ActiveAttachments.nofs or self.ActiveAttachments.xrkonpoint then
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.none)
end
if self.ActiveAttachments.bruenbm20 and self.ActiveAttachments.md_nightforce_nxs then
	self:setBodygroup(self.FrontBGs.main, self.FrontBGs.none)
end

if self.ActiveAttachments.xrkonpoint or self.ActiveAttachments.md_microt1 or self.ActiveAttachments.too_reflex_romeo4t or self.ActiveAttachments.md_aimpoint or self.ActiveAttachments.szbattleoptic or self.ActiveAttachments.corioenforcer or self.ActiveAttachments.cronenzerop or self.ActiveAttachments.md_thermal or self.ActiveAttachments.md_nightforce_nxs then
	self:setBodygroup(self.SightBGs.main, self.SightBGs.none)
end

if self.ActiveAttachments.bruenechelon then
	self.EffectiveRange = ((self.EffectiveRange * 1.20))
end

if self.ActiveAttachments.am_magnum then
	self.EffectiveRange = ((self.EffectiveRange * 1.15))
end
if self.ActiveAttachments.am_matchgrade then
	self.DamageFallOff = ((self.DamageFallOff * 0.5))
end
if self.ActiveAttachments.am_atow_heavy then
	self.EffectiveRange = ((self.EffectiveRange * 1.1))
	self.DamageFallOff = ((self.DamageFallOff * 0.925))
end
if self.ActiveAttachments.hard20 then
	self.EffectiveRange = ((self.EffectiveRange * 1.1))
end
if self.ActiveAttachments.md_mcxshrike then
	self.DamageFallOff = ((self.DamageFallOff * 0.8))
end
if self.ActiveAttachments.r_mwii_300blk then
		self.EffectiveRange = ((self.EffectiveRange * 0.875))
		self.DamageFallOff = ((self.DamageFallOff + 0.26))

		self.bulletCallback = function( att, tr, dmg )
			if tr.HitGroup == HITGROUP_HEAD then
				dmg:ScaleDamage( 1 )
			end
		end
	else
		self.bulletCallback = nil
	end
end

SWEP.InspectAnim = "inspect_30" -- Needs to be in self.Animations
SWEP.InspectTime = 0
DEFINE_BASECLASS( "cw_base" )

function SWEP:Think()

    BaseClass.Think( self )
    if CLIENT and self:GetOwner():KeyDown( IN_USE ) and self:GetOwner():KeyDown( IN_WALK ) and self.InspectTime < CurTime() then
        local prevForegrip = self.ForegripParent
        self.ForegripParent = "default"
        self:playAnim( self.InspectAnim )

        local _, sequenceTime = self.CW_VM:LookupSequence( self.Animations[self.InspectAnim] )
        self.InspectTime = CurTime() + sequenceTime

		timer.Simple(self:SequenceDuration(self:LookupSequence(self.InspectAnim)) - 0, function()
			self.ForegripParent = prevForegrip
		  end)
    end

	if self.dt.State == CW_AIMING then
		self.LuaVMRecoilAxisMod = {vert = 0, hor = 0.125, roll = 0.1, forward = -0.1, pitch = -0.05}
		self.ViewModelMovementScale = 15
	else
		self.LuaVMRecoilAxisMod = {vert = 0.1, hor = 0.1, roll = 0.1, forward = 0.5, pitch = 0.5}
		self.ViewModelMovementScale = 1
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

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AR-15"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	

	SWEP.NearWallEnabled = false
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.IronsightAng = Vector(0.605, 0, -0.217)

	SWEP.MicroBarrelIronPos = Vector(-4.5, 2.75, 0.5)
	SWEP.MicroBarrelIronAng = Vector(0,0, -55)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)
		
	SWEP.EoTechPos = Vector(-2.21, -3.6, 0.239)
	SWEP.EoTechAng = Vector(0, 0, -0.217)
	
	SWEP.NXSPos = Vector(-2.191, -4.454, 0.439)
	SWEP.NXSAng = Vector(0, 0, 0)

	--SWEP.CustomizePos = Vector(10, -20, 2) -- Looking at side profile here
	--SWEP.CustomizeAng = Vector(0.605, 90, -0.217)

	SWEP.AimpointPos = Vector(-2.194, -2.7, 0.57)
	SWEP.AimpointAng = Vector(-1.951, 0, -0.217)
	
	SWEP.MicroT1Pos = Vector(-2.208, 1, 0.83)
	SWEP.MicroT1Ang = Vector(-1.938, 0, -0.217)
	
	SWEP.ACOGPos = Vector(-2.211, -4, 0.146)
	SWEP.ACOGAng = Vector(-1.4, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.2, -4, 0.46)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.ColtPos = Vector(-2.175, -1.5, -0.790)
	SWEP.ColtAng = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-4.5, 2.75, 0.5)
	SWEP.TacStanceAng = Vector(0,0, -55)
	
	SWEP.BackupSights = {
		["md_schmidt_shortdot"] = {[1] = Vector(-4.5, 6, 0.5), [2] = Vector(0,0, -55)} ,
		["too_optic_tacstance"] = {[1] = Vector(-2.208, -4.3, 0.143), [2] = Vector(0.605, 0, -0.217)},
		["bg_foldsight"] = {[1] = Vector(-4.5, 2.75, 0.5), [2] = Vector(0,0, -55)},
		["md_microt1"] = {[1] = Vector(-4.5, 6, 0.5), [2] = Vector(0,0, -55)},
		["md_aimpoint"] = {[1] = Vector(-4.5, 4, 0.5), [2] = Vector(0,0, -55)},
		["md_eotech"] = {[1] = Vector(-4.5, 6, 0.5), [2] = Vector(0,0, -55)},
		["md_ins2coltscope"] = {[1] = Vector(-4.5, 8, 0.5), [2] = Vector(0,0, -55)},
		["md_acog"] = {[1] = Vector(-2.211, 5, -0.64), [2] = Vector(-2, 0, 0)},
		["md_nightforce_nxs"] = {[1] = Vector(-4.5, 6, 0.5), [2] = Vector(0,0, -55)}
	}

	SWEP.ACOGAxisAlign = {right = -0.58, up = -0.01, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = -2, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.ForegripOverridePos = {
		["default"] = {},
		["bruentiltgrip_r"] = {
			["Bip01 L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 42.713, 0) },
			["Bip01 L Clavicle"] = {pos = Vector(-2.9, 0.75, -2.4), angle = Angle(-55.446, 11.843, 0) },
			["Bip01 L Forearm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 42.41) },
			["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 71.308, 0) },
			["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, 25.795, 0) },
			["Bip01 L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(0, 26.148, 0) },
			["Bip01 L Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(6.522, 83.597, 0) },
			["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(23.2, 16.545, 0) },
			["Bip01 L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 31.427, 0) },
			["Bip01 L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 29.565, 0) },
			["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(9.491, 14.793, -15.926) },
			["Bip01 L Finger12"] = {pos = Vector(0, 0, 0), angle = Angle(0, -9.195, 0) },
			["Bip01 L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(0, 10.164, 0) },
			["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 18.395, 0) },
			["Bip01 L Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(2.411, 57.007, 0) }
		},
		["md_cmag_556_official"] = {
			weakOverride = true,
			["Bip01 L UpperArm"] = {pos = Vector(-0.732, -1.836, -4.113), angle = Angle(0, -12.549, 0) }
		},
		["maggrip"] = {
			["Bip01 L Clavicle"] = {pos = Vector(-1.836, -3.372, -1.703), angle = Angle(0, 0, 0)},
			["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(10.075, 20.336, 67.078)},
			["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, 45.467, 0)},
			["Bip01 L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(0, 46.602, 0)},
			["Bip01 L Finger22"] = {pos = Vector(0, 0, 0), angle = Angle(0, -31.570, 0)},
			["Bip01 L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 13.219, 0)},
			["Bip01 L Finger31"] = {pos = Vector(0, 0, 0), angle = Angle(0, 45.448, 0)},
			["Bip01 L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, -29.639, 0)},
			["Bip01 L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(0, 16.473, 0)},
			["Bip01 L Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, 38.349, 0)},
			["Bip01 L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, -16.863, 0)}
		}
	}
	
	SWEP.magBoneName = {"Magazine001", "Bullets001"}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.NXSAlign = {right = -1.97, up = -0.01, forward = 0}
	
	SWEP.AttachmentModelsVM = {
		--Optics
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "smdimport001", pos = Vector(-0.027, 1.25, 3.634), adjustment = {min = 1.25, max = 3.6, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, 180, 0), size = Vector(0.4, 0.4, 0.4)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "smdimport001", rel = "", pos = Vector(-0.281, -4.55, -2.086), adjustment = {min = -4.3, max = -2.8, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, 0, 1), size = Vector(1, 1, 1)},
		--["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "smdimport001", rel = "", pos = Vector(0.238, -9.3, -7.223), adjustment = {min = -9.2, max = -7.6, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_ins2coltscope"] = {model = "models/khrcw2/ins2pack/attachments/coltchscope.mdl", pos = Vector(0,3,4.2), angle = Angle(0,-90,0), size = Vector(.9, .9, .9), bone = "smdimport001"},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "smdimport001", pos = Vector(-0.401, -3.291, -2.22), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "smdimport001", pos = Vector(-0.35, -3.5, -1.627), angle = Angle(0, -90, 0), size = Vector(1, 0.899, 0.899)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "smdimport001", pos = Vector(-0.105, 3.852, 4.574), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		--Muzzle
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "smdimport001", pos = Vector(-0.042, 4.362, 0.05), angle = Angle(0, 0, 2), size = Vector(0.75, 0.75, 0.75)},
		["md_csgo_silencer_rifle"] = {model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "smdimport001", pos = Vector(-0.038, 21.466, 0.597), angle = Angle(-2, -90, 0), size = Vector(1.25, 1.25, 1.25)},
		["hard20"] = {model = "models/shared/muzzles/r_harbinger20.mdl", bone = "smdimport001", pos = Vector(-0.038, 22.363, 1.665), angle = Angle(-2, -90, 0), size = Vector(0.964, 0.964, 0.964)},
		--Underbarrel
		["ftactiger_r"] = {model = "models/shared/grips/r_ftactiger.mdl", bone = "smdimport001", rel = "", pos = Vector(-0.038, 7.452, 1.041), angle = Angle(-2, -90, 0), size = Vector(1.14, 1.14, 1.14)},
		["bruentiltgrip_r"] = {model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "smdimport001", rel = "", pos = Vector(-0.035, 8.7, 0.832), angle = Angle(-2, -90, 0), size = Vector(1.11, 1.11, 1.11)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "smdimport001", rel = "", pos = Vector(-0.452, -2.556, -1.428), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_tcw_carryhandle_grip"] = {model = "models/cw2/rifles/ar15.mdl", bone = "smdimport001", pos = Vector(-2.243, -0.5, -0.15), angle = Angle(-2, -90, 180), size = Vector(1, 1, 1)},
		["md_tcw_carryhandle_grip_cosmetic"] = {model = "models/cw2/rifles/ar15.mdl", bone = "smdimport001", pos = Vector(-2.243, 3.15, -0.15), angle = Angle(-2, -90, 180), size = Vector(1, 1, 1)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "smdimport001", pos = Vector(-0.011, 14.541, 0.441), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "smdimport001", pos = Vector(2.299, -6.611, 4.138), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), animated = true},
		--Lasers
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "smdimport001", pos = Vector(-0.225, 9.715, 3.15), angle = Angle(0, 90, 0), size = Vector(0.699, 0.699, 0.699)},
		["ins2_atow_clamplaser"] = {model = "models/khrcw2/ins2pack/attachments/lasers/laserrifle.mdl", pos = Vector(-2.2,-6,4.2), angle = Angle(0, -90, 90), size = Vector(1,1,1), bone = "smdimport001"},
		--Stocks
		["bg_precisionstock"] = {model = "models/khrcw2/v_snip_sr338.mdl", bone = "smdimport001", rel = "", pos = Vector(3.057, -6.51, 5.262), angle = Angle(-2, -90, 0), size = Vector(1, 1, 1)},
		--Magazines
		["md_uecw_usgimag"] = {model = "models/gmod4phun/usgimag.mdl", bone = "Magazine001", pos = Vector(-0.012, 0.179, -0.162), angle = Angle(0, 0, 2), size = Vector(0.68, 0.68, 0.68)},
		["md_uecw_emag"] = {model = "models/gmod4phun/emag.mdl", bone = "Magazine001", pos = Vector(-0.027, 0.124, -1.438), angle = Angle(0, 0, 2), size = Vector(0.602, 0.602, 0.602)},
		["md_cmag_556_official"] = {model = "models/wystan/Cmag.mdl", bone = "Magazine001", pos = Vector(-0.191, -3.323, -1.254), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_tcw_pmag"] = {model = "models/gmod4phun/pmag30.mdl", bone = "Magazine001", pos = Vector(-0.031, 0.375, -1.979), angle = Angle(-2, -90, 0), size = Vector(0.706, 0.706, 0.706)}
	}
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.76, 2.651, 1.386), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 42.713, 0) },
		["Bip01 L Clavicle"] = {pos = Vector(-3.299, 1.235, -1.79), angle = Angle(-55.446, 11.843, 0) },
		["Bip01 L Forearm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 42.41) },
		["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 71.308, 0) },
		["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, 25.795, 0) },
		["Bip01 L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(0, 26.148, 0) },
		["Bip01 L Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(6.522, 83.597, 0) },
		["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(23.2, 16.545, 0) },
		["Bip01 L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 31.427, 0) },
		["Bip01 L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 29.565, 0) },
		["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(9.491, 14.793, -15.926) },
		["Bip01 L Finger12"] = {pos = Vector(0, 0, 0), angle = Angle(0, -9.195, 0) },
		["Bip01 L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(0, 10.164, 0) },
		["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 18.395, 0) },
		["Bip01 L Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(2.411, 57.007, 0) }
	}
	
	SWEP.AttachmentPosDependency = {
		["md_anpeq15"] = {
			["bg_longris"] = Vector(-0.225, 13, 3.15),
			["bg_ris"] = Vector(-0.225, 9.715, 3.15),
			["bg_foldsight"] = Vector(-0.225, 5.5, 3.15),
			["md_microt1"] = Vector(-0.225, 5.5, 3.15),
			["md_aimpoint"] = Vector(-0.225, 5.5, 3.15),
		},
		["md_saker"] = {["bg_magpulhandguard"] = Vector(-0.042, 4.52, 0.04), ["bg_longbarrel"] = Vector(-0.042, 9, -0.12), ["bg_longris"] = Vector(-0.042, 9, -0.12)},
		["md_csgo_silencer_rifle"] = {["bg_magpulhandguard"] = Vector(-0.038, 21.79, 0.58), ["bg_longbarrel"] = Vector(-0.038, 26.104, 0.45), ["bg_longris"] = Vector(-0.038, 26.104, 0.45)},
		["hard20"] = {["bg_magpulhandguard"] = Vector(-0.038, 22.521, 1.67), ["bg_longbarrel"] = Vector(-0.038, 27.001, 1.51), ["bg_longris"] = Vector(-0.038, 27.001, 1.51)},
		["ins2_atow_clamplaser"] = {["bg_longbarrel"] = Vector(-2.2,-2.5,4.2), ["bg_longris"] = Vector(-2.2,-2.5,4.2)},
		["md_bipod"] = {bg_longbarrel = Vector(-0.011, 14.541, 0.36), bg_ris = Vector(-0.011, 11.1, 0.441)
		}	
	}
	
	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(2, 180, 0) 
end


SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.StudioBGs = {main = 0, receiver = 0, none = 1}
SWEP.HandsBGs = {main = 1, hands = 0, none = 1}
SWEP.StockBGs = {main = 2, regular = 0, heavy = 1, sturdy = 2, buffertube = 3, none = 4}
SWEP.BarrelBGs = {main = 3, ris = 1, magpul = 2, long = 3, longris = 4, none = 5, regular = 0}
SWEP.SightBGs = {main = 4, carryhandle = 0, foldsight = 1, none = 2}
SWEP.MagBGs = {main = 5, regular = 0, round60 = 1, none = 2}

SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "The definitive American weapon that broke tradition in the face of modern warfare.", x = -400, y = -800}


SWEP.Attachments = {[1] = {header = "Sight", offset = {950, -600}, atts = {"bg_foldsight", "md_microt1", "md_aimpoint", "md_ins2coltscope", "md_schmidt_shortdot", "md_acog", "md_nightforce_nxs", "too_optic_tacstance"}},
	[2] = {header = "Muzzle", offset = {400, -600}, atts = {"md_saker", "md_csgo_silencer_rifle", "hard20"}, exclusions = {bg_microbarrel = true}},
	[3] = {header = "Barrel", offset = {-400, -600}, atts = {"bg_magpulhandguard", "bg_longbarrel", "bg_ris", "bg_longris", "bg_microbarrel"}},
	[4] = {header = "Underbarrel", offset = {-400, -25}, atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_tcw_carryhandle_grip", "md_m203"}, exclusions = {bg_microbarrel = true}},
	[9] = {header = "Extended Underbarrel", offset = {-1100, -300}, atts = {"md_tcw_carryhandle_grip_cosmetic", "md_bipod"}, dependencies = {bg_longbarrel = true, bg_ris = true, bg_longris = true}},
	[5] = {header = "Magazine", offset = {-100, 750}, atts = {"md_uecw_usgimag", "md_uecw_emag", "bg_ar1560rndmag", "md_cmag_556_official", "md_tcw_pmag"}},
	[6] = {header = "Stock", offset = {1550, 600}, atts = {"bg_ar15sturdystock", "bg_ar15heavystock", "bg_precisionstock", "bg_nostock"}},
	[7] = {header = "Laser", offset = {1300, 0}, atts = {"md_anpeq15", "ins2_atow_clamplaser"}, exclusions = {bg_microbarrel = true}},
	[8] = {header = "Signature Attachment", offset = {500, 450}, atts = {"too_m4a1_50_beowulf"}},
	["+reload"] = {header = "Ammo", offset = {-900, 400}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}
}
SWEP.AttachmentDependencies = {
	["md_m203"] = {"bg_longris"},
	["md_tcw_carryhandle_grip"] = {"bg_longris"},
	["md_tcw_carryhandle_grip_cosmetic"] = {"bg_longris"},
}

SWEP.AttachmentExclusions = {
	["bg_foldsight"] = {"bg_microbarrel"},
	["md_bipod"] = {"md_m203"},
	["too_optic_tacstance"] = {"bg_microbarrel"},
	["md_uecw_usgimag"] = {"too_m4a1_50_beowulf"},
	["md_uecw_emag"] = {"too_m4a1_50_beowulf"},
	["bg_ar1560rndmag"] = {"too_m4a1_50_beowulf"},
	["md_cmag_556_official"] = {"too_m4a1_50_beowulf", "bg_microbarrel"},
	["md_tcw_carryhandle_grip_cosmetic"] = {"md_tcw_carryhandle_grip", "md_m203"}
}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	reload = {[1] = {time = 0.35, sound = "CW_AR15_MAGOUT"},
	[2] = {time = 1.2, sound = "CW_AR15_MAGIN"},
	[3] = {time = 1.9, sound = "CW_AR15_BOLT"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 85
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/rifles/ar15.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true



SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.Secondary.DefaultClip	= 30
SWEP.Secondary.Ammo			= ".50 Beowulf"

SWEP.FireDelay = 0.066666666666667
SWEP.FireSound = "CW_TOO_AR15_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_AR15_FIRE_SUPPRESSED"
SWEP.Recoil = 0.6

SWEP.HipSpread = 0.12
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.6
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 30
SWEP.DeployTime = 0.6

SWEP.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.4 / 1.2 ) -- 1.2 multiplied by this value is the resulting multiplier
	end
end

SWEP.ReloadSpeed = 1.15
SWEP.ReloadTime = 1.70
SWEP.ReloadTime_Empty = 2.00
SWEP.ReloadHalt = 2.3
SWEP.ReloadHalt_Empty = 2.77
SWEP.SnapToIdlePostReload = true

SWEP.EffectiveRange_Orig = 50 * 39.37
SWEP.DamageFallOff_Orig = .3

function SWEP:IndividualInitialize()
    if CLIENT and self.CW_VM then
        self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
    end
end

function SWEP:IndividualThink()
	self.Owner.ViewAff = 0
	clip = self:Clip1()
	self.EffectiveRange = 50 * 39.37
	self.DamageFallOff = .3

	self.PrintName = "AR-15"

	self.bulletCallback = function( att, tr, dmg )
		if tr.HitGroup == HITGROUP_HEAD then
			dmg:ScaleDamage( 1.4 / 2 )
		end
	end

	if self.ActiveAttachments.bg_longbarrel and self.ActiveAttachments.bg_ar15heavystock then
		if self.ActiveAttachments.too_m4a1_50_beowulf then
			self.PrintName = ".50 Beowulf Tactical"
		else
			self.PrintName = "M16A3"
		end
	end

	if self.ActiveAttachments.bg_precisionstock then
			self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
	end

	if self.ActiveAttachments.ins2_atow_clamplaser then
		self.LaserPosAdjust = Vector(2.5, 20, -2.2)
		self.LaserAngAdjust = Angle(0,-2,0) 
	end
	if self.ActiveAttachments.md_anpeq15 then
			self.LaserPosAdjust = Vector(1, 0, 0)
			self.LaserAngAdjust = Angle(2, 180, 0)  
	end

    if self.ActiveAttachments.too_m4a1_50_beowulf then
		self.EffectiveRange = ((self.EffectiveRange - 15 * 39.37))
		self.DamageFallOff = ((self.DamageFallOff + 0.2))
		self.bulletCallback = function( att, tr, dmg )
			if tr.HitGroup == HITGROUP_HEAD then
				dmg:ScaleDamage( 1.2 / 2 )
			end
		end
	end
	if self.ActiveAttachments.bg_nostock then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.buffertube)
	end
	if self.ActiveAttachments.bg_longbarrel or self.ActiveAttachments.bg_longris then
		self.DamageFallOff = self.DamageFallOff - 0.05
	end
	if self.ActiveAttachments.bg_microbarrel then
		self.EffectiveRange = self.EffectiveRange * 0.1
		self.DamageFallOff = self.DamageFallOff + 0.3
		self:setBodygroup(self.SightBGs.main, self.SightBGs.none)
	end
	if self.ActiveAttachments.bg_microbarrel and self.ActiveAttachments.md_ins2coltscope then
		self:setBodygroup(self.SightBGs.main, self.SightBGs.carryhandle)
	end
	if self.ActiveAttachments.bg_magpulhandguard then
		self.EffectiveRange = self.EffectiveRange + 2.5 * 39.37
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

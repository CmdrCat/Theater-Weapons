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
	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.IronsightAng = Vector(0.605, 0, -0.217)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)
		
	SWEP.EoTechPos = Vector(-2.21, -3.6, 0.239)
	SWEP.EoTechAng = Vector(0, 0, -0.217)
	
	SWEP.NXSPos = Vector(-2.191, -4.454, 0.439)
	SWEP.NXSAng = Vector(0, 0, 0)

	--SWEP.CustomizePos = Vector(10, -4.3, 0) -- Looking at stocks here
	--SWEP.CustomizeAng = Vector(0.605, 90, -0.217)

	SWEP.AimpointPos = Vector(-2.194, -2.7, 0.57)
	SWEP.AimpointAng = Vector(-1.951, 0, -0.217)
	
	SWEP.MicroT1Pos = Vector(-2.208, 1, 0.83)
	SWEP.MicroT1Ang = Vector(-1.938, 0, -0.217)
	
	SWEP.ACOGPos = Vector(-2.211, -4, 0.146)
	SWEP.ACOGAng = Vector(-1.4, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.201, -4.148, 0.425)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.ColtPos = Vector(-2.175, -1.5, -0.790)
	SWEP.ColtAng = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-4.5, 2.75, 0.5)
	SWEP.TacStanceAng = Vector(0,0, -55)
	
	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-2.211, -4, -0.95), [2] = Vector(-2, 0, 0)},
["md_ins2coltscope"] = {[1] = Vector(-4.5, 2.75, 0.5), [2] = Vector(0,0, -55)},
["too_optic_tacstance"] = {[1] = Vector(-2.208, -4.3, 0.143), [2] = Vector(0.605, 0, -0.217)},
["bg_foldsight"] = {[1] = Vector(-4.5, 2.75, 0.5), [2] = Vector(0,0, -55)}
	}

	SWEP.ACOGAxisAlign = {right = -0.58, up = -0.01, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = -2, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.ForegripOverridePos = {
		["md_cmag_556_official"] = {
			weakOverride = true,
			["Bip01 L UpperArm"] = {pos = Vector(-0.732, -1.836, -4.113), angle = Angle(0, -12.549, 0) }
		}
	}
	
	SWEP.magBoneName = {"Magazine001", "Bullets001"}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.NXSAlign = {right = -1.97, up = -0.01, forward = 0}
	
	SWEP.AttachmentModelsVM = {
		["md_ins2coltscope"] = {model = "models/khrcw2/ins2pack/attachments/coltchscope.mdl", pos = Vector(0,3,4.2), angle = Angle(0,-90,0), size = Vector(.9, .9, .9), bone = "smdimport001"},
		["ins2_atow_clamplaser"] = {model = "models/khrcw2/ins2pack/attachments/lasers/laserrifle.mdl", pos = Vector(-2.2,-6,4.2), angle = Angle(0, -90, 90), size = Vector(1,1,1), bone = "smdimport001"},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "smdimport001", rel = "", pos = Vector(-0.281, -4.55, -2.086), adjustment = {min = -4.3, max = -2.8, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, 0, 1), size = Vector(1, 1, 1)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "smdimport001", rel = "", pos = Vector(0.238, -9.3, -7.223), adjustment = {min = -9.2, max = -7.6, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "smdimport001", rel = "", pos = Vector(-0.452, -2.556, -1.428), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "smdimport001", pos = Vector(-0.042, 4.362, 0.1), angle = Angle(0, 0, 2), size = Vector(0.75, 0.75, 0.75)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "smdimport001", pos = Vector(-0.027, 1.25, 3.634), adjustment = {min = 1.25, max = 3.6, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, 180, 0), size = Vector(0.4, 0.4, 0.4)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "smdimport001", pos = Vector(-0.401, -3.291, -2.22), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "smdimport001", pos = Vector(-0.225, 9.715, 3.15), angle = Angle(0, 90, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "smdimport001", pos = Vector(2.299, -6.611, 4.138), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), animated = true},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "smdimport001", pos = Vector(-0.011, 14.541, 0.441), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "smdimport001", pos = Vector(-0.35, -2.554, -1.627), angle = Angle(0, -90, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "smdimport001", pos = Vector(-0.105, 3.852, 4.574), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_cmag_556_official"] = {model = "models/wystan/Cmag.mdl", bone = "Magazine001", pos = Vector(-0.191, -3.323, -1.254), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6),}
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
		["md_saker"] = {["bg_longbarrel"] = Vector(-0.042, 9, -0.1), ["bg_longris"] = Vector(-0.042, 9, -0.1)},
		["ins2_atow_clamplaser"] = {["bg_longbarrel"] = Vector(-2.2,-2.5,4.2), ["bg_longris"] = Vector(-2.2,-2.5,4.2)},
		["md_bipod"] = {bg_longris = Vector(-0.011, 14.541, 0.441)
		},
	
		
	}



	
	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(2, 180, 0) 
end


SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.StudioBGs = {
    main = 0,
	receiver = 0,
    none = 1
}
SWEP.SightBGs = {main = 4, carryhandle = 0, foldsight = 1, none = 2}
SWEP.BarrelBGs = {main = 3, ris = 1, magpul = 2, long = 3, longris = 4, none = 5, regular = 0}
SWEP.StockBGs = {
    main = 2,
    none = 4,
	buffertube = 3,
	regular = 0,
	heavy = 1,
	sturdy = 2
}
SWEP.MagBGs = {
    main = 5,
    regular = 0,
    round60 = 1,
    none = 2
}
SWEP.HandsBGs = {
    main = 1,
	hands = 0,
    none = 1
}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "The definitive American weapon that broke tradition in the face of modern warfare.", x = -400, y = -800}


SWEP.Attachments = {[1] = {header = "Sight", offset = {950, -600}, atts = {"bg_foldsight", "md_ins2coltscope", "md_microt1", "md_aimpoint", "md_schmidt_shortdot", "md_acog", "md_nightforce_nxs", "too_optic_tacstance"}},
	[2] = {header = "Muzzle", offset = {300, -600}, atts = {"md_saker"}},
	[3] = {header = "Barrel", offset = {-400, -600}, atts = {"bg_magpulhandguard", "bg_longbarrel", "bg_ris", "bg_longris"}},
	[4] = {header = "Underbarrel", offset = {-500, -25}, atts = {"md_foregrip", "md_bipod", "md_m203"}},
	[5] = {header = "Magazine", offset = {0, 650}, atts = {"bg_ar1560rndmag", "md_cmag_556_official"}, exclusions = {too_m4a1_50_beowulf = true}},
	[6] = {header = "Stock", offset = {1500, 600}, atts = {"bg_ar15sturdystock", "bg_ar15heavystock", "bg_nostock"}},
	[7] = {header = "Laser", offset = {1300, 0}, atts = {"ins2_atow_clamplaser","md_anpeq15"}},
	[8] = {header = "Signature Attachment", offset = {500, 500}, atts = {"too_m4a1_50_beowulf"}},
	["+reload"] = {header = "Ammo", offset = {-900, 400}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}
}
SWEP.AttachmentDependencies = {
	["md_m203"] = {"bg_longris"},
	md_bipod = {"bg_longris"}
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
	

if self.ActiveAttachments.ins2_atow_clamplaser then
	self.LaserPosAdjust = Vector(2.5, 20, -2.2)
	self.LaserAngAdjust = Angle(0,-2,0) 
end

if self.ActiveAttachments.md_anpeq15 then
		self.LaserPosAdjust = Vector(1, 0, 0)
	    self.LaserAngAdjust = Angle(2, 180, 0)  
end



	self.EffectiveRange = 50 * 39.37
	self.DamageFallOff = .3

    if self.ActiveAttachments.too_m4a1_50_beowulf then
		self.EffectiveRange = ((self.EffectiveRange - 15 * 39.37))
		self.DamageFallOff = ((self.DamageFallOff + 0.2))
	end
	if self.ActiveAttachments.bg_nostock then
		self:setBodygroup(self.StockBGs.main, self.StockBGs.buffertube)
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

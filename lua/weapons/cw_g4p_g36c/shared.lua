if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G36C"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/g36c")
	killicon.Add("cw_g4p_g36c", "vgui/killicons/g36c", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 45 * 39.37
	SWEP.DamageFallOff_Orig = .4

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.CustomizePos = Vector(-10.5, -5.8, 0.4)
	SWEP.CustomizeAng = Vector(27, -50, -30)
	
	SWEP.IronsightPos = Vector(4.064, -3, 1.475)
	SWEP.IronsightAng = Vector(0.237, 0, 0)
	
    SWEP.RMRPos = Vector(4.07, -3.994, 1.16)
    SWEP.RMRAng = Vector(0, 0, 0)
		
	SWEP.POINTPos = Vector(4.07, -3.994, 1.122)
    SWEP.POINTAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(4.07, -3.994, 1.138)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.CmorePos = Vector(4.071, -3.994, 0.981)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.TrijiconPos = Vector(4.039, -4, 0.879)
	SWEP.TrijiconAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(4.054, -4, 0.949)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ROMEO4TPos = Vector(4.07, -4, 0.67)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(3.997, -3.75, 0.714)
	SWEP.AimpointAng = Vector(0, 0, 0)
		
	SWEP.EXPSPos = Vector(4.07, -3.994, 0.688)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ENFORPos = Vector(4.07, -3.994, 0.845)
    SWEP.ENFORAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(4.07, -5, 0.92)
    SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(4.04, -5, 0.5)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(4.079, -7, 0.584)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.CSGOACOGPos = Vector(4.067, -5.801, 0.839)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)

	SWEP.ThermalPos = Vector(4.04, -5, 0.5)
	SWEP.ThermalAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(4.07, -5, 0.66)
    SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(5.5, -1, 2.25)
	SWEP.TacStanceAng = Vector(0,0,45)

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(-0.801, -0.601, 1)
	SWEP.SprintAng = Vector(-13, -26, 0)

	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.BackupSights = {
		["too_optic_tacstance"] = {[1] = Vector(4.064, -3, 1.475), [2] = Vector(0.237, 0, 0)},
		["md_rmr"] = {[1] = Vector(5.5, -1, 2.25), [2] = Vector(0,0,45)},
		["xrkonpoint"] = {[1] = Vector(5.5, -1, 2.25), [2] = Vector(0,0,45)},
		["md_reflex"] = {[1] = Vector(5.5, -1, 2.25), [2] = Vector(0,0,45)},
		["md_cmore"] = {[1] = Vector(5.5, -1, 2.25), [2] = Vector(0,0,45)},
		["md_trijicon"] = {[1] = Vector(5.5, -1, 2.25), [2] = Vector(0,0,45)},
		["md_microt1"] = {[1] = Vector(5.5, 0, 2.25), [2] = Vector(0,0,45)},
		["too_reflex_romeo4t"] = {[1] = Vector(5.5, -3, 2.25), [2] = Vector(0,0,45)},
		["md_aimpoint"] = {[1] = Vector(5.5, -1, 2.25), [2] = Vector(0,0,45)},
		["too_reflex_exps"] = {[1] = Vector(5.5, -1, 2.25), [2] = Vector(0,0,45)},
		["corioenforcer"] = {[1] = Vector(5.5, -3, 2.25), [2] = Vector(0,0,45)},
		["md_schmidt_shortdot"] = {[1] = Vector(5.5, 0, 2.25), [2] = Vector(0,0,45)},
		["md_elcan"] = {[1] = Vector(4.065, 0, -0.495), [2] = Vector(-0.1, 0.2, 0)},
		["md_acog_fixed"] = {[1] = Vector(4.074, 0, -0.43), [2] = Vector(0, 0, 0)},
		["md_uecw_csgo_acog"] = {[1] = Vector(5.5, 0, 2.25), [2] = Vector(0,0,45)},
		["md_nightforce_nxs"] = {[1] = Vector(5.5, 0, 2.25), [2] = Vector(0,0,45)}
	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Right_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		--Muzzles
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "BaseW", rel = "", pos = Vector(0.059, -3.661, -0.84), angle = Angle(0, 180, 0), size = Vector(1, 1, 1)},
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "BaseW", rel = "", pos = Vector(0.019, -24.4, 1.2), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
		--Lasers
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "BaseW", rel = "", pos = Vector(0.026, -15.165, 4.57), angle = Angle(0, 90, 0), size = Vector(0.83, 0.83, 0.83)},
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "BaseW", rel = "", pos = Vector(0.119, -15.406, 4.519), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		--Optics
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "BaseW", pos = Vector(0.36, -4.68, -0.523), angle = Angle(0, 90, 0), size = Vector(0.9, 0.9, 0.9)},
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "BaseW", rel = "", pos = Vector(0.03, -9.66, 4.677), angle = Angle(0, 90, 0), size = Vector(0.7, 0.81, 0.81), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "BaseW", rel = "", pos = Vector(0.037, -13.195, 4.736), angle = Angle(0, 180, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "BaseW", rel = "", pos = Vector(0.025, -10.483, 4.487), angle = Angle(0, 180, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "BaseW", rel = "", pos = Vector(0, -13.4, 2), angle = Angle(0, 180, 0), size = Vector(2.2, 2.2, 2.2)},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "BaseW", rel = "", pos = Vector(0, -11.2, 4.739), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4)},
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "BaseW", rel = "", pos = Vector(0.026, -11.29, 4.57), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "BaseW", pos = Vector(0.212, -4.581, -1.032), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "BaseW", rel = "", pos = Vector(0.025, -10.46, 4.57), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "BaseW", rel = "", pos = Vector(-0.05, -9.788, 4.352), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "BaseW", pos = Vector(0.341, -5.92 , -0.24), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "BaseW", pos = Vector(0.368, -5.67, -1.157), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog_fixed"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "BaseW", rel = "", pos = Vector(0.36, -6.2, -0.52), angle = Angle(0, 180, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "BaseW", rel = "", pos = Vector(-0.02, -4.801, 0.959), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "BaseW", pos = Vector(0.368, -5.67, -1.157), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "BaseW", rel = "", pos = Vector(0.16, -11.35, 5.8885), angle = Angle(0, 90, 0), size = Vector(1.2, 1.2, 1.2)},
		--Underbarrels
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "BaseW", rel = "", pos = Vector(0, -16.891, 1.624), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "BaseW", rel = "", pos = Vector(0, -17.46, 1.391), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "BaseW", rel = "", pos = Vector(-0.373, -27.9, -0.833), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "BaseW", rel = "", pos = Vector(0.112, -19.25, 0.537), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		["md_m203"] = { type = "Model", model = "models/cw2/attachments/m203.mdl", bone = "BaseW", rel = "", pos = Vector(-2.36, 1.58, 4.699), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), animated = true},
	}

	SWEP.ForeGripHoldPos = {
		['Right_Forearm'] = {pos = Vector(0.6, -0.12, 4.25), angle = Angle(0, 0, 0)},
		['R_Thumb'] = {vecotr = Vector(0, 0, 0), angle = Angle(-2.9189999103546, -14.031000137329, -2.625)},
		['R_Thumb2'] = {vector = Vector(0, 0, 0), angle = Angle(-0.31900000572205, 0, -20.325000762939)}
	}

	SWEP.ForegripOverridePos = {
		["default"] = {},
		
		["bruentiltgrip_r"] = {
			['Right_Forearm'] = {pos = Vector(0.6, -0.12, 4.25), angle = Angle(0, 0, 0)},
			['R_Thumb'] = {vecotr = Vector(0, 0, 0), angle = Angle(-2.9189999103546, -14.031000137329, -2.625)},
			['R_Thumb2'] = {vector = Vector(0, 0, 0), angle = Angle(-0.31900000572205, 0, -20.325000762939)}
		}}
	
	SWEP.M203HoldPos = {
		["Right_Arm"] = {pos = Vector(-0.5, 0, 4), angle = Angle(0, 0, 0)}
	}

	SWEP.GrimlinePosAdjust = Vector(0.5, 0, 0)
	SWEP.GrimlineAngAdjust = Angle(0, 0, 0) 

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
function SWEP:RenderTargetFunc()
	
	if !self.SkinSilencerInstalled then -- if we dont have skin silencer, hide it
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone("silencer"), Vector(0.009, 0.009, 0.009))
	else
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone("silencer"), Vector(1, 1, 1))
	end

end

end

SWEP.MaterialIndexPrimary = {4}
SWEP.MaterialIndexSecondary = {2, 3, 5, 6}

SWEP.BoltBone = "slide"
SWEP.BoltShootOffset = Vector(0, 2, 0)

--SWEP.SightBGs = {main = 2, none = 1}

SWEP.LuaViewmodelRecoil = true
SWEP.CustomizationMenuScale = 0.012

SWEP.Trivia = {text = "A compact German assault rifle that sees widespread use in modern militaries.", x = 0, y = -800}

SWEP.Attachments = {[1] = {header = "Sight", offset = {100, -700},  atts = {"md_rmr", "xrkonpoint", "md_reflex", "md_cmore", "md_trijicon", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "too_reflex_exps", "corioenforcer", "md_schmidt_shortdot", "md_elcan", "md_acog_fixed", "md_uecw_csgo_acog", "md_thermal", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-700, -235}, atts = {"md_saker", "md_csgo_silencer_rifle", "uecw_skin_silencer"}},
	[3] = {header = "Handguard", offset = {-700, 200}, atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_bipod", "md_m203"}},
	[4] = {header = "Laser", offset = {-700, -700}, atts = {"ftacgrimline", "md_anpeq15"}},
	[5] = {header = "Skins", offset = {850, 400}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes","md_skinyellowjacket"}},
	["+use"] = {header = "Optic Type", offset = {1650, -700}, atts = {"too_optic_category_reflex", "too_optic_category_magnified", "too_optic_tacstance"}},
	["+reload"] = {header = "Ammo", offset = {1200, -200}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
	
--SWEP.AttachmentDependencies = {["md_anpeq15"] = {"md_microt1"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

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
		["md_uecw_csgo_acog"] = {"too_optic_category_magnified"},
		["md_thermal"] = {"too_optic_category_magnified"},
		["md_nightforce_nxs"] = {"too_optic_category_magnified"}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.4, sound = "CW_G36C_MAGOUT"},
	[2] = {time = 1.1, sound = "CW_G36C_MAGIN"},
	[3] = {time = 2.1, sound = "CW_G36C_BOLTPULL"},
	[4] = {time = 2.35, sound = "CW_G36C_BOLTRELEASE"}},
	draw = {[1] = {time = 0.1, sound = "CW_G36C_BOLTPULL"},
	[2] = {time = 0.4, sound = "CW_G36C_BOLTRELEASE"}},
	drawkek = {{time = 0.01, sound = "CW_XM8_CLOTH"}}}

SWEP.SpeedDec = 25

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "2burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/weapons/v_rif_g36c.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_G36C_FIRE"
SWEP.FireSoundSuppressed = "CW_G36C_FIRE_SUPPRESSED"
SWEP.Recoil = 0.95

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 37
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.6
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadHalt = 1.8
SWEP.ReloadHalt_Empty = 3
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 45 * 39.37
self.DamageFallOff = .4
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
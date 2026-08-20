if not CustomizableWeaponry then return end

SWEP.magType = "brMag"
SWEP.wpnEmptyType = "rifle"

if CLIENT then

--Basic Information
SWEP.DrawCrosshair = false
SWEP.PrintName = "L86 LSW"
SWEP.UseHands = true
SWEP.CSMuzzleFlashes = true
SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.PosBasedMuz = false
SWEP.SnapToGrip = false

SWEP.SelectIcon = surface.GetTextureID("vgui/cw2_mw3_sa80")
killicon.Add("cw2_mw3_sa80", "mw3_icons/hud/hud_sa80", Color(255, 255, 255, 0))

SWEP.CustomizePos = Vector(6.88, -2.073, 1.12)
SWEP.CustomizeAng = Vector(21.361, 35.674, 25.371)

SWEP.LaserPosAdjust = Vector(-1, 0, 0)
SWEP.LaserAngAdjust = Angle(0, 180, 0)

--Sight Positions

	SWEP.IronsightPos = Vector(-2.4123, -2.0385, -0.5166)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-2.419, 0, 0.15)
	SWEP.MRSAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-2.419, 1.5, 0.5)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.45, 2, 0.13)
	SWEP.AimpointAng = Vector(0, 0, 0)

	SWEP.EXPSPos = Vector(-2.4094, -0.0018, 0.2)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ShortDotPos = Vector(-2.4018, -0.5, 0.4)
	SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-2.385, 0.5, 0.165)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.4094, 0.5, 0)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.CSGOACOGPos = Vector(-2.405, 0.5, 0.3)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)

	SWEP.CSGO556Pos = Vector(-2.4094, 0.5, 0.56)
	SWEP.CSGO556Ang = Vector(0, 0, 0)

	SWEP.ThermalPos = Vector(-2.385, 0.5, 0.165)
	SWEP.ThermalAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-4.2, 0.5, 1)
	SWEP.TacStanceAng = Vector(0, 0, -45)

	SWEP.BackupSights = {
		["too_optic_tacstance"] = {[1] = Vector(-2.4123, -2.0385, -0.5166), [2] = Vector(0, 0, 0)},
		["too_reflex_mrs"] = {[1] = Vector(-4.2, -0.5, 1), [2] = Vector(0,0,-45)},
		["md_microt1"] = {[1] = Vector(-4.2, 2, 1), [2] = Vector(0,0,-45)},
		["md_aimpoint"] = {[1] = Vector(-4.2, 1, 1), [2] = Vector(0,0,-45)},
		["too_reflex_exps"] = {[1] = Vector(-4.2, 0.5, 1), [2] = Vector(0,0,-45)},
		["md_schmidt_shortdot"] = {[1] = Vector(-4.2, 2, 1), [2] = Vector(0,0,-45)},
		["md_elcan"] = {[1] = Vector(-2.387, 7, -0.811), [2] = Vector(-0.1, -0.092, 0)},
		["md_acog"] = {[1] = Vector(-2.4123, 7, -1.3155), [2] = Vector(0, 0, 0)},
		["md_uecw_csgo_acog"] = {[1] = Vector(-4.2, 2, 1), [2] = Vector(0,0,-45)},
		["md_uecw_csgo_556"] = {[1] = Vector(-2.4123, 7, -0.7345), [2] = Vector(0.81, 0, 0)},
	}

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/ma85_mw3/sa80/worldmodel.mdl"
SWEP.WMPos = Vector( -14, -0.5, 3.25)
SWEP.WMAng = Vector(-5, 88, 180)

-- LUA Recoil
SWEP.LuaViewmodelRecoil = false
SWEP.FullAimViewmodelRecoil = true
SWEP.DisableSprintViewSimulation = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 5, roll = 0, forward = -4, pitch = 1}

--Shell
SWEP.ShellScale = 0.5
SWEP.ShellOffsetMul = 1
SWEP.ShellPosOffset = {x = 0, y = 0, z = -1}

--Bolt movement
--SWEP.BoltBone = "j_bolt2"
SWEP.BoltShootOffset = Vector(-1.5, 0, 0)
SWEP.HoldBoltWhileEmpty = false
SWEP.DontHoldWhenReloading = true
SWEP.BoltBonePositionRecoverySpeed = 15

SWEP.MaterialIndexPrimary = {0}
SWEP.MaterialIndexSecondary = {1, 2, 3}

/*
0 - Body
1 - Magazine
2 - Bipod
*/

SWEP.ForegripOverride = true
SWEP.ForegripOverridePos = {
["null"] = {},

["customize"] = {
	["j_shoulder_le"] = { scale = Vector(1.1, 1.1, 1.1), pos = Vector(-0.038, 2.628, -6.242), angle = Angle(-35.389, 0, 0) },
} 
}

SWEP.MagBoneName = "tag_clip"

	SWEP.AttachmentModelsVM = {
		["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "tag_red_dot", rel = "", pos = Vector(-0.75, 0, 0.135), angle = Angle(0, 0, 0), adjustment = {min = -1.426, max = 1.3, axis = "x", inverse = true}, size = Vector(1.083, 1.083, 1.083), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "tag_red_dot", rel = "", pos = Vector(-1.3, -0.012, 0.353), angle = Angle(0, -90, 0), adjustment = {min = -1.975, max = 1.710, axis = "x", inverse = true}, size = Vector(0.515, 0.515, 0.515), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "tag_weapon", rel = "", pos = Vector(-12.37, 0.381, -5.183), angle = Angle(0, 90, 0), adjustment = {min = -12.98, max = -11, axis = "x", inverse = true}, size = Vector(1.33, 1.33, 1.33), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "tag_eotech", rel = "", pos = Vector(0.21, -0.002, 0.127), angle = Angle(0, 0, 0), adjustment = {min = -0.444, max = 2.222, axis = "x", inverse = true}, size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "tag_acog_2", rel = "", pos = Vector(-6.25, 0.348, -5.725), angle = Angle(0, 90, 0), adjustment = {min = -6.887, max = -5.430, axis = "x", inverseOffs1etCalc = false}, size = Vector(1.04, 1.04, 1.04), color = Color(255, 255, 255, 0)},
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "tag_acog_2", rel = "", pos = Vector(-7.01, 0.412, -6.329), angle = Angle(0, 0, 0), adjustment = {min = -7.66, max = -5.64, axis = "x", inverse = true}, size = Vector(1.15, 1.15, 1.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "tag_acog_2", rel = "", pos = Vector(-7.2, 0.43, -6.491), angle = Angle(0, 90, 0), adjustment = {min = -7.865, max = -6.4, axis = "x", inverse = true}, size = Vector(1.178, 1.178, 1.178), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "tag_acog_2", rel = "", pos = Vector(-8.3, -0.068, -4.546), angle = Angle(0, 0, 0), adjustment = {min = -8.94, max = -7.799, axis = "y", inverseOffs1etCalc = false}, size = Vector(1.055, 1.055, 1.055)},
		["md_uecw_csgo_556"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_sig.mdl", bone = "tag_acog_2", rel = "", pos = Vector(-0.1, -0.06, -0.061), angle = Angle(0, 0, 0), adjustment = {min = -0.773, max = 0.881, axis = "x", inverseOffs1etCalc = false}, size = Vector(1.01, 1.01, 1.01)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "tag_acog_2", rel = "", pos = Vector(-6.25, 0.348, -5.725), angle = Angle(0, 90, 0), adjustment = {min = -6.887, max = -5.430, axis = "x", inverseOffs1etCalc = false}, size = Vector(1.04, 1.04, 1.04), color = Color(255, 255, 255, 0)},
		
		--Muzzles
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "tag_silencer", rel = "", pos = Vector(-10.4, 0.006, -1.85), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

		--Underbarrels
		["md_foregrip"] = { 
			models = {
				{type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "tag_foregrip", rel = "", pos = Vector(10.672, -0.386, -2.917), angle = Angle(0, -90, 0), size = Vector(0.707, 0.707, 0.707), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
				{type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "tag_foregrip", rel = "", pos = Vector(-1.962, -0.362, 2.049), angle = Angle(0, 0, 180), size = Vector(0.9, 1.53, 1.53), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}}}
			},
		
		--Lasers
		["md_anpeq15"] = { 
			models = {
				{type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "tag_weapon", rel = "", pos = Vector(5.556, 1.338, 0.428), angle = Angle(0, 180, -77.426), adjustment = {min = 4.147, max = 6.956, axis = "x", inverse = true}, size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
				{type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.965, -1.234, -0.362), angle = Angle(0, 0, 77.426), size = Vector(0.9, 1.53, 1.53), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}}}
			},

		--Magazines
		["md_small30rndstanag"] = { type = "Model", model = "models/gmod4phun/usgimag.mdl", bone = "tag_clip", rel = "", pos = Vector(0.05, 0, -0.39), angle = Angle(0, 90, 0), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_small30rndpmag"] = { type = "Model", model = "models/gmod4phun/pmag30.mdl", bone = "tag_clip", rel = "", pos = Vector(0.233, 0.013, -2.075), angle = Angle(0, 0, 0), size = Vector(0.727, 0.727, 0.727), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_small40rndemag"] = { type = "Model", model = "models/gmod4phun/emag.mdl", bone = "tag_clip", rel = "", pos = Vector(0.036, 0, -2.723), angle = Angle(0, 90, 0), size = Vector(0.62, 0.62, 0.62), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_m24960rndsurefire"] = { type = "Model", model = "models/gmod4phun/60rndmag.mdl", bone = "tag_clip", rel = "", pos = Vector(1.216, 0.975, 2.27), angle = Angle(45, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Animations = {
fire = "reg_fire",
reload = "reg_reload",
reload_empty = "reg_reload",
idle = "reg_idle",
draw = "reg_draw",
holster = "reg_holster",
}

SWEP.Animations_Grip = {
fire = "grip_fire",
reload = "grip_reload",
reload_empty = "grip_reload",
idle = "grip_idle",
draw = "grip_draw",
holster = "grip_holster"
}

SWEP.Animations_Normal = SWEP.Animations

--Customization Information
SWEP.CustomizationMenuScale = 0.014

SWEP.Trivia = {text = "Accurate yet maneuverable, this machine gun is the weapon of choice of C.G.I.'s commander.", x = 0, y = -500}

SWEP.Attachments = {[1] = {header = "Sight", offset = {1200, -300},  atts = {"too_reflex_mrs", "md_microt1", "md_aimpoint", "too_reflex_exps", "md_schmidt_shortdot", "md_elcan", "md_acog", "md_uecw_csgo_acog", "md_uecw_csgo_556", "md_thermal"}},
	[2] = {header = "Muzzle", offset = {-500, -150}, atts = {"md_saker"}},
	[3] = {header = "Handguard", offset = {-800, 750}, atts = {"md_foregrip"}},
	[4] = {header = "Laser", offset = {-800, 250},  atts = {"md_anpeq15"}},
	[5] = {header = "Magazines", offset = {1400, 1150},  atts = {"md_small30rndstanag", "md_small30rndpmag", "md_small40rndemag"}},
	[6] = {header = "Signature Attachment", offset = {1200, 650},  atts = {"too_l86_conversion"}},
    [7] = {header = "Skins", offset = {2000, 200}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir", "md_skinrunes", "md_skinyellowjacket"}},
	["+use"] = {header = "Optic Type", offset = {2200, -300}, atts = {"too_optic_category_reflex", "too_optic_category_magnified", "too_optic_tacstance"}},
    ["+reload"] = {header = "Ammo", offset = {2000, 800}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

    SWEP.AttachmentDependencies = {
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["md_microt1"] = {"too_optic_category_reflex"},
		["md_aimpoint"] = {"too_optic_category_reflex"},
		["too_reflex_exps"] = {"too_optic_category_reflex"},
		["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
		["md_elcan"] = {"too_optic_category_magnified"},
		["md_acog"] = {"too_optic_category_magnified"},
		["md_uecw_csgo_acog"] = {"too_optic_category_magnified"},
		["md_thermal"] = {"too_optic_category_magnified"},
		["md_uecw_csgo_556"] = {"too_optic_category_magnified"}
	}

--Other information
SWEP.SpeedDec = 45

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Machine Guns"

SWEP.ViewModelMovementScale = 1

SWEP.ZoomAmount = 10
SWEP.AimViewModelFOV = 60
SWEP.BobScale = 0
SWEP.ReticleInactivityPostFire = 0

SWEP.Author = "Moka_Akashiya85"
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = ""

SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/ma85_mw3/sa80/viewmodel.mdl"
SWEP.WorldModel = "models/ma85_mw3/sa80/worldmodel.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 400
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 775
SWEP.FireDelay_Orig = SWEP.FireDelay

SWEP.Recoil = 0.5

SWEP.ShotgunReloadState = 0

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0.0125
SWEP.VelocitySensitivity = 1.35
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Damage = 32
SWEP.DeployTime = 0.8

SWEP.CanRestOnObjects = TRUE
SWEP.ReloadViewBobEnabled = false
SWEP.ADSFireAnim = false
SWEP.FirstDeploy = true

SWEP.PenMod = 1
SWEP.PenMod_Orig = SWEP.PenMod

--Damage
SWEP.Shots = 1
SWEP.Damage = 32
SWEP.PushForce = 5

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6 -- Time when the magazine is inserted
SWEP.ReloadHalt = 2.6
SWEP.ReloadTime_Empty = 3 -- Time when the bolt is cycled after an empty reload
SWEP.ReloadHalt_Empty = 3

SWEP.BipodInstalled = true
SWEP.BipodRecoilModifier = 0.75

SWEP.SnapToIdlePostReload = true

SWEP.EffectiveRange = 55 * 39.37
SWEP.EffectiveRange_Orig = SWEP.EffectiveRange
SWEP.DamageFallOff = .2
SWEP.DamageFallOff_Orig = SWEP.DamageFallOff

SWEP.Chamberable = true

-- Bodygroups
SWEP.SightBGs = {main = 1, on = 0, none = 1}
SWEP.MuzzleBGs = {main = 0, normal = 0, off = 0}
SWEP.GripBGs = {main = 0, normal = 0}
SWEP.HandBGs = {main = 0, normal = 1}

--Draw/Holster
SWEP.DrawSpeed = 1
SWEP.HolsterTime = 0.4

--Sounds
CustomizableWeaponry:addFireSound("MW3_sa80_FIRE", {"ma85_mw3/weapons/sa80/fire.wav"}, 0.35, 100, CHAN_WEAPON, 95, 110)
CustomizableWeaponry:addFireSound("MW3_sa80_FIRE_SUPPRESSED", {"ma85_mw3/weapons/sa80/fire_suppressed.wav"}, 0.35, 100, CHAN_WEAPON, 95, 110)

CustomizableWeaponry:addReloadSound("mw3_sa80_RELOAD_1", "ma85_mw3/weapons/sa80/lift.wav")
CustomizableWeaponry:addReloadSound("mw3_sa80_RELOAD_2", "ma85_mw3/weapons/sa80/magout.wav")
CustomizableWeaponry:addReloadSound("mw3_sa80_RELOAD_3", "ma85_mw3/weapons/sa80/magin.wav")
CustomizableWeaponry:addReloadSound("mw3_sa80_RELOAD_4", "ma85_mw3/weapons/sa80/hit.wav")
CustomizableWeaponry:addReloadSound("mw3_sa80_RELOAD_5", "ma85_mw3/weapons/sa80/bolt.wav")
CustomizableWeaponry:addReloadSound("MW3_RAISE_ALT", "ma85_mw3/weapons/sa80/swap01.wav")

SWEP.LoopFireSound = false
SWEP.FireSound = "MW3_sa80_FIRE"
SWEP.FireSoundSuppressed = "MW3_sa80_FIRE_SUPPRESSED"

SWEP.Sounds = {
reg_draw = {
[1] = {time = 0, sound = "MW3_RAISE_ALT"},
},

reg_reload = {
[1] = {time = 0, sound = "MW3_sa80_RELOAD_1"},
[2] = {time = 0.6, sound = "MW3_sa80_RELOAD_2"},
[3] = {time = 2.1, sound = "MW3_sa80_RELOAD_3"},
[4] = {time = 2.45, sound = "MW3_sa80_RELOAD_4"},
[5] = {time = 2.8, sound = "MW3_sa80_RELOAD_5"},
},

grip_draw = {
[1] = {time = 0, sound = "MW3_RAISE_ALT"},
},

grip_reload = {
[1] = {time = 0, sound = "MW3_sa80_RELOAD_1"},
[2] = {time = 0.6, sound = "MW3_sa80_RELOAD_2"},
[3] = {time = 2.1, sound = "MW3_sa80_RELOAD_3"},
[4] = {time = 2.45, sound = "MW3_sa80_RELOAD_4"},
[5] = {time = 2.8, sound = "MW3_sa80_RELOAD_5"},
},

}

function SWEP:IndividualThink()
	self.Owner.ViewAff = 0
	clip = self:Clip1()
	self.EffectiveRange = 55 * 39.37
	self.DamageFallOff = .2

	self:setBodygroup(self.SightBGs.main, self.SightBGs.on)

	if CLIENT then
		if self.dt.State == CW_CUSTOMIZE then
			self.ForegripParent = "customize"
		else
			self.ForegripParent = "null"
		end
	end

	if self.ActiveAttachments.too_reflex_mrs or self.ActiveAttachments.md_microt1 or self.ActiveAttachments.md_aimpoint or self.ActiveAttachments.too_reflex_exps or self.ActiveAttachments.md_schmidt_shortdot or self.ActiveAttachments.md_elcan or self.ActiveAttachments.md_acog or self.ActiveAttachments.md_uecw_csgo_acog or self.ActiveAttachments.md_uecw_csgo_556 or self.ActiveAttachments.md_thermal then
		self:setBodygroup(self.SightBGs.main, self.SightBGs.none)
	end

	if self.ActiveAttachments.too_l86_conversion then
		self.DamageFallOff = ((self.DamageFallOff - 0.05))
	end

	local hasGrip = self.ActiveAttachments.md_foregrip == true
	if hasGrip ~= self.GripAnimationsActive then
		self.GripAnimationsActive = hasGrip
		self.Animations = hasGrip and self.Animations_Grip or self.Animations_Normal
		self:sendWeaponAnim("idle")
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
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "L85A2"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.01
	
	SWEP.IconLetter = "i"
	SWEP.SelectIcon = surface.GetTextureID("vgui/l85a2")
	killicon.Add("cw_l85a2", "vgui/killicons/l85a2", Color(255, 120, 40, 0))

	SWEP.EffectiveRange_Orig = 50 * 39.37
	SWEP.DamageFallOff_Orig = .25

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = -5, z = -2}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.52
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.52
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_cw20_l85a2.mdl"
	SWEP.WMPos = Vector(0, -19, -7.5)
	SWEP.WMAng = Vector(-6, 0, 180)
		
	SWEP.IronsightPos = Vector(-2.218, -1.785, -0.072)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.RMRPos = Vector(-2.2, -5, 0.821)
	SWEP.RMRAng = Vector(0, 0, 0)

	SWEP.POINTPos = Vector(-2.218, -5, 0.75)
    SWEP.POINTAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(-2.218, -5, 0.6)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.CmorePos = Vector(-2.218, -5, 0.42)
	SWEP.CmoreAng = Vector(0, 0, 0)

	SWEP.TrijiconPos = Vector(-2.16, -5, 0.424)
	SWEP.TrijiconAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-2.211, -5, 0.518)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ROMEO4TPos = Vector(-2.218, -5, 0.268)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.221, -6.48, 0.474)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.EXPSPos = Vector(-2.203, -5, 0.28)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ENFORPos = Vector(-2.208, -5, 0.42)
    SWEP.ENFORAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.145, -7, 0.44)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.ELCANPos = Vector(-2.218, -7.3, 0.378)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.204, -7.3, 0.15)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.ThermalPos = Vector(-2.218, -7.3, 0.378)
	SWEP.ThermalAng = Vector(0, 0, 0)

	SWEP.NXSPos = Vector(-2.232, -5, 0.22)
    SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)

	SWEP.BackupSights = {
		["md_rmr"] = {[1] = Vector(-3.75, 1.25, 1), [2] = Vector(0,0,-45)},
		["xrkonpoint"] = {[1] = Vector(-3.75, 1.25, 1), [2] = Vector(0,0,-45)},
		["md_reflex"] = {[1] = Vector(-3.75, 1.25, 1), [2] = Vector(0,0,-45)},
		["md_cmore"] = {[1] = Vector(-3.75, 1.25, 1), [2] = Vector(0,0,-45)},
		["md_trijicon"] = {[1] = Vector(-3.75, 1.25, 1), [2] = Vector(0,0,-45)},
		["md_microt1"] = {[1] = Vector(-3.75, 2.75, 1), [2] = Vector(0,0,-45)},
		["too_reflex_romeo4t"] = {[1] = Vector(-3.75, 0.25, 1), [2] = Vector(0,0,-45)},
		["md_aimpoint"] = {[1] = Vector(-3.75, 1.75, 1), [2] = Vector(0,0,-45)},
		["too_reflex_exps"] = {[1] = Vector(-3.75, 1.25, 1), [2] = Vector(0,0,-45)},
		["corioenforcer"] = {[1] = Vector(-3.75, 0.25, 1), [2] = Vector(0,0,-45)},
		["md_schmidt_shortdot"] = {[1] = Vector(-3.75, 2.75, 1), [2] = Vector(0,0,-45)},
		["md_elcan"] = {[1] = Vector(-2.25, 0, -0.39), [2] = Vector(-0.1, -0.2, 0)},
		["md_acog"] = {[1] = Vector(-2.199, 0, -0.973), [2] = Vector(0, 0, 0)},
		["md_nightforce_nxs"] = {[1] = Vector(-4, 2.75, 1.25), [2] = Vector(0,0,-60)}}

	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0.5, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0.42, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(-0.2, 0, -0.4)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.BaseArm = "Left_U_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.AttachmentModelsVM = {
		--Optics
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "body", pos = Vector(-1.84, 2.133, 0.347), angle = Angle(0, 0, -90), size = Vector(1, 1, 1)},
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "body", rel = "", pos = Vector(3.7, -3.64, -0.017), angle = Angle(0, 0, -90), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "body", rel = "", pos = Vector(6.6, -3.804, 0.011), angle = Angle(-90, 0, -90), size = Vector(0.77, 0.77, 0.77), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "body", rel = "", pos = Vector(4.6, -3.531, -0.022), angle = Angle(-90, 0, -90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "body", rel = "", pos = Vector(6.707, -0.704, -0.066), angle = Angle(-90, 0, -90), size = Vector(2.44, 2.44, 2.44)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "body", pos = Vector(3.588, -3.741, -0.049), angle = Angle(90, 0, -90), size = Vector(0.449, 0.449, 0.449)},
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "body", rel = "", pos = Vector(3.59, -3.532, -0.03), angle = Angle(0, 0, -90), size = Vector(0.87, 0.87, 0.87)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "body", pos = Vector(-2.119, 2.118, 0.241), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1)},
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "body", rel = "", pos = Vector(4.55, -3.531, -0.028), angle = Angle(0, 0, -90), size = Vector(0.87, 0.87, 0.87), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "body", rel = "", pos = Vector(3.85, -3.291, -0.106), angle = Angle(0, 0, -90), size = Vector(0.88, 0.88, 0.88), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "body", pos = Vector(-1.6, 2.1, 0.3), angle = Angle(0, 0, -90), size = Vector(1, 1, 1)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "body", rel = "", pos = Vector(-0.79, 0.974, 0.2664), angle = Angle(-90, 0, -90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "body", pos = Vector(-1.433, 2.134, 0.33), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "body", rel = "", pos = Vector(-0.79, 0.974, 0.2664), angle = Angle(-90, 0, -90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "body", rel = "", pos = Vector(4.84, -5.003, 0.128), angle = Angle(0, 0, -90), size = Vector(1.35, 1.35, 1.35)},
		--Lasers
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "body", pos = Vector(4.293, -1.867, -0.764), angle = Angle(180, 0, 0), size = Vector(0.6, 0.6, 0.6)},
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "body", rel = "", pos = Vector(4.212, -1.73, -0.91), angle = Angle(0, 0, -180), size = Vector(0.9, 0.9, 0.9)},
		--Muzzles
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "body", pos = Vector(2.3, -2.477, -1.522), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "body", rel = "", pos = Vector(14.3, -1.61, -0.018), angle = Angle(0, 0, -90), size = Vector(1, 1, 1)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "body", rel = "", pos = Vector(16.46, -2.48, -0.03), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		--Underbarrels
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "body", rel = "", pos = Vector(9.03, -0.479, -0.06), angle = Angle(-90, 90, 0), size = Vector(0.64, 0.64, 0.64), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		--Mags
		["md_uecw_emag"] = { type = "mag", model = "models/gmod4phun/emag.mdl", bone = "mag", rel = "", pos = Vector(0.2, -0.792, 0), angle = Angle(-90, 90, 0), size = Vector(0.548, 0.548, 0.548), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_uecw_60rnd"] = { type = "mag", model = "models/gmod4phun/60rndmag.mdl", bone = "mag", rel = "", pos = Vector(1.864, -1.458, 0), angle = Angle(-90, 90, 0), size = Vector(0.747, 0.747, 0.747), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_tcw_stanag"] = { type = "mag", model = "models/gmod4phun/usgimag.mdl", bone = "Mag", rel = "", pos = Vector(0.216, -2.08, 0), angle = Angle(-90, 90, 0), size = Vector(0.616, 0.616, 0.616), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 2, roll = 1.5, forward = 1, pitch = 1}
	
	SWEP.GrimlinePosAdjust = Vector(0.5, 0, 0)
	SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0)
	SWEP.MaterialIndexPrimary = {0, 3}
	SWEP.MaterialIndexSecondary = {1, 6}
	SWEP.MagBoneName = "mag"
end

SWEP.MuzzleVelocity = 930 -- in meter/s

SWEP.SightBGs = {main = 1, none = 1}
SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "A British bullpup assault rifle, having a longer range yet shorter overall length compared to other traditional rifles.", x = -400, y = -800}

SWEP.AttachmentExclusions = {["am_magnum"] = {"cw_l85a1_conversion"},
							 ["am_matchgrade"] = {"cw_l85a1_conversion"},
							 ["am_atow_heavy"] = {"cw_l85a1_conversion"},
							 ["md_uecw_emag"] = {"cw_l85a1_conversion"},
							 ["md_uecw_60rnd"] = {"cw_l85a1_conversion"}}

SWEP.Attachments = {[1] = {header = "Sight", offset = {50, -700},  atts = {"md_rmr", "xrkonpoint", "md_reflex", "md_cmore", "md_trijicon", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "too_reflex_exps", "corioenforcer", "md_schmidt_shortdot", "md_elcan", "md_acog", "md_thermal", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-600, -700}, atts = {"md_saker", "md_csgo_silencer_rifle", "hard20"}},
	[3] = {header = "Handguard", offset = {-700, 150},  atts = {"md_bipod"}},
	[4] = {header = "Laser", offset = {-800, -300},  atts = {"ftacgrimline", "md_anpeq15"}},
	[5] = {header = "Magazines", offset = {-400, 600},  atts = {"md_uecw_emag", "md_uecw_60rnd", "md_tcw_stanag"}},
	[6] = {header = "Conversion", offset = {800, 700},  atts = {"cw_l85a1_conversion"}},
	[7] = {header = "Skins", offset = {1000, 300}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir", "md_skinrunes", "md_skinyellowjacket"}},
	["+use"] = {header = "Optic Type", offset = {1600, -700}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
	["+reload"] = {header = "Ammo", offset = {1300, -200}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

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
	["md_thermal"] = {"too_optic_category_magnified"},
	["md_nightforce_nxs"] = {"too_optic_category_magnified"}}
	
SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "Reload_Full",
	reload_empty = "Reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_LIGHT"},
	{time = 0.4, sound = "CW_G36C_SELECTFIRE"}},

	Reload = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 0.73, sound = "CW_L85A2_MAGOUT"},
	{time = 1, sound = "CW_FOLEY_LIGHT"},
	{time = 1.3, sound = "CW_G36C_MAGDROP"},
	{time = 2.55, sound = "CW_L85A2_MAGIN"},
	{time = 3.7, sound = "CW_L85A2_BOLTPULL"},
	{time = 4.3, sound = "CW_FOLEY_MEDIUM"}},
	
	Reload_Full = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 0.73, sound = "CW_L85A2_MAGOUT"},
	{time = 1, sound = "CW_FOLEY_LIGHT"},
	{time = 1.3, sound = "CW_G36C_MAGDROP"},
	{time = 2.55, sound = "CW_L85A2_MAGIN"},
	{time = 3, sound = "CW_FOLEY_MEDIUM"}}}

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
SWEP.ViewModel		= "models/cw2/rifles/l85a2.mdl"
SWEP.WorldModel		= "models/weapons/w_cw20_l85a2.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.092
SWEP.FireSound = "CW_L85A2_FIRE"
SWEP.FireSoundSuppressed = "CW_L85A2_FIRE_SUPPRESSED"
SWEP.Recoil = 0.45

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.6
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 39
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1.35
SWEP.ReloadTime = 2.99
SWEP.ReloadTime_Empty = 2.99
SWEP.ReloadHalt = 4.1
SWEP.ReloadHalt_Empty = 5.05

-- the model that this L85A2 uses comes with a grippod, so we add bipod functionality to it, but make it very tame when compared to a regular bipod
SWEP.BipodInstalled = true
SWEP.BipodRecoilModifier = 0.8

function SWEP:getBipodHipSpread()
	return self.HipSpread * 0.75
end

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = .25
self.BipodInstalled = true
self.BipodRecoilModifier = 0.8
if self.ActiveAttachments.md_bipod then
	self.BipodInstalled = true
	self.BipodRecoilModifier = 0.3
end
if (self.ActiveAttachments.cw_l85a1_conversion) then
	self.EffectiveRange = ((self.EffectiveRange - 40 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + 65))
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
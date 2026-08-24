AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Mosin-Nagant"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.Add( "khr_mosin", "icons/killicons/khr_mosin", Color(255, 80, 0, 150))
	SWEP.SelectIcon = surface.GetTextureID("icons/killicons/khr_mosin")

	SWEP.EffectiveRange_Orig = 60 * 39.37
	SWEP.DamageFallOff_Orig = .25
	
	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	SWEP.NoDistance = true
	SWEP.SnapToIdlePostReload = false
	SWEP.CrosshairEnabled = true
	SWEP.FadeCrosshairOnAim = true
	SWEP.CrosshairParts = {left = true, right = true, upper = true, lower = true}
	SWEP.FOVPerShot = 0.25

	SWEP.Shell = "sfkm762r"
	SWEP.ShellScale = 1
	SWEP.ShellDelay = .75 / 1.5
	SWEP.NoShells = false
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 6, y = -.25, z = .5}
	SWEP.FireMoveMod = 0.6
	SWEP.CustomizationMenuScale = 0.02
	
	SWEP.IronsightPos = Vector(-2.8155, -1.6667, 1.455)
	SWEP.IronsightAng = Vector(0, 0.03, 0)

	SWEP.MicroT1Pos = Vector(-2.8155, -1.6667, 0.067)
	SWEP.MicroT1Ang = Vector(0, 0.03, 0)
	
	SWEP.AimpointPos = Vector(-2.868, -1.66674, -0.268)
	SWEP.AimpointAng = Vector(0, 0.03, 0)

	SWEP.ShortDotPos = Vector(-2.8155, -11, -0.034)
	SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.PUPos = Vector(-2.819, 0, 0.723)
	SWEP.PUAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.821, -10, -0.341)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.NXSPos = Vector(-2.837, -9, -0.06)
    SWEP.NXSAng = Vector(-3, 0, 0)
	
	SWEP.TacStancePos = Vector(-4, 0, 2)
	SWEP.TacStanceAng = Vector(0, 0, -45)

	SWEP.SprintPos = Vector(1.786, -1, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.AlternativePos = Vector(-0.5, 0, -0.25)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(-1, 0, 0) --{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}

	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
	SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.AttachmentModelsVM = {
	--Optics
	["md_rail"] = { type = "Model", model = "models/khrcw2/attachments/a_modkit_mosin.mdl", bone = "Weapon", rel = "", pos = Vector(0, 4.199, 0.518), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "Weapon", pos = Vector(0.005, -0.849, 2.388), angle = Angle(0, 180, 0), adjustment = {min = -1.213, max = 1.366, axis = "y", inverse = true}, size = Vector(0.424, 0.424, 0.424)},
	["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "Weapon", pos = Vector(-0.34, -7.577, -4.114), angle = Angle(0, 0, 0), size = Vector(1.13, 1.13, 1.13)},
	["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "Weapon", pos = Vector(-0.359, -6.019 , -3.265), angle = Angle(0, -90, 0), adjustment = {min = -6.35, max = -2.45, axis = "y", inverseOffsetCalc = true}, size = Vector(0.967, 0.967, 0.967)},
	["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "Weapon", pos = Vector(-0.37, -6.157, -3.392), angle = Angle(0, 0, 0), adjustment = {min = -6.35, max = -6.112, axis = "y", inverseOffsetCalc = true}, size = Vector(0.99, 0.99, 0.99)},
	["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "Weapon", rel = "", pos = Vector(-0.157, 0.516, 3.671), angle = Angle(0, -90, 0), adjustment = {min = 0.18, max = 3.191, axis = "y", inverseOffsetCalc = true}, size = Vector(1.35, 1.35, 1.35)},
	--Lasers
	["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "Weapon", pos = Vector(-0.138, 4, 2.173), angle = Angle(0, 90, 0), size = Vector(0.585, 0.585, 0.585)},
	["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "Weapon", rel = "", pos = Vector(-0.01, 3.667, 2.211), angle = Angle(0, -90, 0), size = Vector(0.93, 0.93, 0.93)},
	--UNUSED
	["md_ins2_suppressor_ins"] = { type = "Model", model = "models/weapons/upgrades/a_suppressor_ins.mdl", bone = "Weapon", rel = "", pos = Vector(0, 26.899, 0.8), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}

	SWEP.MaterialIndexPrimary = {0} -- Body
	SWEP.MaterialIndexSecondary = {1, 2} --Bullets and Scope
	SWEP.MaterialIndexAlyosha = {1}
	
	SWEP.NXSAlign = {right = 0, up = 0, forward = 0}
	SWEP.ACOGAxisAlign = {right = 1.1, up = 0, forward = 0}
	SWEP.PUAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 180, up = 180, forward = 180}
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1, roll = 1, forward = 0, pitch = 1}
end

SWEP.MuzzleVelocity = 865 -- in meter/s

SWEP.BackupSights = {
	["too_optic_tacstance"] = {[1] = Vector(-2.8155, -1.6667, 1.455), [2] = Vector(0, 0.03, 0)},
	["md_microt1"] = {[1] = Vector(-4, 0, 2), [2] = Vector(0,0,-45)},
	["md_aimpoint"] = {[1] = Vector(-4, -1.2, 2), [2] = Vector(0,0,-45)},
	["md_schmidt_shortdot"] = {[1] = Vector(-4, -0.2, 2), [2] = Vector(0,0,-45)},
	["bg_skspuscope"] = {[1] = Vector(-2.8155, -1.6667, 1.455), [2] = Vector(0, 0, 0)},
	["md_acog"] = {[1] = Vector(-2.826, -0.2, -1.472), [2] = Vector(0, 0, 0)},
	["md_nightforce_nxs"] = {[1] = Vector(-4, -0.2, 2), [2] = Vector(0,0,-45)}
}

SWEP.BoltBGs = {main = 1, bent = 1, straight = 0}
SWEP.SightBGs = {main = 2, scope = 1, none = 0}
SWEP.StockBGs = {main = 0, full = 0, custom = 1, carbine = 2, obrez = 3}

SWEP.Trivia = {text = "Originally developed in the 1890s for the Russian Empire, the Mosin-Nagant became one of the most mass-produced bolt-action rifles in history.", x = -500, y = -500}

SWEP.Attachments = {[1] = {header = "Sight", offset = {1100, -300},  atts = {"md_microt1", "md_aimpoint", "md_schmidt_shortdot", "bg_skspuscope", "md_acog", "md_nightforce_nxs"}},
[2] = {header = "Signature Attachments", offset = {-500, -300},  atts = {"bg_mncustombody", "bg_mncarbinebody", "bg_mnobrezbody", "khr_alyosha"}},
[3] = {header = "Laser", offset = {-500, 200},  atts = {"md_anpeq15", "ftacgrimline"}},
[4] = {header = "Bolt", offset = {1600, 700},  atts = {"bg_bentbolt"}},
[5] = {header = "Finish", offset = {1600, 300},  atts = {"md_mnbrandnew1", "md_mnbrandnew2", "md_mnolddark", "md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes","md_skinyellowjacket"}},
["+use"] = {header = "Stance", offset = {2100, -300}, atts = {"too_optic_tacstance"}},
["+reload"] = {header = "Ammo", offset = {-500, 650}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}, exclusions = {khr_alyosha = true}},}

SWEP.AttachmentDependencies = {
	["bg_skspuscope"] = {"bg_bentbolt"},
	["md_anpeq15"] = {"md_microt1", "md_aimpoint", "md_acog"},
	["ftacgrimline"] = {"md_microt1", "md_aimpoint", "md_acog"}
}

SWEP.AttachmentExclusions = {
	["md_microt1"] = {"too_optic_tacstance"},
	["md_aimpoint"] = {"too_optic_tacstance"},
	["md_schmidt_shortdot"] = {"too_optic_tacstance"},
	["bg_skspuscope"] = {"too_optic_tacstance"},
	["md_acog"] = {"too_optic_tacstance"},
	["md_nightforce_nxs"] = {"too_optic_tacstance"}
}

SWEP.Animations = {fire = "base_fire_start",
	reload_start = "reload_start",
	insert = "reload_insert",
	reload_end = "reload_end",
	idle = "reload_end",
	draw = "base_draw"}
	
SWEP.Sounds = {	bent_reload_start = {
		{time = 4/30, sound = "KHRMOSIN_BOLTRELEASE"},
		{time = 10/30, sound = "KHRMOSIN_BOLTBACK"},
	},
	
	reload_start = {
		{time = 4/30, sound = "KHRMOSIN_BOLTRELEASE"},
		{time = 10/30, sound = "KHRMOSIN_BOLTBACK"},
	},

		reload_insert = {
		{time = 8/30, sound = "KHRMOSIN_BULLETIN"},
	},
	
		reload_end = {
		{time = 7/30, sound = "KHRMOSIN_BOLTFORWARD"},
		{time = 11/30, sound = "KHRMOSIN_BOLTLATCH"},
	},
	
		bent_reload_end = {
		{time = 7/30, sound = "KHRMOSIN_BOLTFORWARD"},
		{time = 11/30, sound = "KHRMOSIN_BOLTLATCH"},
	},
	
		bent_fire_start = {
		{time = 15/30, sound = "KHRMOSIN_BOLTRELEASE"},
		{time = 19/30, sound = "KHRMOSIN_BOLTBACK"},
		{time = 28/30, sound = "KHRMOSIN_BOLTFORWARD"},
		{time = 35/30, sound = "KHRMOSIN_BOLTLATCH"},
		
	},
		
		base_fire_start = {
		{time = 15/30, sound = "KHRMOSIN_BOLTRELEASE"},
		{time = 19/30, sound = "KHRMOSIN_BOLTBACK"},
		{time = 28/30, sound = "KHRMOSIN_BOLTFORWARD"},
		{time = 35/30, sound = "KHRMOSIN_BOLTLATCH"}
	}}

SWEP.SpeedDec = 45

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Marksman Rifles"

SWEP.Author			= "Doni Danger"
SWEP.Contact		= ""
SWEP.Purpose		= "Defend the Motherland to the death"
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.AimViewModelFOV = 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/v_khri_mosinm91.mdl"
SWEP.WorldModel		= "models/weapons/w_annabelle.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ADSFireAnim = true
SWEP.Chamberable = false

SWEP.LuaViewmodelRecoil = false
SWEP.FireAnimSpeed = 1.5
SWEP.SemiAutoTriggerBuffer = 0
SWEP.SemiAutoTriggerBufferUntil = 0
SWEP.SemiAutoQueuedShot = false

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 50
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"
SWEP.ForceBackToHipAfterAimedShot = false
SWEP.FireDelay = 60/52
SWEP.FireSound = "KHRMOSIN_FIRE"
SWEP.Recoil = 2.5

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 1.19
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 167
SWEP.DeployTime = .485
SWEP.HolsterTime = .6

SWEP.ReloadSpeed = 1.1
SWEP.ReloadStartTime = 1
SWEP.InsertShellTime = .8
SWEP.ReloadFinishWait = 1
SWEP.ShotgunReload = true

function SWEP:IndividualThink()

--ALYOSHA TEST CODE!!!
self.Shots_Orig = 1
self.HipSpread_Orig = 0.13
self.ClumpSpread_Orig = 0

self.Damage_Orig = 167

self.EffectiveRange = 60 * 39.37
self.DamageFallOff = .25

if self.ActiveAttachments.khr_alyosha then
	if self:isAiming() then
		self.Damage = 95
		self.Shots = self.Shots_Orig
		self.ClumpSpread = self.ClumpSpread_Orig
	else
		self.Damage = 28

		self.EffectiveRange = 25 * 39.37
		self.DamageFallOff = .6

		self.Shots = 6
		self.ClumpSpread = 0.025
		self.HipSpread = 0
	end
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
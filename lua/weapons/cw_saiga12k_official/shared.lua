AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Saiga-12K"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	SWEP.IconLetter = "k"
	SWEP.SelectIcon = surface.GetTextureID("vgui/saiga12")
	killicon.Add("cw_saiga12k_official", "vgui/killicons/saiga12", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 20 * 39.37
	SWEP.DamageFallOff_Orig = .6
	
	SWEP.ForeGripOffsetCycle_Draw = 0.5
	SWEP.ForeGripOffsetCycle_Reload = 0.72
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8

	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 5, y = 0, z = -1}
	SWEP.Shell = "shotshell"
	SWEP.ShellDelay = 0
	
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_ReloadStart = 0.9
	SWEP.ForeGripOffsetCycle_ReloadInsert = 2
	SWEP.ForeGripOffsetCycle_ReloadEnd = 0.65
	SWEP.FireMoveMod = 1
	
	SWEP.RVBPitchMod = 0.5
	SWEP.RVBYawMod = 0.5
	SWEP.RVBRollMod = 0.5
	
	SWEP.SightWithRail = true

	SWEP.AlternativePos = Vector(0.519, 1.616, -1.831)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-2.03, 0, 0.43)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-2.11, 1.271, -0.773)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.122, -1.762, -1.19)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.PSOPos = Vector(-1.797, 3.789, -0.172)
	SWEP.PSOAng = Vector(0, 0, 0)

	SWEP.ShortDotPos = Vector(-2.097, -1.269, -0.71)
	SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.KobraPos = Vector(-2.03, -0.5, -0.075)
	SWEP.KobraAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.1, -1.3, -0.853)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
		
	SWEP.CustomizePos = Vector(7.711, -0.482, -2)
	SWEP.CustomizeAng = Vector(16.364, 40.741, 15.277)
	
	SWEP.M203Pos = Vector(0, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.PSO1AxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.CustomizationMenuScale = 0.015

	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "Saiga12k", pos = Vector(-0.383, -5.723, -2.077), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "Saiga12k", pos = Vector(-0.181, -0.817, 2.581), angle = Angle(0, 180, 0), size = Vector(0.349, 0.349, 0.349)},
		["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "Saiga12k", pos = Vector(0.002, -5.196, -1.596), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_pbs1"] = {model = "models/cw2/attachments/pbs1.mdl", bone = "Saiga12k", pos = Vector(-0.113, 17.656, -0.9), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "Saiga12k", pos = Vector(-0.51, -1.966, -2.915), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "Saiga12k", pos = Vector(-0.408, -0.044, 0.774), angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "Saiga12k", pos = Vector(-0.429, -4.9, -1.56), angle = Angle(0, -90, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_kobra"] = {model = "models/cw2/attachments/kobra.mdl", bone = "Saiga12k", pos = Vector(0.349, -0.245, -2.007), angle = Angle(0, 180, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "Saiga12k", pos = Vector(-0.306, 3.2, 2.345), angle = Angle(0, 90, 0), size = Vector(0.43, 0.43, 0.43)}
	}

	SWEP.AttachmentPosDependency = {
		["md_anpeq15"] = {
			["md_microt1"] = Vector(-0.306, 1.5, 2.345), 
			["md_aimpoint"] = Vector(-0.306, 2, 2.345),
			["md_schmidt_shortdot"] = Vector(-0.306, 2.9, 2.345)
		}
	}
	
	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(5.269, 33.659, -4.966) },
		["Bip01 L Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, -15.848, 0) },
		["Bip01 L Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(5.94, 47.548, -5.388) },
		["Bip01 L Clavicle"] = {pos = Vector(-1.517, 1.899, 0.18), angle = Angle(-13.855, 9.753, 0) },
		["Bip01 L Finger22"] = {pos = Vector(0, 0, 0), angle = Angle(0, 76.587, 0) },
		["Bip01 L Finger31"] = {pos = Vector(0, 0, 0), angle = Angle(0, -30.771, 0) },
		["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 100.872, -5.815) },
		["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, -0.788, 0) },
		["Bip01 L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(1.077, 13.255, 0) },
		["Bip01 L Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(13.503, 74.014, -4.903) },
		["Bip01 L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 27.677, 0) },
		["Bip01 L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 75.791, 0) },
		["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(7.262, -14.686, -40.667) },
		["Bip01 L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(0, -26.604, 0) },
		["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(9.564, 38.254, 94.494) },
		["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 25.427, 0) },
		["Bip01 L ForeTwist"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 74.992) }
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}
	
	SWEP.LaserPosAdjust = Vector(0.8, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
end

SWEP.MuzzleVelocity = 381 -- in meter/s

SWEP.ADSFireAnim = false
SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "An AK-platform shotgun with a shorter barrel and folding stock.", x = 0, y = -600}

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -500}, atts = {"md_kobra", "md_microt1", "md_aimpoint", "md_schmidt_shortdot", "md_pso1"}},
	[2] = {header = "Muzzle", offset = {-200, -400}, atts = {"md_pbs1"}},
	[3] = {header = "Laser", offset = {-200, 50}, atts = {"md_anpeq15"}, exclusions = {md_kobra = true, md_pso1 = true}, dependencies = {md_microt1 = true,  md_aimpoint = true, md_schmidt_shortdot = true}},
	[4] = {header = "Handguard", offset = {800, -75}, atts = {"md_foregrip"}},
	["+reload"] = {header = "Ammo", offset = {800, 350}, atts = {"am_slugrounds", "am_flechetterounds"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload2",
	reload_empty = "reload1",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {
	reload1 = {
		{time = 0.5, sound = "CW_SAIGA12K_MAGOUT"},
		{time = 0.58, sound = "CW_FOLEY_LIGHT"},
		{time = 1.94, sound = "CW_SAIGA12K_MAGIN"},
		{time = 2.77, sound = "CW_SAIGA12K_BOLT_PULL"},
		{time = 3.02, sound = "CW_SAIGA12K_BOLT_FORWARD"},
		{time = 3.3, sound = "CW_FOLEY_LIGHT"},
	},
	
	reload2 = {
		{time = 0.5, sound = "CW_SAIGA12K_MAGOUT"},
		{time = 0.58, sound = "CW_FOLEY_LIGHT"},
		{time = 1.94, sound = "CW_SAIGA12K_MAGIN"},
		{time = 2.3, sound = "CW_FOLEY_LIGHT"},
	},

	insert = {
		{time = 0.17, sound = "CW_M4SUPER90_INSERT"},
		{time = 0.38, sound = "CW_FOLEY_LIGHT"}
	},
	
	after_reload = {{time = 0.35, sound = "CW_M4SUPER90_BOLT"},
	{time = 0.6, sound = "CW_FOLEY_LIGHT"}},
	
	draw = {
		{time = 0, sound = "CW_FOLEY_MEDIUM"},
		{time = 0.63, sound = "CW_SAIGA12K_CLICK"}
	}
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Shotguns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_ecw_saiga12k.mdl"
SWEP.WorldModel		= "models/weapons/w_shot_xm1014.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.Chamberable = true

SWEP.FireDelay = 60 / 350
SWEP.FireSound = "CW_SAIGA12K_FIRE"
SWEP.FireSoundSuppressed = "CW_SAIGA12K_FIRE_SUPPRESSED"
SWEP.Recoil = 2.5

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.008
SWEP.VelocitySensitivity = 1.75
SWEP.MaxSpreadInc = 0.06
SWEP.ClumpSpread = 0.0185
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.3
SWEP.Shots = 12
SWEP.Damage = 8
SWEP.DeployTime = 0.8
SWEP.RecoilToSpread = 1.6 -- should actually be called SpreadToRecoil, but whatever
SWEP.NearWallDistance = 30

SWEP.ReloadSpeed = 1.15
SWEP.ReloadTime = 2.5
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 4

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 20 * 39.37
self.DamageFallOff = .6
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
if CustomizableWeaponry then

SWEP.magType = "brMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "FAL"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/fal")
	killicon.Add("cw_g4p_fn_fal", "vgui/killicons/fal", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 60 * 39.37
	SWEP.DamageFallOff_Orig = .25

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.NoSilMuz = true
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.69
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -1}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
--	SWEP.CustomizePos = Vector(-10.5, -5.8, 0.4)
--	SWEP.CustomizeAng = Vector(27, -50, -30)
	
	SWEP.IronsightPos = Vector(-2.718, -4, 0.8)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.FoldSightPos = Vector(-2.02, -3.4, 0.12)
	SWEP.FoldSightAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.7, -2.8, 0.04)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.72, -2, 0.32)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(-2.715, -2.8, 0.46)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.BallisticPos = Vector(-2.7, -2.8, -0.05)
	SWEP.BallisticAng = Vector(0, 0, 0)
	
	SWEP.TrijiconPos = Vector(-2.721, -3.201, 0.319)
	SWEP.TrijiconAng = Vector(0, 0, 0)
	
	SWEP.CmorePos = Vector(-2.725, -2.8, 0.285)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-2.721, -3.201, 0.4)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.721, -3.201, -0.04)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.ELCANPos = Vector(-2.725, -3.201, -0.071)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.ThermalPos = Vector(-2.725, -3.201, -0.071)
	SWEP.ThermalAng = Vector(0, 0, 0)
	
	SWEP.CSGOACOGPos = Vector(-2.721, -2.8, 0.119)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)
	
	SWEP.CSGO556Pos = Vector(-2.721, -2.8, 0.4)
	SWEP.CSGO556Ang = Vector(0, 0, 0)
	
	SWEP.CSGOSSGPos = Vector(-2.711, -3.6, 0.209)
	SWEP.CSGOSSGAng = Vector(0, 0, 0)

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_cmore"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_trijicon"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_reflex"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_aimpoint"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_elcan"] = {[1] = Vector(-2.732, 5, -0.898), [2] = Vector(0.05, -0.06, 0)},
	["md_acog_fixed"] = {[1] = Vector(-2.717, 5, -0.971), [2] = Vector(0, 0, 0)},
	["md_uecw_csgo_acog"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_uecw_csgo_556"] = {[1] = Vector(-2.717, 5, -0.55), [2] = Vector(0.82, 0, 0)},
	["md_uecw_csgo_scope_ssg"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_ballistic"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)}
	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0.18, 4.8, -3.451), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "weapon", rel = "", pos = Vector(-0, 0.28, 1.08), angle = Angle(0, 180, 0), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 255)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "weapon", rel = "", pos = Vector(-0.02, -1.201, 1.299), angle = Angle(0, 180, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255)},
		["md_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "weapon", rel = "", pos = Vector(1.299, 7.199, 1.659), angle = Angle(0, 90, 0), size = Vector(1.049, 1.049, 1.049), color = Color(255, 255, 255, 255)},
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, 0.2, -3.201), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(-0.04, 1.259, 1.24), angle = Angle(0, 0, 0), size = Vector(0.349, 0.349, 0.349), color = Color(255, 255, 255, 255)},
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(0.25, 4.675, -3.451), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", rel = "", pos = Vector(0, -7.6, 1.049), angle = Angle(0, -90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255)},
		["md_csgo_silencer_ballistic"] = { type = "Model", model = "models/kali/weapons/csgo/eq_dsr50_suppressor.mdl", bone = "weapon", rel = "", pos = Vector(-0.08, -1.601, -0.201), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "weapon", rel = "", pos = Vector(-0.08, 6.48, -2.481), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_uecw_csgo_556"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_sig.mdl", bone = "weapon", rel = "", pos = Vector(-0.076, 0.56, 0.939), angle = Angle(0, 90, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_acog_fixed"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(0.28, 5.199, -3.721), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "weapon", rel = "", pos = Vector(0.28, 5.199, -3.721), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "weapon", rel = "", pos = Vector(0.28, 5.199, -3.721), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85)},
		["md_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "weapon", rel = "", pos = Vector(1.5, 8.199, 1.75), angle = Angle(0, 90, 0), size = Vector(1.2, 1.2, 1.2)},
		["md_uecw_csgo_scope_ssg"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_scope_bender.mdl", bone = "weapon", rel = "", pos = Vector(-0.08, -1.201, 0.949), angle = Angle(0, 90, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "weapon", rel = "", pos = Vector(-0.026, -0.45, -1.121), angle = Angle(0, 180, 0), size = Vector(1.899, 1.899, 1.899), color = Color(255, 255, 255, 255)},
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

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
end

SWEP.SightBGs = {sightup = "", sightdown = ""}
SWEP.BarrelBGs = {regular = 0}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "Adopted by many NATO countries, this battle rifle was dubbed \"the right arm of the free world.\"", x = 0, y = -450}

SWEP.Attachments = {[1] = {header = "Sight", offset = {500, -350},  atts = {"md_microt1", "md_cmore", "md_trijicon", "md_reflex", "md_aimpoint", "md_elcan", "md_acog_fixed", "md_uecw_csgo_acog", "md_uecw_csgo_556", "md_thermal", "md_uecw_csgo_scope_ssg", "md_ballistic"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Muzzle", offset = {-500, -500}, atts = {"md_saker", "md_csgo_silencer_ballistic"}},
	[3] = {header = "Laser", offset = {-500, 400}, atts = {"md_anpeq15"}},
	["+reload"] = {header = "Ammo", offset = {1100, 400}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
	
SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.3, sound = "CW_FAL_MAGOUT"},
	[2] = {time = 1.9, sound = "CW_FAL_MAGIN"},
	[3] = {time = 2.5, sound = "CW_FAL_BOLT"}},
	draw = {{time = 0.01, sound = "CW_XM8_CLOTH"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Battle Rifles"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_fal_rifle.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_g3sg1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 60 / 500
SWEP.FireSound = "CW_FAL_FIRE"
SWEP.FireSoundSuppressed = "CW_FAL_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.19
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 57
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt = 2.7
SWEP.ReloadHalt_Empty = 3.4
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 60 * 39.37
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
if self.ActiveAttachments.md_csgo_silencer_ballistic then
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
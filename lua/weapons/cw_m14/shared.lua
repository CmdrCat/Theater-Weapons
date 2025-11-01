AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M14 EBR"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.013
	
	SWEP.IconLetter = "n"
	SWEP.SelectIcon = surface.GetTextureID("vgui/m14")
	killicon.Add("cw_m14", "vgui/killicons/m14", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 70 * 39.37
	SWEP.DamageFallOff_Orig = .5

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.65
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_cstm_m14.mdl"
	SWEP.WMPos = Vector(0, -0.5, 1)
	SWEP.WMAng = Vector(0, 0, 180)
	
	SWEP.IronsightPos = Vector(-2.231, -3.428, 1.207)
	SWEP.IronsightAng = Vector(0, -0.008, 0)
	
	SWEP.NXSPos = Vector(-2.218, -3.388, 0.225)
	SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.237, -4.617, 0.079)
	SWEP.EoTechAng = Vector(0, -0.008, 0)
	
	SWEP.AimpointPos = Vector(-2.24, -3.856, 0.144)
	SWEP.AimpointAng = Vector(0, -0.008, 0)
	
	SWEP.MicroT1Pos = Vector(-2.241, 0.5, 0.395)
	SWEP.MicroT1Ang = Vector(0, -0.008, 0)
	
	SWEP.ACOGPos = Vector(-2.231, -5, -0.12)
	SWEP.ACOGAng = Vector(0, -0.008, 0)
	
	SWEP.SG1Pos = Vector(-1.614, -0.861, -0.51)
	SWEP.SG1Ang = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.211, -4.624, 0.221)
	SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(-3.5, 5, 0), [2] = Vector(0,0,-30)},
	["md_aimpoint"] = {[1] = Vector(-3.5, 5, 0), [2] = Vector(0,0,-30)},
	["md_schmidt_shortdot"] = {[1] = Vector(-3.5, 5, 0), [2] = Vector(0,0,-30)},
	["md_acog"] = {[1] = Vector(-2.221, 0, -1.245), [2] = Vector(0, -0.008, 0)},
	["md_nightforce_nxs"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)}}

	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0.35, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0.35, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0.2, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(-0.319, 1.325, -1.04)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.M203OffsetCycle_Reload = 0.81
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.BoltBone = "M14_Charger"
	SWEP.BoltShootOffset = Vector(-3, 0, 0)
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = {pos = Vector(4.461, 0.308, -2.166), angle = Angle(0, 0, 0)}
	}
	
	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 14.81, 12.463) },
		["Bip01 L Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, -20.722, 0) },
		["Bip01 L Clavicle"] = {pos = Vector(0.266, 0.702, -2.852), angle = Angle(0, 0, 0) },
		["Bip01 L Finger22"] = {pos = Vector(0, 0, 0), angle = Angle(0, 62.166, 0) },
		["Bip01 L ForeTwist1"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, -11.27) },
		["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 78.911, 0) },
		["Bip01 L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(0, 26.871, 0.094) },
		["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(2.516, 25.506, 71.704) },
		["Bip01 L Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(6.505, 68.04, 10.489) },
		["Bip01 L Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(6.294, 31.311, 8.885) },
		["Bip01 L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 65.873, 2.444) },
		["Bip01 L Finger31"] = {pos = Vector(0, 0, 0), angle = Angle(0, 17.17, -11.077) },
		["Bip01 L ForeTwist"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 69.769) },
		["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(18.993, 1.559, -5.586) },
		["Bip01 L Forearm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, -8.098) },
		["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 40.203, 3.48) },
		["Bip01 L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 50.057, -9.978) }
	}

	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "M14_Body", pos = Vector(-0.253, -5.233, -4.358), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), adjustment = {min = -5.233, max = -2.5, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "M14_Body", pos = Vector(0.01, 0.93, 1.373), angle = Angle(0, 180, 0), size = Vector(0.4, 0.4, 0.4), adjustment = {min = 0.93, max = 4, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "M14_Body", pos = Vector(0.039, 1.595, -1.653), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "M14_Body", pos = Vector(-0.173, 6.684, 1.22), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "M14_Body", pos = Vector(-0.352, -3, -4.449), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), adjustment = {min = -3, max = 0, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "M14_Body", pos = Vector(-0.419, -5.74, -3.297), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "M14_Body", pos = Vector(-0.322, -3.846, -3.984), angle = Angle(0, -90, 0), size = Vector(0.93, 0.93, 0.93), adjustment = {min = -3.846, max = 0, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "M14_Body", pos = Vector(-0.071, 2.74, 2.388), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "M14_Body", pos = Vector(0.02, 9.22, -1.522), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)}
	}
	
	SWEP.AttachmentPosDependency = {["md_anpeq15"] = {["bg_longris"] = Vector(-0.225, 13, 3.15)},
	["md_saker"] = {["bg_longbarrel"] = Vector(-0.042, 9, -0.1), ["bg_longris"] = Vector(-0.042, 9, -0.1)}}

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}
	
	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
end

SWEP.MuzzleVelocity = 853 -- in meter/s

SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.BipodBGs = {main = 4, on = 1, off = 0}
SWEP.SightBGs = {main = 2, sg1 = 1, none = 0}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "A modern marksman rifle version of the classic M14.", x = -300, y = -450}

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -450},  atts = {"md_microt1",  "md_aimpoint", "md_schmidt_shortdot", "md_acog", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-450, -300},  atts = {"md_saker"}},
	[3] = {header = "Laser", offset = {0, -300}, atts = {"md_anpeq15"}, dependencies = {md_microt1 = true, md_aimpoint = true, md_schmidt_shortdot = true, md_acog = true, md_nightforce_nxs = true}},
	[4] = {header = "Handguard", offset = {-450, 150}, atts = {"md_foregrip", "md_bipod"}},
	[5] = {header = "Conversion", offset = {350, 500}, atts = {"cw_m14_br_conversion"}},
	["+reload"] = {header = "Ammo", offset = {1200, 200}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"M14_Fire1", "M14_Fire2"},
	reload = "M14_Reload",
	idle = "idle",
	draw = "M14_Deploy"}
	
SWEP.Sounds = {M14_Reload = {{time = 0.6, sound = "CW_FOLEY_LIGHT"},
	{time = 0.8, sound = "CW_M14_MAGOUT"},
	{time = 1.4, sound = "CW_FOLEY_LIGHT"},
	{time = 2.1, sound = "CW_M14_MAGIN"},
	{time = 2.7, sound = "CW_FOLEY_LIGHT"},
	{time = 3.15, sound = "CW_M14_BOLT"}},
	
	M14_Deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"},
	{time = 0.7, sound = "CW_M14_BOLT"}}}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Marksman Rifles"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/rifles/m14.mdl"
SWEP.WorldModel		= "models/weapons/w_cstm_m14.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 80
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 60 / 450
SWEP.FireSound = "CW_M14_FIRE"
SWEP.FireSoundSuppressed = "CW_M14_FIRE_SUPPRESSED"
SWEP.Recoil = 1.6

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.19
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 66
SWEP.DeployTime = 1.7

SWEP.RecoilToSpread = 0.8 -- the M14 in particular will have 30% more recoil from continuous fire to give a feeling of "oh fuck I should stop firing 7.62x51MM in full auto at 750 RPM"

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 3.05
SWEP.ReloadHalt_Empty = 4.85
SWEP.NearWallDistance = 35

SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 70 * 39.37
self.DamageFallOff = .5
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
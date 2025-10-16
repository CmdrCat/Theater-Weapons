AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SCAR-H"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.014
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/scarh")
	killicon.Add("cw_scarh", "vgui/killicons/scarh", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 60 * 39.37
	SWEP.DamageFallOff_Orig = .25

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/cw2/rifles/w_scarh.mdl"
	SWEP.WMPos = Vector(0, -0.5, 0.5)
	SWEP.WMAng = Vector(0, 0, 180)
	
	
	SWEP.IronsightPos = Vector(-2.023, -4.479, 0.104)
	SWEP.IronsightAng = Vector(0.128, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.033, -4.864, 0.157)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.033, -4.864, 0.375)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-2.025, 0, 0.46)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.021, -4.864, -0.013)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(-2.041, -4.5, 0.287)
	SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.ShortDotPos = Vector(-2.017, -5.564, 0.495)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-2.021, -4.864, -1.122), [2] = Vector(0, 0, 0)}}

	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(0.2, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.M203OffsetCycle_Reload = 0.81
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}

	SWEP.BaseArm = "Left_U_Arm"
	SWEP.BaseArmBoneOffset = Vector(-500, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.M203HoldPos = {
		["Left_U_Arm"] = {pos = Vector(2.197, -2.123, -1.015), angle = Angle(0, 0, 0)}
	}
	
	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "scar", pos = Vector(-0.233, -6.4, -2.172), angle = Angle(0, 0, 0), adjustment = {min = -6.4, max = -4, axis = "y", inverseOffsetCalc = true}, size = Vector(0.899, 0.899, 0.899)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "scar", pos = Vector(-0.172, 7.369, 2.819), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "scar", pos = Vector(-0.392, -3.997, -1.839), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "scar", pos = Vector(0.016, -1.2, 3.079), angle = Angle(0, 180, 0), adjustment = {min = -1.2, max = 4, axis = "y", inverseOffsetCalc = true}, size = Vector(0.4, 0.4, 0.4)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "scar", pos = Vector(0, 2.413, -0.743), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "scar", pos = Vector(2.316, -9.063, 3.388), angle = Angle(1.07, -90, 0), size = Vector(1, 1, 1), animated = true},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "scar", pos = Vector(-0.364, -4.625, -2.806), angle = Angle(0, 0, 0), adjustment = {min = -4.625, max = -2.3, axis = "y", inverseOffsetCalc = true}, size = Vector(1, 1, 1)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "scar", pos = Vector(-0.281, -4.494, -1.621), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "scar", pos = Vector(0, 9.411, -0.064), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699) },
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "scar", pos = Vector(-0.102, 2.661, 4.099), angle = Angle(0, -90, 0), size = Vector(1.1, 1.1, 1.1)}
	}

	SWEP.ForeGripHoldPos = {
		["Left12"] = {pos = Vector(0, 0, 0), angle = Angle(11.357, -2.181, 0) },
		["Left1"] = {pos = Vector(0, 0.74, 0), angle = Angle(0, -9.094, 0) },
		["Left3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 70.535, 0) },
		["Left8"] = {pos = Vector(0, 0, 0), angle = Angle(25.916, -11.879, 0) },
		["Left5"] = {pos = Vector(0, 0, 0), angle = Angle(46.38, -15.816, -10.117) },
		["Left11"] = {pos = Vector(0, 0, 0), angle = Angle(24.169, -5.834, 0) },
		["Left9"] = {pos = Vector(0, 0, 0), angle = Angle(20.329, 0, 0) },
		["Left_L_Arm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 88.917) },
		["Left14"] = {pos = Vector(0, 0, 0), angle = Angle(19.552, -13.228, 0) },
		["Left2"] = {pos = Vector(0, 0.74, 0), angle = Angle(0.127, 45.395, 0) },
		["Left_Hand"] = {pos = Vector(0, 0, 0), angle = Angle(-19.973, 0, 25.535) },
		["Left_U_Arm"] = {pos = Vector(1.812, 0.024, -1.239), angle = Angle(0, 0, 0) }
	}
	
	SWEP.AttachmentPosDependency = {
		["md_anpeq15"] = {["md_nightforce_nxs"] = Vector(-0.801, 10.246, 1.228)}
	}
	
	SWEP.AttachmentAngDependency = {
		md_anpeq15 = {nd_nightforce_nxs = Angle(0, 90, -90)}
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 0.5, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}
	
	SWEP.BoltBone = "charger"
	SWEP.BoltShootOffset = Vector(-2, 0, 0)
	
	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
end

SWEP.MuzzleVelocity = 714 -- in meter/s

SWEP.SightBGs = {main = 2, none = 1}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "A reliable battle rifle used by the US Army. Make sure your fingers are clear of the charging handle.", x = -100, y = -450}

SWEP.AttachmentExclusions = {["md_microt1"] = {"cw_fortnite_scar_conversion"},
							 ["md_aimpoint"] = {"cw_fortnite_scar_conversion"},
							 ["md_schmidt_shortdot"] = {"cw_fortnite_scar_conversion"},
							 ["md_acog"] = {"cw_fortnite_scar_conversion"},
							 ["md_nightforce_nxs"] = {"cw_fortnite_scar_conversion"},
							 ["md_saker"] = {"cw_fortnite_scar_conversion"},
							 ["md_anpeq15"] = {"cw_fortnite_scar_conversion"},
							 ["md_foregrip"] = {"cw_fortnite_scar_conversion"},
							 ["md_bipod"] = {"cw_fortnite_scar_conversion"},
							 ["md_m203"] = {"cw_fortnite_scar_conversion"},
							 ["am_magnum"] = {"cw_fortnite_scar_conversion"},
							 ["am_matchgrade"] = {"cw_fortnite_scar_conversion"},
							 ["am_atow_lowvel"] = {"cw_fortnite_scar_conversion"},
							 ["am_atow_heavy"] = {"cw_fortnite_scar_conversion"},
							 ["am_atow_ap"] = {"cw_fortnite_scar_conversion"}}

SWEP.Attachments = {[1] = {header = "Sight", offset = {900, -300},  atts = {"md_microt1", "md_aimpoint", "md_schmidt_shortdot", "md_acog", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-400, -500},  atts = {"md_saker"}},
	[3] = {header = "Laser", offset = {-400, -50},  atts = {"md_anpeq15"}},
	[4] = {header = "Handguard", offset = {-400, 400}, atts = {"md_foregrip", "md_bipod", "md_m203"}},
	[5] = {header = "Conversion", offset = {500, 400}, atts = {"cw_fortnite_scar_conversion"}},
	["+reload"] = {header = "Ammo", offset = {900, 150}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	reload = {{time = 0.4, sound = "CW_SCARH_MAGOUT"},
	{time = 0.6, sound = "CW_FOLEY_LIGHT"},
	{time = 1.1, sound = "CW_SCARH_MAGIN"},
	{time = 1.4, sound = "CW_FOLEY_LIGHT"},
	{time = 1.5, sound = "CW_SCARH_MAGSLAP"},
	{time = 1.85, sound = "CW_SCARH_BOLT"},
	{time = 2, sound = "CW_FOLEY_MEDIUM"}}}

SWEP.SpeedDec = 40

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
SWEP.ViewModel		= "models/cw2/rifles/scarh.mdl"
SWEP.WorldModel		= "models/cw2/rifles/w_scarh.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.096
SWEP.FireSound = "CW_SCARH_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_G3A3_FIRE_SUPPRESSED"
SWEP.Recoil = 1.4

SWEP.HipSpread = 0.125
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.9
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 42
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 0.9
SWEP.ReloadTime = 1.7
SWEP.ReloadTime_Empty = 2
SWEP.ReloadHalt = 1.8
SWEP.ReloadHalt_Empty = 2.3

SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 60 * 39.37
self.DamageFallOff = .25

if (self.ActiveAttachments.cw_fortnite_scar_conversion) then
self.EffectiveRange = ((self.EffectiveRange - 35 * 39.37))
self.DamageFallOff = ((self.DamageFallOff + 0.55))
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
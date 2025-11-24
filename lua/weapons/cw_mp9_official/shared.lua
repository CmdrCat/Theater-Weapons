AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("9x18MM", "9x18MM Rounds", 9, 18)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP9"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	SWEP.IconLetter = "d"
	SWEP.SelectIcon = surface.GetTextureID("vgui/mp9")
	killicon.Add("cw_mp9_official", "vgui/killicons/mp9", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 25 * 39.37
	SWEP.DamageFallOff_Orig = .62

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.81
	SWEP.ShellOffsetMul = 1
	SWEP.Shell = "smallshell"
	SWEP.ShellPosOffset = {x = -5, y = 1, z = -5}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 1

	SWEP.RVBPitchMod = 0.5
	SWEP.RVBYawMod = 0.5
	SWEP.RVBRollMod = 0.5
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_ecw_mp9.mdl"
	SWEP.WMPos = Vector(-1, -2.5, -2.5)
	SWEP.WMAng = Vector(0, 0, 180)
	
	SWEP.ShortDotPos = Vector(-2.552, -3.089, -0.245)
	SWEP.ShortDotAng = Vector(0, 0, 4.467)

	SWEP.AimpointPos = Vector(-2.56, -2.451, -0.19)
	SWEP.AimpointAng = Vector(0, 0, 3.93)

	SWEP.MicroT1Pos = Vector(-2.565, 0, -0.132)
	SWEP.MicroT1Ang = Vector(0, 0, 4.467)

	SWEP.IronsightPos = Vector(-2.629, -3.027, 0.501)
	SWEP.IronsightAng = Vector(0, 0, 3.93)

	SWEP.EoTechPos = Vector(-2.53, -3.089, -0.561)
	SWEP.EoTechAng = Vector(0, 0, 5)
	
	SWEP.NXSPos = Vector(-2.592, -1.839, -0.24)
	SWEP.NXSAng = Vector(0, 0, 4)
	
	SWEP.SprintPos = Vector(1.728, 1.843, -0.897)
	SWEP.SprintAng = Vector(-7.685, 21.791, 3.982)

	SWEP.CustomizePos = Vector(8.675, -1.16, -2.61)
	SWEP.CustomizeAng = Vector(24.472, 36.847, 16.979)

	SWEP.SightWithRail = true
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(-0.657, 2.167, -1.175)
	SWEP.AlternativeAng = Vector(0, 0, 3.982)

	SWEP.DontMoveBoltOnHipFire = true
	
	SWEP.CustomizationMenuScale = 0.01
	
	SWEP.BackupSights = {
		["md_microt1"] = {[1] = Vector(-3, 10, -1.2), [2] = Vector(0, 0, -30)},
		["md_aimpoint"] = {[1] = Vector(-3, 7.5, -1.2), [2] = Vector(0, 0, -30)},
		["md_schmidt_shortdot"] = {[1] = Vector(-3, 10, -1.2), [2] = Vector(0, 0, -30)},
		["md_nightforce_nxs"] = {[1] = Vector(-3, 10, -1.2), [2] = Vector(0, 0, -30)}}

	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "gun", pos = Vector(-0.104, -5.553, -2.28), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "gun", pos = Vector(0.12, -0.88, 2.403), angle = Angle(0, -180, 0), size = Vector(0.349, 0.349, 0.349)},
		["md_tundra9mm"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "gun", pos = Vector(0.064, -3.827, -0.19), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "gun", pos = Vector(-0.169, -5.193, -2.244), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "gun", pos = Vector(-0.668, 3.141, 1.705), angle = Angle(0, 90, -90), size = Vector(0.5, 0.5, 0.5)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "gun", pos = Vector(0.02, 0.206, 3.239), angle = Angle(0, -90, 0), size = Vector(0.899, 0.899, 0.899)}
	}



	SWEP.TelescopeSkipRotate = true
	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}
	
	SWEP.LaserPosAdjust = Vector(0.8, 0, 1)
	SWEP.LaserAngAdjust = Angle(-0.31, 180, 0)
	SWEP.LaserAngAdjustAim = Angle(-0.31, 180, 0)
end

SWEP.ShootWhileProne = true
SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.BarrelBGs = {main = 2, extended = 1, regular = 0}
SWEP.StockBGs = {main = 1, unfolded = 1, folded = 0}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "A continuation of the compact TMP, now manufactured by Brügger & Thomet.", x = -500, y = -450}

SWEP.Attachments = {[1] = {header = "Sight", offset = {600, -300},  atts = {"md_microt1","md_aimpoint", "md_schmidt_shortdot", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-600, -300},  atts = {"md_tundra9mm"}},
	[3] = {header = "Laser", offset = {600, 150},  atts = {"md_anpeq15"}},
	["+reload"] = {header = "Ammo", offset = {-1000, 200}, atts = {"am_magnum", "am_matchgrade", "am_ultramegamatchammo", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"fire1", "fire2"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {
	draw = {
		{time = 0, sound = "CW_FOLEY_MEDIUM"}
	},

	reload = {
		{time = 0.58, sound = "CW_MP9_MAG_OUT"},
		{time = 0.95, sound = "CW_FOLEY_LIGHT"},
		{time = 1.4, sound = "CW_MP9_MAG_IN"},
		{time = 1.9, sound = "CW_FOLEY_LIGHT"}
	}
}

SWEP.SpeedDec = 12

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"auto", "semi", "safe"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_ecw_mp9.mdl"
SWEP.WorldModel		= "models/weapons/w_ecw_mp9.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.Chamberable = true

SWEP.FireDelay = 60 / 900
SWEP.FireSound = "CW_MP9_FIRE"
SWEP.FireSoundSuppressed = "CW_MAC11_FIRE_SUPPRESSED"
SWEP.Recoil = 0.75

SWEP.HipSpread = 0.015
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 34
SWEP.DeployTime = 0.6
SWEP.NearWallDistance = 20

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.4
SWEP.ReloadTime_Empty = 2.4
SWEP.ReloadHalt = 2.4
SWEP.ReloadHalt_Empty = 2.4

SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 25 * 39.37
self.DamageFallOff = .62
if self.ActiveAttachments.am_magnum then
	self.EffectiveRange = ((self.EffectiveRange * 1.15))
end
if self.ActiveAttachments.am_matchgrade then
	self.DamageFallOff = ((self.DamageFallOff * 0.5))
end
if self.ActiveAttachments.am_ultramegamatchammo then
	self.DamageFallOff = ((self.DamageFallOff * 0.1))
end
if self.ActiveAttachments.am_atow_lowvel then
	self.DamageFallOff = ((self.DamageFallOff * 1.2))
end
if self.ActiveAttachments.am_atow_heavy then
	self.EffectiveRange = ((self.EffectiveRange * 1.1))
	self.DamageFallOff = ((self.DamageFallOff * 0.925))
end
end

function SWEP:getTelescopeAngles()
	local ang = self.Owner:EyeAngles() + self.Owner:GetViewPunchAngles()
	ang.r = self.BlendAng.z - self.AimAng.z
	return ang
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
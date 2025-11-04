AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("9x18MM", "9x18MM Rounds", 9, 18)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "PM"
	
	SWEP.IconLetter = "f"
	SWEP.SelectIcon = surface.GetTextureID("vgui/makarov")
	killicon.Add("cw_makarov", "vgui/killicons/makarov", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false

	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 1
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}
	SWEP.MuzzleAttachmentName = "muzzle"
	
	SWEP.IronsightPos = Vector(-1.795, 3.361, 0.999)
	SWEP.IronsightAng = Vector(-0.23, 0, 0)
	
	SWEP.PBIronsightsPos = Vector(-1.795, 3.361, 0.527)
	SWEP.PBIronsightsAng = Vector(0.642, 0, 0)
	
	SWEP.SprintPos = Vector(3, -9, -8)
	SWEP.SprintAng = Vector(70, 0, 0)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.BoltBone = "__nmBa_0"
	SWEP.BoltShootOffset = Vector(-1, 0, 0)
	SWEP.HoldBoltWhileEmpty = true
	SWEP.DontHoldWhenReloading = true
	SWEP.DisableSprintViewSimulation = true
	SWEP.FOVPerShot = 0.3
	
	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .75

	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/cw2/pistols/w_makarov.mdl"
	SWEP.WMPos = Vector(-2.5, -1.5, -1.25)
	SWEP.WMAng = Vector(0, 90, 180)
	
	--SWEP.LuaVMRecoilAxisMod = {vert = 0.25, hor = 0.5, roll = 2, forward = 0, pitch = 1}
	SWEP.FullAimViewmodelRecoil = false
	SWEP.CustomizationMenuScale = 0.01
	SWEP.BoltBonePositionRecoverySpeed = 17 -- how fast does the bolt bone move back into it's initial position after the weapon has fired
	
	SWEP.SlideBGs = {main = 1, pm = 0, pb = 1}
	SWEP.SuppressorBGs = {main = 2, pm = 1, pb = 2, none = 0}
	SWEP.MagBGs = {main = 3, regular = 0, extended = 1}
	SWEP.BaseArm = "Left_U_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.ForegripOverride = true
	SWEP.ForegripOverridePos = {
    ["onehand"] = {
        ["Left_U_Arm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -10), angle = Angle(0, 0, 0) }},
    ["nah"] = {
        ["Left_U_Arm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
	}
end

SWEP.ShootWhileProne = true

SWEP.MuzzleVelocity = 315 -- in meter/s

SWEP.LuaViewmodelRecoil = true
SWEP.CanRestOnObjects = false

SWEP.Trivia = {text = "The standard-issue pistol of the Soviet Union's military.", x = -300, y = -600}

SWEP.Attachments = {[1] = {header = "Conversion", offset = {450, -350}, atts = {"bg_makarov_pb6p9"}},
	[2] = {header = "Muzzle", offset = {-400, -200}, atts = {"bg_makarov_pm_suppressor", "bg_makarov_pb_suppressor"}},
	[3] = {header = "Magazine", offset = {-400, 200}, atts = {"bg_makarov_extmag"}},
	[4] = {header = "Technique", offset = {-125, -500}, atts = {"doi_atow_onehand"}},
	["+reload"] = {header = "Ammo", offset = {500, 100}, atts = {"am_sp7", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
	
SWEP.AttachmentDependencies = {["bg_makarov_pb_suppressor"] = {"bg_makarov_pb6p9"}}
SWEP.AttachmentExclusions = {["bg_makarov_pm_suppressor"] = {"bg_makarov_pb6p9"}}

SWEP.Animations = {reload = "reloadfull",
	reload_empty = "reloadempty",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_LIGHT"}},

	reloadfull = {[1] = {time = 0.73, sound = "CW_MAKAROV_MAGOUT"},
	[2] = {time = 1.62, sound = "CW_MAKAROV_MAGIN_PARTIAL"},
	[3] = {time = 1.82, sound = "CW_MAKAROV_MAGIN"}},
	
	reloadempty = {[1] = {time = 0.73, sound = "CW_MAKAROV_MAGOUT_EMPTY"},
	[2] = {time = 1.62, sound = "CW_MAKAROV_MAGIN_PARTIAL"},
	[3] = {time = 1.82, sound = "CW_MAKAROV_MAGIN"},
	[4] = {time = 2.39, sound = "CW_MAKAROV_SLIDE"}}
}

SWEP.SpeedDec = 5

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "pistol"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Pistols"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/pistols/makarov.mdl"
SWEP.WorldModel		= "models/cw2/pistols/w_makarov.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 72
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "9x18MM"

SWEP.FireDelay = 60 / 525
SWEP.FireSound = "CW_MAKAROV_FIRE"
SWEP.FireSoundSuppressed = "CW_MAKAROV_FIRE_SUPPRESSED_PM"
SWEP.Recoil = 0.7

SWEP.HipSpread = 0.01
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 48
SWEP.DeployTime = 0.4
--SWEP.Chamberable = false
SWEP.NearWallDistance = 15
SWEP.DrawSpeed = 1.5

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 2.1
SWEP.ReloadHalt = 2.7

SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt_Empty = 3

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 30 * 39.37
self.DamageFallOff = .75
if (self.ActiveAttachments.bg_makarov_pm_suppressor) then
self.EffectiveRange = ((self.EffectiveRange - 5 * 39.37))
self.DamageFallOff = ((self.DamageFallOff + 0.05))
end
if self.ActiveAttachments.am_sp7 then
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
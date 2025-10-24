AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Serbu Shorty"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	SWEP.IconLetter = "k"
	SWEP.SelectIcon = surface.GetTextureID("vgui/serbu")
	killicon.Add("cw_shorty", "vgui/killicons/serbu", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 15 * 39.37
	SWEP.DamageFallOff_Orig = .75

	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.Shell = "shotshell"
	SWEP.ShellDelay = 0.45
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/cw2_super_shorty.mdl"
	SWEP.WMPos = Vector(-1, 1.5, 0)
	SWEP.WMAng = Vector(0, 0, 180)
	
	SWEP.PronePos = Vector(-7.397, -2.497, -1.551)
	SWEP.ProneAng = Vector(5.618, -49.056, -15.311)
	
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}
	SWEP.FireMoveMod = 1
	
	SWEP.SightWithRail = true

	SWEP.IronsightPos = Vector(4.276, 0, 2.306)
	SWEP.IronsightAng = Vector(1.093, 0, 0)
	
	SWEP.MicroT1Pos = Vector(4.277, 0, 1.603)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(2.039, 0, 0.479)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(-2.386, 0.054, 2.203)
	SWEP.SprintAng = Vector(-17.784, -38.445, -0.484)
			
	SWEP.SwimPos = Vector(0, 0, 0)
	SWEP.SwimAng = Vector(-28.47, -36.313, 0)
			
	SWEP.CustomizePos = Vector(-5.304, -5.044, 0)
	SWEP.CustomizeAng = Vector(20.695, -48.665, -17.692)
	
	SWEP.CustomizationMenuScale = 0.01
	SWEP.ReticleInactivityPostFire = 0.9

	SWEP.BackupSights = {
		["md_microt1"] = {[1] = Vector(5, 2.5, 1), [2] = Vector(0,0,30)}}

	SWEP.AttachmentModelsVM = {
		["md_rail"] = {model = "models/wystan/attachments/rail.mdl", bone = "yttohs", pos = Vector(-0.207, -0.215, 0.029), angle = Angle(0, 90, 180), size = Vector(0.5, 0.85, 0.75)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "yttohs", pos = Vector(-0.02, -1.188, -1.494), angle = Angle(0, 0, 179.587), size = Vector(0.3, 0.3, 0.3)}
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}
	
	SWEP.LaserPosAdjust = Vector(0.8, 0, 0.3)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
end

SWEP.MuzzleVelocity = 381 -- in meter/s

SWEP.SightBGs = {main = 2, none = 1}
SWEP.ADSFireAnim = true

SWEP.Trivia = {text = "Though this shotgun has an incredibly short barrel and magazine tube, some US police departments and even its military have bought some.", x = -600, y = -450}

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -300}, atts = {"md_microt1"}},
	["+reload"] = {header = "Ammo", offset = {-200, 300}, atts = {"am_slugrounds", "am_flechetterounds"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	fire_aim = "shoot1",
	reload_start = "start_reload",
	insert = "insert",
	reload_end = "end_reload",
	idle = "idle",
	draw = "draw2"}
	
SWEP.Sounds = {start_reload = {{time = 0.05, sound = "CW_FOLEY_LIGHT"}},
	insert = {{time = 0.1, sound = "CW_SERBU_SHORTY_INSERT"}},
	
	end_reload = {{time = 0.62, sound = "CW_SERBU_SHORTY_PUMPBACK"},
	{time = 0.82, sound = "CW_SERBU_SHORTY_PUMPFORWARD"},
	{time = 1, sound = "CW_FOLEY_LIGHT"}},
	
	draw2 = {{time = 0.36, sound = "CW_SERBU_SHORTY_PUMPBACK"},
	{time = 0.59, sound = "CW_SERBU_SHORTY_PUMPFORWARD"}},
	
	shoot1 = {{time = 0.55, sound = "CW_SERBU_SHORTY_PUMPBACK"},
	{time = 0.92, sound = "CW_SERBU_SHORTY_PUMPFORWARD"}},
	
	shoot2 = {{time = 0.55, sound = "CW_SERBU_SHORTY_PUMPBACK"},
	{time = 0.92, sound = "CW_SERBU_SHORTY_PUMPFORWARD"}}
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Shotguns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/cw2/shotguns/serbu_super_shorty.mdl"
SWEP.WorldModel		= "models/weapons/cw2_super_shorty.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 2
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.55 / 1.3
SWEP.FireSound = "CW_SERBU_SHORTY_FIRE"
SWEP.Recoil = 2
SWEP.FireAnimSpeed = 1.65 * 1.3

SWEP.HipSpread = 0.07
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.ClumpSpread = 0.02
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.85
SWEP.Shots = 12
SWEP.Damage = 17
SWEP.DeployTime = 1
SWEP.ReloadSpeed = 1.1
SWEP.NearWallDistance = 24

SWEP.ReloadStartTime = 0.3
SWEP.InsertShellTime = 0.5
SWEP.ReloadFinishWait = 1
SWEP.PumpMidReloadWait = 1.1
SWEP.ShotgunReload = true
SWEP.DeployTimeNotFirst = 0.3

SWEP.Chamberable = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 15 * 39.37
self.DamageFallOff = .75
end

function SWEP:drawAnimFunc()
	if not self.firstTimeDrawFinished then
		self:sendWeaponAnim("draw", self.DrawSpeed)
	else
		self:sendWeaponAnim("idle", self.DrawSpeed)
	end
	
	self.firstTimeDrawFinished = true
end

function SWEP:GetDeployTime()
	return self.firstTimeDrawFinished and self.DeployTimeNotFirst or self.DeployTime
end

function SWEP:fireAnimFunc()
	if self.dt.State == CW_AIMING then
		self:sendWeaponAnim("fire_aim", self.FireAnimSpeed)
	else
		self:sendWeaponAnim("fire", self.FireAnimSpeed)
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
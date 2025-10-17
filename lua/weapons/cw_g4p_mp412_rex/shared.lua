if CustomizableWeaponry then

SWEP.magType = "pistolMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP-412 REX"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/mp412")
	killicon.Add("cw_g4p_mp412_rex", "vgui/killicons/mp412", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .85

	SWEP.MuzzleEffect = "muzzleflash_pistol_rbull"
	SWEP.PosBasedMuz = true
	
	SWEP.DryFire = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}
		
	SWEP.MicroT1Pos = Vector(-2.115, 5, 0.04)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-2.31, 5, -0.567)
	SWEP.ELCANAng = Vector(0, 0.14, 0)
	
	SWEP.DocterPos = Vector(-2.27, 5, 0.16)
	SWEP.DocterAng = Vector(0, 0.3, 0)

	SWEP.IronsightPos = Vector(-2.31, 5, 0.45)
	SWEP.IronsightAng = Vector(0.5, 0.14, 0)
	
	SWEP.ACOGPos = Vector(-2.31, 5, -0.518)
	SWEP.ACOGAng = Vector(0, 0.14, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.88, 1.325, -0.561)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.MoveType = 1
	
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.BackupSights = {
	["md_elcan"] = {[1] = Vector(-2.32, 5, -1.365), [2] = Vector(0.15, 0, 0)},
	["md_acog_fixed"] = {[1] = Vector(-2.305, 5, -1.395), [2] = Vector(-0.1, 0.13, 0)},
	["md_docter"] = {[1] = Vector(-4.5, 6, -2), [2] = Vector(5, 0, -30)}}
	
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = true
	SWEP.HUD_MagText = "CYLINDER: "

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.AttachmentModelsVM = {
--		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "MP412_Barrel", rel = "", pos = Vector(0, 2.24, 0.8), angle = Angle(0, 0, 0), size = Vector(0.349, 0.349, 0.349), color = Color(255, 255, 255, 255)},
		["md_acog_fixed"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "MP412_Barrel", rel = "", pos = Vector(-0.28, -5, -1.963), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_docter"] = { type = "Model", model = "models/wystan/attachments/2octorrds.mdl", bone = "MP412_Barrel", rel = "", pos = Vector(-0.239, -1.44, 2.483), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "MP412_Barrel", rel = "", pos = Vector(0, -6.2, 0.1), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "MP412_Barrel", rel = "", pos = Vector(-0.28, -5, -1.963), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.LaserPosAdjust = Vector(0, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(1, 180, 0) --{p = 2, y = 180, r = 0}
	
end

SWEP.BarrelBGs = {main = 1, regular = 0, compensator = 1, extended = 2}
SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false

SWEP.Trivia = {text = "A Russian break-action revolver meant to be exported to foreign countries.", x = -500, y = -550}

SWEP.Attachments = {[1] = {header = "Sight", offset = {-550, -400}, atts = {"md_acog_fixed", "md_elcan", "md_docter"}},
	[2] = {header = "Technique", offset = {500, 200}, atts = {"doi_atow_onehand"}},
	["+reload"] = {header = "Ammo", offset = {-800, 100}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap", "am_snakeshot"}}}

SWEP.Animations = {fire = {"rex_fire1", "rex_fire2"},
	fireDry = "rex_fire_empty",
	reload = "rex_reload",
	reload_empty = "rex_reload",
	idle = "rex_idle",
	draw = "rex_deploy"}
	
SWEP.Sounds = {rex_reload = {[1] = {time = 0.45, sound = "CW_MP412_CYLINDEROPEN"},
	[2] = {time = 1.05, sound = "CW_MP412_ROUNDSOUT"},
	[3] = {time = 2.55, sound = "CW_MP412_ROUNDSIN"},
	[4] = {time = 3.35, sound = "CW_MP412_CYLINDERCLOSE"}},
	rex_deploy = {{time = 0.01, sound = "CW_XM8_CLOTH"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"double"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Pistols"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_pist_mp412.mdl"
SWEP.WorldModel		= "models/weapons/w_357.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".357 Magnum"

SWEP.FireDelay = 0.235
SWEP.FireSound = "CW_MP412_FIRE"
SWEP.FireSoundSuppressed = "CW_MP412_FIRE_SUPPRESSED"
SWEP.Recoil = 2.6

SWEP.HipSpread = 0.039
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.25
SWEP.Shots = 1
SWEP.Damage = 108
SWEP.DeployTime = 1
SWEP.Chamberable = false

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 4
SWEP.ReloadHalt = 4

SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt_Empty = 4

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 30 * 39.37
self.DamageFallOff = .85
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
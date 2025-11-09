AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("9x17MM", "9x17MM", 9, 17)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MAC-11"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	SWEP.IconLetter = "l"
	SWEP.SelectIcon = surface.GetTextureID("vgui/mac11")
	killicon.Add("cw_mac11", "vgui/killicons/mac11", Color(255, 120, 40, 0))

	SWEP.EffectiveRange_Orig = 10 * 39.37
	SWEP.DamageFallOff_Orig = .8
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.81
	SWEP.ShellOffsetMul = 1
	SWEP.Shell = "smallshell"
	SWEP.ShellPosOffset = {x = 1, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 1
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_cst_mac11.mdl"
	SWEP.WMPos = Vector(-1, -5, -1.5)
	SWEP.WMAng = Vector(0, 0, 180)
	
	SWEP.ShortDotPos = Vector(-2.241, -3.516, -0.267)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-2.383, 0.5, -0.12)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.IronsightPos = Vector(-2.383, 0, 1.008)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.39, -3.929, -0.53)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(0, 0, 0.273)
	SWEP.SprintAng = Vector(-12.132, 0, 0)

	SWEP.CustomizePos = Vector(7.711, -0.482, -2)
	SWEP.CustomizeAng = Vector(16.364, 40.741, 15.277)

	SWEP.SightWithRail = true
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(-0.64, 0.294, -0.978)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BoltBone = "bolt"
	SWEP.BoltShootOffset = Vector(0, 0, 1.5)
	SWEP.BoltBonePositionRecoverySpeed = 100
	SWEP.OffsetBoltDuringNonEmptyReload = true
	SWEP.BoltReloadOffset = Vector(0, 0, -1.65)
	SWEP.ReloadBoltBonePositionRecoverySpeed = 8
	SWEP.ReloadBoltBonePositionMoveSpeed = 8
	SWEP.StopReloadBoneOffset = 0.57
	SWEP.HoldBoltWhileEmpty = true
	
	SWEP.CustomizationMenuScale = 0.01
	
	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(-5, 9, -2), [2] = Vector(5, 0, -30)}}

	SWEP.AttachmentModelsVM = {
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(0.037, -3.405, -0.942), angle = Angle(180, 0, -90), size = Vector(0.349, 0.349, 0.349), color = Color(255, 255, 255, 0)},
		["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon", pos = Vector(0.018, -2.564, 6.34), angle = Angle(0, 0, 90), size = Vector(0.55, 0.55, 0.55)}
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}
	
	SWEP.LaserPosAdjust = Vector(0.8, 0, 0.3)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.AttachmentPosDependency = {["md_tundra9mm"] = {["bg_mac11_extended_barrel"] = Vector(0.018, -2.57, 10.371)}}
end

SWEP.ShootWhileProne = true
SWEP.MuzzleVelocity = 298 -- in meter/s

SWEP.BarrelBGs = {main = 2, extended = 1, regular = 0}
SWEP.StockBGs = {main = 1, unfolded = 1, folded = 0}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "This submachine gun has a monstrous rate of fire; one so fast that many users find it disadvantageous.", x = -250, y = -450}

SWEP.AttachmentExclusions = {["am_atow_lowvel"] = {"cw_mac11_recoil_buffer"}}

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -300},  atts = {"md_microt1"}},
	[2] = {header = "Muzzle", offset = {-500, -600},  atts = {"md_tundra9mm"}},
	[3] = {header = "Barrel", offset = {-500, -150},  atts = {"bg_mac11_extended_barrel"}},
	[4] = {header = "Stock", offset = {1100, 100},  atts = {"bg_mac11_unfolded_stock"}},
	[5] = {header = "Aftermarket", offset = {500, 200},  atts = {"cw_mac11_recoil_buffer"}},
	["+reload"] = {header = "Ammo", offset = {-500, 300}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"mac10_fire", "mac10_fire2", "mac10_fire3"},
	reload = "mac10_reload",
	reload_rail = "mac10_reload_rail",
	idle = "mac10_idle",
	draw = "mac10_draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	mac10_reload = {{time = 0.35, sound = "CW_MAC11_MAGOUT"},
	{time = 0.8, sound = "CW_FOLEY_LIGHT"},
	{time = 1.37, sound = "CW_MAC11_MAGIN"},
	{time = 1.6, sound = "CW_FOLEY_LIGHT"},
	{time = 2, sound = "CW_MAC11_BOLTBACK"},
	{time = 2.3, sound = "CW_FOLEY_LIGHT"}}
}

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/smgs/mac11.mdl"
SWEP.WorldModel		= "models/weapons/w_cst_mac11.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 128
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x17MM"

SWEP.Chamberable = false -- MAC-11 is an open-bolt weapon

SWEP.FireDelay = 0.05
SWEP.FireSound = "CW_MAC11_FIRE"
SWEP.FireSoundSuppressed = "CW_MAC11_FIRE_SUPPRESSED"
SWEP.Recoil = 1.5
SWEP.RecoilToSpread = 1.6 -- should actually be called SpreadToRecoil, but whatever

SWEP.HipSpread = 0.01
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 29
SWEP.DeployTime = 0.45
SWEP.NearWallDistance = 20

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.79
SWEP.ReloadTime_Empty = 2.26
SWEP.ReloadHalt = 2
SWEP.ReloadHalt_Empty = 3

SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
	if self.ActiveAttachments.bg_mac11_unfolded_stock then
	self.BackupSights = {["md_microt1"] = {[1] = Vector(-3, 10, -1.7), [2] = Vector(0, 0, -30)},
	["md_ins2elcan"] = {[1] = Vector(-2.472, -7, -1.323), [2] = Vector(-0.4, 0, 0)}}
	else
	self.BackupSights = {["md_microt1"] = {[1] = Vector(-5, 9, -2), [2] = Vector(5, 0, -30)},
	["md_ins2elcan"] = {[1] = Vector(-2.472, -7, -1.323), [2] = Vector(-0.4, 0, 0)}}
	end
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 10 * 39.37
self.DamageFallOff = .8
if self.ActiveAttachments.bg_mac11_extended_barrel then
	self.EffectiveRange = ((self.EffectiveRange + 5 * 39.37))
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
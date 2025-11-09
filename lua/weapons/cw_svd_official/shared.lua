AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("7.62x54MMR", "7.62x54MMR", 7.62, 54)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SVD"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.IronsightPos = Vector(-3.178, -4.77, 1.472)
	SWEP.IronsightAng = Vector(0.257, 0, 0)
	
	SWEP.ShortDotPos = Vector(-3.177, -5.531, 0.56)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(-3.178, -3.3, 0.333)
	SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.PSOPos = Vector(-2.967, -0.885, 0.694)
	SWEP.PSOAng = Vector(-0.732, 0.488, 0)
	
	SWEP.ACOGPos = Vector(-3.214, -4.753, 0.367)
	SWEP.ACOGAng = Vector(-0.973, -0.317, 0)

	SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/cw2/rifles/svd_world.mdl"
	SWEP.WMPos = Vector(-1, -1, 0.5)
	SWEP.WMAng = Vector(0, 0, 180)

	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.019

	SWEP.IconLetter = "b"
	SWEP.SelectIcon = surface.GetTextureID("vgui/svd")
	killicon.Add("cw_svd_official", "vgui/killicons/svd", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 90 * 39.37
	SWEP.DamageFallOff_Orig = .45

	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = false
	SWEP.ShellScale = 0.69
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = -3}
	SWEP.SightWithRail = true
	
	SWEP.BoltBone = "Bolt"
	SWEP.BoltShootOffset = Vector(0, 4.669, 0.144)
	SWEP.OffsetBoltOnBipodShoot = true

	SWEP.AttachmentModelsVM = {
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "Base", pos = Vector(-0.468, -5.356, -3.155), angle = Angle(-1.966, -87.372, 1.379), size = Vector(0.8, 0.8, 0.8)},
		["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "Base", pos = Vector(-0.116, -4.847, -2.024), angle = Angle(-1.966, -177.372, -1.032), size = Vector(0.8, 0.8, 0.8)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "Base", pos = Vector(-0.176, 0.194, 2.404), angle = Angle(-1.966, -87.373, 1.378), size = Vector(1.1, 1.1, 1.1)},
		["md_pbs1"] = {model = "models/cw2/attachments/pbs1.mdl", bone = "Base", pos = Vector(1.427, 27.118, -2.033), angle = Angle(0, -177.01, -2.658), size = Vector(0.699, 0.699, 0.699)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "Base", pos = Vector(-0.505, -6.011, -3.149), angle = Angle(1.965, 3.263, 1.378), size = Vector(0.8, 0.8, 0.8)}
	}
	
	SWEP.BackupSights = {
		["md_schmidt_shortdot"] = {[1] = Vector(-4.5, 5, 0.5), [2] = Vector(0,0,-30)},
		["md_pso1"] = {[1] = Vector(-4.5, 5, 0.5), [2] = Vector(0,0,-30)},
		["md_acog"] = {[1] = Vector(-3.235, 0, -0.5), [2] = Vector(-0.65, -0.317, 0)},
		["md_nightforce_nxs"] = {[1] = Vector(-5, 5, 0.5), [2] = Vector(0,0,-30)}}

	SWEP.PSO1AxisAlign = {right = -1.32, up = 2.49, forward = 90 + 2.2}
	SWEP.SchmidtShortDotAxisAlign = {right = -2.09, up = 2.93, forward = 0}
	SWEP.NXSAlign = {right = -2.09, up = 2.93, forward = 0}
end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 5, roll = 3, forward = 2, pitch = 1}

SWEP.PreventQuickScoping = true
SWEP.QuickScopeSpreadIncrease = 0.3


SWEP.RailBGs = {main = 1, on = 0, off = 1}

SWEP.Trivia = {text = "Developed in the Soviet Union, this marksman rifle is used by militaries and insurgencies alike.", x = -200, y = -450}

SWEP.Attachments = {[1] = {header = "Sight", offset = {950, -300},  atts = {"md_schmidt_shortdot", "md_pso1", "md_acog", "md_nightforce_nxs"}},
	[2] = {header = "Muzzle", offset = {-300, -100}, atts = {"md_pbs1"}},
	["+reload"] = {header = "Ammo", offset = {1200, 200}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"shoot", "shoot2"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	reload = {
		{time = 0.93, sound = "CW_SVD_OFFICIAL_MAGOUT"},
		{time = 1.1, sound = "CW_FOLEY_LIGHT"},
		{time = 1.8, sound = "CW_SVD_OFFICIAL_MAGIN_PARTIAL"},
		{time = 1.98, sound = "CW_SVD_OFFICIAL_MAGIN"},
		{time = 2.24, sound = "CW_SVD_OFFICIAL_MAGTAP"},
		{time = 2.83, sound = "CW_SVD_OFFICIAL_BOLTPULL"},
		{time = 3.04, sound = "CW_SVD_OFFICIAL_BOLTFORWARD"},
		{time = 3.38, sound = "CW_FOLEY_MEDIUM"}
	}
}

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
SWEP.ViewModel		= "models/cw2/rifles/svd.mdl"
SWEP.WorldModel		= "models/cw2/rifles/svd_world.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 50
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.FireDelay = 60 / 425
SWEP.FireSound = "CW_SVD_OFFICIAL_FIRE"
SWEP.FireSoundSuppressed = "CW_SVD_OFFICIAL_FIRE_SUPPRESSED"
SWEP.Recoil = 1.85

SWEP.HipSpread = 0.14
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.19
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 70
SWEP.DeployTime = 0.85
SWEP.NearWallDistance = 40

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt = 2.6
SWEP.ReloadHalt_Empty = 4
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 90 * 39.37
self.DamageFallOff = .45
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

function SWEP:checkAttachmentDependency()
	-- wrap around this method to enable the rail when no sight attachment is active
	self.BaseClass.checkAttachmentDependency(self)
	
	if CLIENT then
		if not self:isAttachmentActive("sights") then			
			self.CW_VM:SetBodygroup(1, 0)
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
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("4.6x30MM", "4.6x30MM", 4.6, 30)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP7A1"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "x"
	SWEP.SelectIcon = surface.GetTextureID("vgui/mp7")
	killicon.Add("cw_mp7_official", "vgui/killicons/mp7", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 20 * 39.37
	SWEP.DamageFallOff_Orig = .52
	 
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.41
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = -1, z = 9}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.87
	
	SWEP.IronsightPos = Vector(-2.168, -1.109, 0.552)
	SWEP.IronsightAng = Vector(0.216, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-2.224, 1.266, 0.246)
	SWEP.MicroT1Ang = Vector(0, -0.232, 0)

	SWEP.EXPSPos = Vector(-2.161, 0, -0.401)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.161, -4.607, 0.131)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.155, -4.83, 0.244)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.172, -4.825, -0.005)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(0, 1.325, -0.801)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.CustomizePos_Orig = Vector(5.488, -1.627, -1.821)
	SWEP.CustomizeAng_Orig = Vector(17.009, 29.971, 16.669)

	SWEP.CustomizePos = Vector(5.488, -1.627, -1.821)
	SWEP.CustomizeAng = Vector(17.009, 29.971, 16.669)

	SWEP.CustomizePos_Akimbo = Vector(0, 0, -7.5)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)
	
	SWEP.BackupSights = {
		["md_microt1"] = {[1] = Vector(-3, 10, -1.2), [2] = Vector(0, 0, -30)},
		["md_aimpoint"] = {[1] = Vector(-3, 7.5, -1.2), [2] = Vector(0, 0, -30)},
		["md_schmidt_shortdot"] = {[1] = Vector(-3, 10, -1.2), [2] = Vector(0, 0, -30)},
		["too_reflex_exps"] = {[1] = Vector(-3, 6, -1.2), [2] = Vector(0, 0, -30)},
		["md_acog"] = {[1] = Vector(-2.17, 0, -0.852), [2] = Vector(0, 0, 0)}}
	
	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "mp7_main", pos = Vector(-4.927, 2.484, 0.188), angle = Angle(-90, 90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "mp7_main", pos = Vector(-0.819, -2.135, -0.005), angle = Angle(90, 0, -90), size = Vector(0.349, 0.349, 0.349)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "mp7_main", pos = Vector(5.162, -0.343, -0.687), angle = Angle(0, 180, 180), size = Vector(0.5, 0.5, 0.5)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "mp7_main", pos = Vector(-4.719, 2.282, 0.25), angle = Angle(0, 0, -90), size = Vector(0.75, 0.75, 0.75)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "mp7_main", pos = Vector(-4.637, 2.27, 0.273), angle = Angle(-90, 0, -90), size = Vector(0.75, 0.75, 0.75)},
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "mp7_main", rel = "", pos = Vector(0.4, -2, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.LaserPosAdjust = {x = 0, y = 0, z = 0.25}
	SWEP.LaserAngAdjust = {p = 0, y = 180, r = 0}
	
	SWEP.CustomizationMenuScale = 0.015

	SWEP.BaseArm = "L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.ForegripOverridePos = {
	["akimbo"] = {
        ["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, -50, 0), angle = Angle(0, 0, 0) }},
    ["nah"] = {
        ["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
	}
end

SWEP.SuppressorBGs = {main = 1, suppressed = 0, unsuppressed = 1}

SWEP.MuzzleVelocity = 750 -- in meter/s

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "A compact submachine gun that uses 4.6×30mm armor-piercing rounds. Its prototype is a favorite amongst certain rebels...", x = -400, y = -550}

SWEP.Attachments = {
	[1] = {header = "Sight", offset = {1100, -400}, atts = {"md_microt1", "md_aimpoint", "too_reflex_exps", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-200, -400}, atts = {"bg_mp7_unsuppressed"}},
	[3] = {header = "Laser", offset = {-200, 0}, atts = {"md_anpeq15"}},
	--[4] = {header = "Technique", offset = {-200, 0}, atts = {"cw_akimbo"}}, Something wrong with the one-handed thing
	["+reload"] = {header = "Ammo", offset = {1100, 35}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}
}

SWEP.Animations = {
	fire = {"base_fire1", "base_fire2"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"
}

SWEP.Animations_Akimbo = {
	fire = {"base_fire1", "base_fire2"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw",
	fire_right = {"base_fire1", "base_fire2"},
	reload_right = "base_reload",
	reload_empty_right = "base_reloadempty",
	idle_right = "base_idle",
	draw_right = "base_draw"
}
	
SWEP.Sounds = {
	draw = {
		{time = 0, sound = "CW_FOLEY_MEDIUM"}
	},

	base_reload = {
		{time = 0.79, sound = "CW_MP7_OFFICIAL_MAGRELEASE"},
		{time = 0.82, sound = "CW_MP7_OFFICIAL_MAGOUT"},
		{time = 1.11, sound = "CW_FOLEY_MEDIUM"},
		{time = 1.85, sound = "CW_MP7_OFFICIAL_MAGIN"},
	},
	
	base_reloadempty = {
		{time = 0.63, sound = "CW_MP7_OFFICIAL_MAGRELEASE"},
		{time = 0.67, sound = "CW_MP7_OFFICIAL_MAGOUT"},
		{time = 1.3, sound = "CW_FOLEY_MEDIUM"},
		{time = 2, sound = "CW_MP7_OFFICIAL_MAGIN"},
		{time = 3.03, sound = "CW_MP7_OFFICIAL_BOLTBACK"},
		{time = 3.4, sound = "CW_MP7_OFFICIAL_BOLTRELEASE"},
	}
}

SWEP.SpeedDec = 12

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/smgs/mp7.mdl"
SWEP.WorldModel		= "models/weapons/w_smg1.mdl"

SWEP.ViewModel_AkimboL = "models/cw2/smgs/mp7.mdl"
SWEP.ViewModel_AkimboR = "models/cw2/smgs/mp7.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 40
SWEP.Primary.DefaultClip	= 160
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "4.6x30MM"

SWEP.FireDelay = 60 / 950
SWEP.FireSound = "CW_MP7_OFFICIAL_FIRE"
SWEP.FireSoundSuppressed = "CW_MP7_OFFICIAL_FIRE_SUPPRESSED"
SWEP.Recoil = 0.8

SWEP.HipSpread = 0.015
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 33
SWEP.DeployTime = 0.5
SWEP.NearWallDistance = 25

SWEP.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.125/1.2 ) -- 1.2 multiplied by this value is the resulting multiplier
	end
end

SWEP.SuppressedOnEquip = true

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 2.2
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 2.9
SWEP.ReloadHalt_Empty = 4.5

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 20 * 39.37
self.DamageFallOff = .52

self.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.125 / 2 ) -- 2 multiplied by this value is the resulting multiplier
	end
end

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
if self.ActiveAttachments.cw_akimbo then
	self.ViewModelOffsetPos = Vector(-2, 0, -1)
	self.ViewModelOffsetAng = Angle(0, 0, -40)
	self.ViewModelOffsetPos2 = Vector(2, 0, -1)
	self.ViewModelOffsetAng2 = Angle(0, 0, 40)
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
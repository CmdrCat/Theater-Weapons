AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP5A5"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/mp5a5")
	killicon.Add("cw_theater_mp5", "vgui/killicons/mp5a5", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .5

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.81
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 1, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.87
	
	SWEP.IronsightPos = Vector(-2.36, 5, 0.119)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	
	SWEP.MicroT1Pos = Vector(-2.36, 3, -0.76)
	SWEP.MicroT1Ang = Vector(0, 0, 0)	
		
	SWEP.EXPSPos = Vector(-2.36, 0, -1.081)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-2.36, 0, -1.081)
	SWEP.MRSAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.36, 0, -0.64)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.34, -2.5, -1.04)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)
	
	SWEP.AlternativePos = Vector(0, 1.325, -0.801)
	SWEP.AlternativeAng = Vector(0, 0, 0)
		
	SWEP.ShortDotPos = Vector(-2.32, 5, -0.76)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(-4, 9, 0), [2] = Vector(0,0,-30)},
	["too_reflex_mrs"] = {[1] = Vector(-4, 3, 0), [2] = Vector(0,0,-30)},
	["too_reflex_exps"] = {[1] = Vector(-4, 5, 0), [2] = Vector(0,0,-30)},
	["md_aimpoint"] = {[1] = Vector(-4, 7, 0), [2] = Vector(0,0,-30)},
	["md_schmidt_shortdot"] = {[1] = Vector(-4, 9, 0), [2] = Vector(0,0,-30)},
	["md_acog"] = {[1] = Vector(-2.34, 10, -2.1), [2] = Vector(-0.1, 0, 0)}
	}


	SWEP.AttachmentModelsVM = {
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.087, 1.457), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.918, 2.388), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.918, 2.388), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.238, 2.849, -5.137), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.355, 2.818, -4.783), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_tundra9mm"] = { type = "Model", model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.143, 14.92), angle = Angle(0, 180, 90), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "weapon", rel = "", pos = Vector(-0.331, 2.778, -4.482), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}
	
	SWEP.ForegripOverridePos = {

		["default"] = {},
		
	}
	

	SWEP.LaserPosAdjust = {x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = {p = 2, y = 180, r = 0}
	SWEP.SightWithRail = true
	SWEP.CustomizationMenuScale = 0.012
end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.FrameBGs = { main = 0, sd = 1, regular = 0 } -- Fixed duplicate 'main', added 'regular'
SWEP.HandguardBGs = { main = 3, regular = 0, none = 1 }
SWEP.RailBGs = { main = 2, on = 1, off = 0 }
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "This reliable submachine gun is the face of counter-terrorism due its successful usage by SAS operators in Operation Nimrod.", x = -600, y = -600}

SWEP.AttachmentExclusions = {["too_sdbar_bar"] = {"md_tundra9mm"},
							 ["am_atow_lowvel"] = {"too_mp5_22lr_rifle"}}
SWEP.Attachments = {
	[1] = {header = "Sight", offset = {700, -400}, atts = {"md_microt1", "too_reflex_mrs","too_reflex_exps", "md_aimpoint", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-400, -400}, atts = {"md_tundra9mm"}},
	[3] = {header = "Conversion", offset = {400, 400}, atts = {"too_sdbar_bar","too_mp5_22lr_rifle"}},
	["+use"] = {header = "Optic Type", offset = {0, 0}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
	["+reload"] = {header = "Ammo", offset = {1400, 35}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}
}


	SWEP.AttachmentDependencies = {
		["md_microt1"] = {"too_optic_category_reflex"},
		["too_reflex_exps"] = {"too_optic_category_reflex"},
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["md_aimpoint"] = {"too_optic_category_reflex"},
		["md_acog"] = {"too_optic_category_magnified"},
		["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
	}

SWEP.Animations = {
    fire         = "fire",
	fire_aim         = "fire_iron",
	fire_last_aim         = "fire",
    reload       = "reload",
    reload_empty = "reload_empty",
    idle         = "idle",
    draw         = "draw"
}

SWEP.Sounds = {
    draw = {
        {time = 0, sound = "CW_FOLEY_MEDIUM"}
    },

    reload = {
		 {time = 0.19, sound = "CW_TOO_MP5_BOLTBACK"},
		 {time = 0.78, sound = "CW_TOO_MP5_MAGGRAB"},
		 {time = 1, sound = "CW_TOO_MP5_MAGOUT"},
		 {time = 1.4, sound = "CW_TOO_MP5_MAGHIT"},
		 {time = 1.48, sound = "CW_TOO_MP5_MAGIN"},
		 {time = 2.15, sound = "CW_TOO_MP5_BOLTREL"},
    },

    reload_empty = {
		{time = 0.19, sound = "CW_TOO_MP5_BOLTBACK"},
		{time = 0.85, sound = "CW_TOO_MP5_MAGOUT_EMPTY"},
		{time = 1.75, sound = "CW_TOO_MP5_MAGHIT_EMPTY"},
		{time = 1.98, sound = "CW_TOO_MP5_MAGIN_EMPTY"},
		{time = 2.49, sound = "CW_TOO_MP5_BOLTSLAP"},
    }
}


SWEP.SpeedDec = 15

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Theater Customs"
SWEP.SubCategory = "Submachine Guns"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/sm/cw2_theater_rfas_mp5a5.mdl"
SWEP.WorldModel		= "models/weapons/w_smg_mp5.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.Secondary.DefaultClip	= 75
SWEP.Secondary.Ammo			= ".22 LR"

SWEP.Chamberable = false -- The user uses the charging handle while changing mags

SWEP.FireDelay = 60 / 800
SWEP.FireSound = "CW_TOO_MP5_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_MP5_FIRE_SUPPRESSED"
SWEP.Recoil = 0.63

SWEP.HipSpread = 0.02
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.3
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 37
SWEP.DeployTime = 0.8
SWEP.NearWallDistance = 25

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3.2
SWEP.ReloadTime_Empty = 3.35
SWEP.ReloadHalt = 3.2
SWEP.ReloadHalt_Empty = 3.35

SWEP.ADSFireAnim = true

function SWEP:fireAnimFunc()
    clip = self:Clip1()         -- gets the current number of bullets left in the weapon's magazine
    cycle = 0                   -- default animation cycle start point
    rate = 1                    -- default animation playback rate
    anim = "safe"               -- unused variable here (probably placeholder)
    prefix = ""                 -- prefix for the animation name
    suffix = ""                 -- suffix for the animation name

    -- If the weapon is down to the last bullet, mark this shot as the "last" animation
    if clip == 1 then
        suffix = suffix .. "_last"
    end

    -- If the player is aiming down sights, adjust animation suffix and cycle
    if self:isAiming() then
        suffix = suffix .. "_aim"
        cycle = self.ironFireAnimStartCycle
    end
    
    -- Actually play the weapon animation
    self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end



SWEP.setMultipleBodygroups = function(self, bodygroups)
    for group, value in pairs(bodygroups) do
        self:setBodygroup(group, value)
    end
end

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 30 * 39.37
self.DamageFallOff = .5
if (self.ActiveAttachments.too_sdbar_bar) then
self.EffectiveRange = ((self.EffectiveRange - 15 * 39.37))
self.DamageFallOff = ((self.DamageFallOff + 0.3))
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
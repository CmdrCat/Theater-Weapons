AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Desert Eagle"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true
	SWEP.Spawnable = false
	
	SWEP.IconLetter = "f"
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cw_theater_deagle")
	killicon.AddFont("cw_deagle", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
	SWEP.PosBasedMuz = false
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 1
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}
		
	SWEP.MicroT1Pos = Vector(-2.632, 0, -0.44)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.EXPSPos = Vector(-2.6, 0, -0.601)
	SWEP.EXPSAng = Vector(0, 0, 0)


	SWEP.ROMEO4TPos = Vector(-2.6, 0, -0.72)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-2.613, 8.843, 0.519)
	SWEP.IronsightAng = Vector(0.699, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.631, 2, -0.64)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)
	
	SWEP.AlternativePos = Vector(-0.88, 1.325, -0.561)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-2.6, 0, -0.64)
    SWEP.MRSAng = Vector(0, 0, 0)

	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .85
	
	SWEP.AttachmentModelsVM = {
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.839, 2.563), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }, 
	["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.933, 1.935), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.933, 1.935), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.221, 1.919), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.415, 3.713, -3.882), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, 1.342, -8), angle = Angle(0, 0, -90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}
end

SWEP.ShootWhileProne = true

SWEP.MuzzleVelocity = 470 -- in meter/s

SWEP.CanRestOnObjects = false
SWEP.SightWithRail = false
SWEP.SightBGs = {main = 1, on = 0, none = 1}

SWEP.Trivia = {text = "This iconic handgun fires the largest round of any magazine-fed, self-loading pistol: The .50 Action Express.", x = -700, y = -500}

SWEP.Attachments = {[1] = {header = "Sight", offset = {450, -350}, atts = {"md_microt1","too_reflex_mrs", "too_reflex_romeo4t","too_reflex_exps", "md_acog"}},
[2] = {header = "Muzzle", offset = {-750, -350}, atts = {"md_saker"}},
["+use"] = {header = "Optic Type", offset = {-100, 40}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
[3] = {header = "Technique", offset = {-100, -400}, atts = {"doi_atow_onehand"}},
[4] = {header = "Conversion", offset = {-600, 100}, atts = {"too_thunderbird_conversion"}},
["+reload"] = {header = "Ammo", offset = {700, 100}, atts = {"am_magnum", "am_matchgrade"}}}


    SWEP.AttachmentDependencies = {
		["md_microt1"] = {"too_optic_category_reflex"},
		["too_reflex_exps"] = {"too_optic_category_reflex"}, 
		["too_reflex_romeo4t"] = {"too_optic_category_reflex"},
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["md_acog"] = {"too_optic_category_magnified"},
	}

SWEP.Animations = {
    fire         = "fire",
	fire_last         = "fire_empty",
	fire_aim         = "fire_iron",
	fire_last_aim         = "fire_empty",
    reload       = "reload",
    reload_empty = "reload_empty",
    idle         = "idle",
    draw         = "draw"
}

SWEP.Sounds = {
    draw = {
        {time = 0,    sound = "CW_FOLEY_LIGHT"}
    },

    reload = {
        {time = 0.57, sound = "CW_TOO_DEAGLE_MAGREL"},
        {time = 0.63,  sound = "CW_TOO_DEAGLE_MAGOUT"},
		{time = 0.95,  sound = "CW_TOO_DEAGLE_MAGHIT"},
		{time = 1.12,  sound = "CW_TOO_DEAGLE_MAGIN"},
    },

    reload_empty = {
        {time = 0.30, sound = "CW_TOO_DEAGLE_MAGOUT_EMPTY"},
		{time = 0.95, sound = "CW_TOO_DEAGLE_PIVOT"},
		{time = 1.45, sound = "CW_TOO_DEAGLE_MAGHIT_EMPTY"},
		{time = 1.58, sound = "CW_TOO_DEAGLE_MAGIN_EMPTY"},
		{time = 2.23, sound = "CW_TOO_DEAGLE_SLIDEBACK"},
		{time = 2.32, sound = "CW_TOO_DEAGLE_SLIDEREL"},
    }
}


SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Theater Customs"
SWEP.SubCategory = "Pistols"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.DrawSpeed = 1.5

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/pi/cw2_rfas_deagle44.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_deagle.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 AE"

SWEP.FireDelay = 60 / 350
SWEP.FireSound = "CW_TOO_DEAGLE_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_DEAGLE_FIRE_SUPPRESSED"
SWEP.Recoil = 2.8

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 1.35
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.32
SWEP.Shots = 1
SWEP.Damage = 79
SWEP.DeployTime = 1
--SWEP.Chamberable = false
SWEP.NearWallDistance = 15

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.89
SWEP.ReloadHalt = 1.89

SWEP.ReloadTime_Empty = 2.9
SWEP.ReloadHalt_Empty = 2.9


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
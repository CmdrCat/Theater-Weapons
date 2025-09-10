AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AK-74"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true

	SWEP.IronsightPos = Vector(-3.6, -2.922, 1.12)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-3.481, 0, -0.16)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.EXPSPos = Vector(-3.57, 0, -0.48)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ROMEO4TPos = Vector(-3.57, 0, -0.52)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	
	SWEP.KobraPos = Vector(-3.641, -4.074, 0.159)
	SWEP.KobraAng = Vector(0, 0, 0)

	
	SWEP.PSOPos = Vector(-3.401, 2, 0.079)
	SWEP.PSOAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-3.471, 2, -0.48)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-3.441, 3, 0)
	SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-3.481, 0, -0.561)
    SWEP.MRSAng = Vector(0, 0, 0)


	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "b"
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cw_theater_ak74")
	killicon.AddFont("cw_ak74", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	
	SWEP.EffectiveRange_Orig = 40 * 39.37
	SWEP.DamageFallOff_Orig = .5

	SWEP.AttachmentModelsVM = {
	    ["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0.079, -3.264, 0.981), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.165, 2), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.165, 1), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.16, 2.474, -5), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_pbs1"] = { type = "Model", model = "models/cw2/attachments/pbs1.mdl", bone = "weapon", rel = "", pos = Vector(0.079, -2.274, 24.422), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_kobra"] = { type = "Model", model = "models/cw2/attachments/kobra.mdl", bone = "weapon", rel = "", pos = Vector(0.479, 1.35, 0.842), angle = Angle(180, 0, -90), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_pso1"] = { type = "Model", model = "models/cw2/attachments/pso.mdl", bone = "weapon", rel = "", pos = Vector(0, 0.462, -3.254), angle = Angle(180, 0, -90), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "weapon", rel = "", pos = Vector(-0.24, 2.647, -4.875), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.278, 2.487, -4.829), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}


end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "A version of the legendary AKM that uses 5.45×39mm rounds.", x = -100, y = -700}

SWEP.SightBGs = {main = 1, carryhandle = 0, none = 1}
SWEP.StockBGs = {main = 2, foldable = 1, regular = 0}

SWEP.Attachments = {[1] = {header = "Sight", offset = {1000, -500},  atts = {"md_kobra","too_reflex_mrs","too_reflex_romeo4t", "too_reflex_exps", "md_aimpoint", "md_schmidt_shortdot", "md_pso1", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-300, -500}, atts = {"md_pbs1"}},
	[3] = {header = "Stock", offset = {700, 500}, atts = {"too_bg_74stock"}},
	["+use"] = {header = "Optic Type", offset = {0, 0}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
	["+reload"] = {header = "Ammo", offset = {1300, -50}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}


    SWEP.AttachmentDependencies = {
		["md_kobra"] = {"too_optic_category_reflex"},
		["md_microt1"] = {"too_optic_category_reflex"},
		["too_reflex_exps"] = {"too_optic_category_reflex"},
		["md_aimpoint"] = {"too_optic_category_reflex"},
		["md_acog"] = {"too_optic_category_magnified"},
		["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
		["md_pso1"] = {"too_optic_category_magnified"},
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["too_reflex_romeo4t"] = {"too_optic_category_reflex"},
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
		 {time = 0.31, sound = "CW_TOO_AK74_MAGOUT"},
		{time = 1.55, sound = "CW_TOO_AK74_MAGHIT"},
		{time = 1.75, sound = "CW_TOO_AK74_MAGIN"},
    },

    reload_empty = {
		{time = 0.40, sound = "CW_TOO_AK74_MAGOUT_EMPTY"},
		{time = 1.1, sound = "CW_TOO_AK74_MAGHIT_EMPTY"},
		{time = 1.25, sound = "CW_TOO_AK74_MAGIN_EMPTY"},
		{time = 1.78, sound = "CW_TOO_AK74_BOLTBACK"},
		{time = 1.82, sound = "CW_TOO_AK74_BOLTFWD"},
    }
}


SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Theater Customs"
SWEP.SubCategory = "Assault Rifles/Carbines"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/ar/cw2_theater_rfas_ak74.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_ak47.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60 / 650
SWEP.FireSound = "CW_TOO_AK74_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_AK74_FIRE_SUPPRESSED"
SWEP.Recoil = 0.75

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.5
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 44
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.35
SWEP.ReloadTime_Empty = 1.5
SWEP.ReloadHalt = 2.35
SWEP.ReloadHalt_Empty = 2.6
SWEP.SnapToIdlePostReload = false

	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)

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
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = .5
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
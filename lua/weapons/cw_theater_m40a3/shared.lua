AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

SWEP.EffectiveRange_Orig = 90 * 39.37
SWEP.DamageFallOff_Orig = .15

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M40A3"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1.2

	SWEP.SelectIcon = surface.GetTextureID("vgui/m40a3")
	killicon.Add("cw_theater_m40a3", "vgui/killicons/m40a3", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	SWEP.ShellDelay = 0.7
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = true
	
	SWEP.IronsightPos = Vector(-3.161, 0, 1.44)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.EXPSPos = Vector(-3.161, 0, 0.239)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-3.161, 0, 0.239)
	SWEP.MRSAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-3.161, -2.695, 0.529)
	SWEP.AimpointAng = Vector(-0, 0.0, 0)
	
	SWEP.ShortDotPos = Vector(-3.12, -2.695, 0.529)
	SWEP.ShortDotAng = Vector(-0, 0, 0)
	
	SWEP.ACOGPos = Vector(-3.12, -2.695, 0.25)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(-3.161, -2.695, 0.529) -- (-2.951, 0, -0.361)
	SWEP.NXSAng = Vector(0, 0, 0)       -- (0.279, 0.07, 0)
	
	SWEP.MicroT1Pos = Vector(-3.11, 0, 0.45)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	


	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)

	SWEP.AlternativePos = Vector(0.2, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.PronePos = Vector(9.97, -1.496, -1.505)
	SWEP.ProneAng = Vector(-6.5, 40, 0)

	SWEP.ReticleInactivityPostFire = nil
	


	
	

	

	
	SWEP.AimBreathingEnabled = false
	SWEP.CrosshairEnabled = true
--	SWEP.AimViewModelFOV = 60
	SWEP.HipFireFOVIncrease = false

    SWEP.LuaViewmodelRecoil = true  
	SWEP.LuaVMRecoilAxisMod = {vert = 0.4, hor = 0.95, roll = 0.9, forward = 0.15, pitch = 0.25}
		
	SWEP.Trivia = {text = "The sniper rifle version of the Remington Model 700, the M40A3 has claimed many lives in modern conflicts.", x = -200, y = -800}

	SWEP.BackupSights = {
		["md_microt1"] = {[1] = Vector(-4.5, 5, -0.5), [2] = Vector(0,0,-20)},
		["too_reflex_mrs"] = {[1] = Vector(-4.5, 2, -0.5), [2] = Vector(0,0,-20)},
		["md_aimpoint"] = {[1] = Vector(-4.5, 4, -0.5), [2] = Vector(0,0,-20)},
		["too_reflex_exps"] = {[1] = Vector(-4.5, 3, -0.5), [2] = Vector(0,0,-20)},
		["md_schmidt_shortdot"] = {[1] = Vector(-4.5, 5, -0.5), [2] = Vector(0,0,-20)},
		["md_acog"] = {[1] = Vector(-3.13, 0, -0.85), [2] = Vector(-0.17, 0, 0)},
		["md_nightforce_nxs"] = {[1] = Vector(-4.5, 5, -0.5), [2] = Vector(0,0,-20)}
	}

	SWEP.AttachmentModelsVM = {
	
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0.075, -2.498, 1.756), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	   	["md_nightforce_nxs"] = { type = "Model", model = "models/cw2/attachments/l96_scope.mdl", bone = "weapon", rel = "", pos = Vector(-0.08, -3.411, 1.409), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	    ["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.322, 3.43, -4.317), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.24, 3.361, -5.06), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.195, 1.771), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.195, 1.771), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, 1.669, 14.112), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "weapon", rel = "", pos = Vector(-0.32, 3.437, -4.732), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}
	

end

SWEP.MuzzleVelocity = 936 -- in meter/s

SWEP.PreventQuickScoping = true
SWEP.QuickScopeSpreadIncrease = 0.2

SWEP.GlobalDelayOnShoot = 1.1

    SWEP.Attachments = {
       [1] = {header = "Sight", offset = {350, -600}, atts = {"md_microt1","too_reflex_mrs", "md_aimpoint", "too_reflex_exps", "md_schmidt_shortdot", "md_acog", "md_nightforce_nxs"}},
       [2] = {header = "Muzzle", offset = {-800, -10}, atts = {"md_saker"}},
       [3] = {header = "Bolt", offset = {2000, 600}, atts = {"md_improved_bolt"}},
	   ["+use"] = {header = "Optic Type", offset = {0, 0}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
	   ["+reload"] = {header = "Ammo", offset = {2200, -200}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}
	   
    }
		


    SWEP.AttachmentDependencies = {
		["md_microt1"] = {"too_optic_category_reflex"},
		["too_reflex_exps"] = {"too_optic_category_reflex"},
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["md_aimpoint"] = {"too_optic_category_reflex"},
		["md_acog"] = {"too_optic_category_magnified"},
		["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
		["md_nightforce_nxs"] = {"too_optic_category_magnified"},
	}
	
   

SWEP.Animations = {
    fire         = "fire",
	fire_aim         = "fire_iron",
	fire_aim_last         = "fire",
    reload       = "reload",
    reload_empty = "reload_empty",
    idle         = "idle",
    draw         = "draw"
}

SWEP.Sounds = {
    draw = {
        {time = 0, sound = "CW_FOLEY_MEDIUM"}
    },

	fire = {
        {time = 0.4, sound = "CW_TOO_M40_BOLTUP"},
		{time = 0.50, sound = "CW_TOO_M40_BOLTBACK"},
		{time = 0.75, sound = "CW_TOO_M40_BOLTFWD"},
		{time = 0.92, sound = "CW_TOO_M40_BOLTDOWN"},
    },

		fire_iron = {
        {time = 0.4, sound = "CW_TOO_M40_BOLTUP"},
		{time = 0.50, sound = "CW_TOO_M40_BOLTBACK"},
		{time = 0.75, sound = "CW_TOO_M40_BOLTFWD"},
		{time = 0.92, sound = "CW_TOO_M40_BOLTDOWN"},
    },

    reload = {
		 {time = 0.25, sound = "CW_TOO_M40_MAGOUT"},
		  {time = 2.1, sound = "CW_TOO_M40_MAGHIT"},
		  {time = 2.18, sound = "CW_TOO_M40_MAGIN"},
    },

    reload_empty = {
		{time = 0.05, sound = "CW_TOO_M40_BOLTUP"},
		{time = 0.25, sound = "CW_TOO_M40_BOLTBACK"},
		 {time = 0.95, sound = "CW_TOO_M40_MAGOUT"},
		 {time = 2.75, sound = "CW_TOO_M40_MAGHIT"},
		 {time = 2.81, sound = "CW_TOO_M40_MAGIN"},
		 {time = 3.5, sound = "CW_TOO_M40_BOLTFWD"},
		 {time = 3.68, sound = "CW_TOO_M40_BOLTDOWN"},
    }
}
SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Theater Customs"
SWEP.SubCategory = "Sniper Rifles"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90  -- 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/sn/cw2_theater_rfas_m40a3.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_scout.mdl"
SWEP.BipodFireAnim = true

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 45
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"
SWEP.Chamberable = true

SWEP.FireDelay = 60 / 50
SWEP.FireSound = "CW_TOO_M40_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_M40_FIRESUPPRESSED"
SWEP.Recoil = 2.5

SWEP.HipSpread = 0.15
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.65
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 170
SWEP.DeployTime = 1.12

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 4.5
SWEP.ReloadHalt = 2.6
SWEP.ReloadHalt_Empty = 4.5

SWEP.ADSFireAnim = true

function SWEP:fireAnimFunc()
    local clip = self:Clip1()
    local cycle = 0
    local rate = 1
    local suffix = ""

    -- Handle aiming first
    if self:isAiming() then
        suffix = "_aim"
        cycle = self.ironFireAnimStartCycle
    end

    -- Handle last shot (after aiming suffix so we get _aim_last instead of losing it)
    if clip == 1 then
        suffix = suffix .. "_last"
    end

    local anim = "fire" .. suffix

    --  fallback if the animation isn't defined in SWEP.Animations
    if not self.Animations[anim] then
        if suffix == "_aim_last" and self.Animations["fire_aim"] then
            anim = "fire_aim"
        elseif suffix == "_last" and self.Animations["fire"] then
            anim = "fire"
        else
            anim = "fire" -- absolute last fallback
        end
    end

    self:sendWeaponAnim(anim, rate, cycle)
end

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 90 * 39.37
self.DamageFallOff = .15
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
 self.Animations.draw = "draw2"
if self.Animations.draw == "draw2" then
    self.DeployTime = 1.12
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
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "L86 LSW"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.012
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/l86lsw")
	killicon.Add("cw_theater_l86", "vgui/killicons/l86lsw", Color(255, 120, 40, 0))

	SWEP.EffectiveRange_Orig = 55 * 39.37
	SWEP.DamageFallOff_Orig = .2

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.52
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.52
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_cw20_l85a2.mdl"
	SWEP.WMPos = Vector(0, -19, -7.5)
	SWEP.WMAng = Vector(-6, 0, 180)
		
	SWEP.IronsightPos = Vector(-3.027, 0, 0.308)
	SWEP.IronsightAng = Vector(1.532, 0, 0)
		
	SWEP.MicroT1Pos = Vector(-3.04, -2, 0.2)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.EXPSPos = Vector(-3, 0, 0.079)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-3, 0, 0.079)
	SWEP.MRSAng = Vector(0, 0, 0)

	
	SWEP.AimpointPos = Vector(-3.018, -2.388, 0.239)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.881, 2, 0.28)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-3, 2, 0.039)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
		SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)

    SWEP.CustomizationMenuScale = 0.02
	SWEP.SightWithRail = true
	
	SWEP.AlternativePos = Vector(-0.2, 0, -0.4)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.ForegripOverridePos = {
	}

	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.24, 2.737, -10.419), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.744, -2.684), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.744, -2.684), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "weapon", rel = "", pos = Vector(-0.24, 2.796, -10.414), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0, -3.113, -3.26), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(-0.53, 3.91, -8.396), angle = Angle(180, 180, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, 1.439, 5.085), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", rel = "", pos = Vector(0.953, -1.03, -0.258), angle = Angle(-90, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.375, 2.88, -9.53), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}

	SWEP.ForeGripHoldPos = {
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(32.067, -28.056, 9.18) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(2.161, -81.763, 28.533) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.732, -40.451, 27.42) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 57.699, -34.175) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.564, 0.519, -0.713), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-17.928, 13.843, 43.887) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(41.328, 16.298, 0) }

	}

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 2, roll = 1.5, forward = 1, pitch = 1}
	
	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
end

SWEP.MuzzleVelocity = 930 -- in meter/s

SWEP.SightBGs = {main = 1, none = 1}
SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "Accurate yet maneuverable, this machine gun is the weapon of choice of C.G.I.'s commander.", x = -300, y = -550}

SWEP.Attachments = {[1] = {header = "Sight", offset = {1200, -300},  atts = {"md_microt1", "too_reflex_mrs","too_reflex_exps", "md_aimpoint", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-700, -500}, atts = {"md_saker"}},
	[3] = {header = "Handguard", offset = {-750, 0}, atts = {"md_foregrip"}},
	[4] = {header = "Laser", offset = {-700, 500},  atts = {"md_anpeq15"}},
	[5] = {header = "Conversion", offset = {850, 700},  atts = {"too_l86_conversion"}},
    ["+use"] = {header = "Optic Type", offset = {1200, 200}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
    ["+reload"] = {header = "Ammo", offset = {150, 300}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}


    SWEP.AttachmentDependencies = {
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["md_microt1"] = {"too_optic_category_reflex"},
		["md_aimpoint"] = {"too_optic_category_reflex"},
		["md_acog"] = {"too_optic_category_magnified"},
		["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
		["too_reflex_exps"] = {"too_optic_category_reflex"},
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
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
		 {time = 0.18, sound = "CW_TOO_L86_MAGSLAP"},
		 {time = 0.51, sound = "CW_TOO_L86_MAGOUT"},
		{time = 2.0, sound = "CW_TOO_L86_MAGHIT"},
		{time = 2.1, sound = "CW_TOO_L86_MAGIN"},
    },

    reload_empty = {
		 {time = 0.18, sound = "CW_TOO_L86_MAGSLAP"},
		{time = 0.51, sound = "CW_TOO_L86_MAGOUT"},
		{time = 2.0, sound = "CW_TOO_L86_MAGHIT"},
		{time = 2.1, sound = "CW_TOO_L86_MAGIN"},
		{time = 2.68, sound = "CW_TOO_L86_BOLTBACK"},
		{time = 2.79, sound = "CW_TOO_L86_BOLTFWD"},

    }
}


SWEP.SpeedDec = 45

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Theater Customs"
SWEP.SubCategory = "Machine Guns"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/too/lm/cw2_theater_too_l86lsw.mdl"
SWEP.WorldModel		= "models/weapons/w_cw20_l85a2.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 420
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 775
SWEP.FireSound = "CW_TOO_L86_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_L86_FIRE_SUPPRESSED"
SWEP.Recoil = 0.3

SWEP.HipSpread = 0.2
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 32
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.7
SWEP.ReloadTime_Empty = 3.2
SWEP.ReloadHalt = 2.7
SWEP.ReloadHalt_Empty = 3.2

-- the model that this L86 LSW uses comes with a bipod
SWEP.BipodInstalled = true
SWEP.BipodRecoilModifier = 0.75


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

function SWEP:getBipodHipSpread()
	return self.HipSpread * 0.75
end

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 55 * 39.37
self.DamageFallOff = .2
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
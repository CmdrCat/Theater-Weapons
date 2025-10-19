AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G3A3"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/g3")
	killicon.Add("cw_theater_g3", "vgui/killicons/g3", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 65 * 39.37
	SWEP.DamageFallOff_Orig = .2

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 0.6
	
	SWEP.IronsightPos = Vector(-2.684, -2.04, 0.959)
	SWEP.IronsightAng = Vector(0.214, 0, 0)
	
	SWEP.EXPSPos = Vector(-2.721, 0, -0.44)
	SWEP.EXPSAng = Vector(0, 0, 0)

	
	SWEP.AimpointPos = Vector(-2.681, -1.142, -0.06)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-2.681, -1.142, -0.179)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.721, 2, -0.22)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.721, 2, -0.22)
    SWEP.ACOGAng = Vector(0, 0, 0)
		
	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)
	
	SWEP.ShortDotPos = Vector(-2.681, 2, -0.06)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.MRSPos = Vector(-2.681, 0, -0.361)
    SWEP.MRSAng = Vector(0, 0, 0)

	SWEP.ROMEO4TPos = Vector(-2.681, 0, -0.380)
    SWEP.ROMEO4TAng = Vector(0, 0, 0)
	
	SWEP.SightWithRail = true
	
	SWEP.AlternativePos = Vector(0.319, 1.325, -1.04)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["too_reflex_mrs"] = {[1] = Vector(-4, 0, 0.5), [2] = Vector(0,0,-30)},
	["too_reflex_romeo4t"] = {[1] = Vector(-4, 0, 0.5), [2] = Vector(0,0,-30)},
	["too_reflex_exps"] = {[1] = Vector(-4, 3, 0.5), [2] = Vector(0,0,-30)},
	["md_aimpoint"] = {[1] = Vector(-3.5, 3, 0.5), [2] = Vector(0,0,-30)},
	["md_schmidt_shortdot"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
	["md_acog"] = {[1] = Vector(-2.725, 10, -1.35), [2] = Vector(-0.1, 0, 0)}
	}

	SWEP.AttachmentModelsVM = {
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.882, -0.062), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	    ["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.823, 0), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.237, 2.825, -6.896), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0.004, -3.148, -0.468), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(-0.29, 1.656, -0.877), angle = Angle(0, 0, -90), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, 1.894, 2.973), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.401, 2.937, -6.309), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
    	["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.823, -1), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "weapon", rel = "", pos = Vector(-0.35, 2.802, -6.24), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.ForeGripHoldPos = {
		["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(4.533, -72.719, 12.585) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 72.402, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15.395, -12.141, 0) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -11.396, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(22.44, 38.023, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(25.247, 0, 0) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(18.784, -29.22, 0) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(9.225, -12.122, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.418, 0.122, -0.464), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-22.618, -1.941, 44.27) }

	}
	

	SWEP.LuaVMRecoilAxisMod = {vert = 0.5, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}
end

SWEP.MuzzleVelocity = 800 -- in meter/s

SWEP.RailBGs = {main = 1, on = 1, off = 0}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "A battle rifle made in collaboration between Heckler & Koch and CETME.", x = -100, y = -900}

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -350},  atts = {"md_microt1","too_reflex_mrs","too_reflex_romeo4t", "too_reflex_exps", "md_aimpoint", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-300, -300},  atts = {"md_saker"}},
	[3] = {header = "Handguard", offset = {-300, 150}, atts = {"md_foregrip"}},
    ["+use"] = {header = "Optic Type", offset = {800, -750}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
    ["+reload"] = {header = "Ammo", offset = {450, 100}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}


    SWEP.AttachmentDependencies = {
		["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["md_microt1"] = {"too_optic_category_reflex"},
		["md_aimpoint"] = {"too_optic_category_reflex"},
		["md_acog"] = {"too_optic_category_magnified"},
		["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
		["too_reflex_exps"] = {"too_optic_category_reflex"},
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
		 {time = 0.10, sound = "CW_TOO_G3A3_BOLTGRAB"},
		 {time = 1, sound = "CW_TOO_G3A3_MAGOUT"},
		 {time = 1.55, sound = "CW_TOO_G3A3_MAGIN"},
		 {time = 2.61, sound = "CW_TOO_G3A3_BOLTSLAP"},
    },

    reload_empty = {
		 {time = 0.10, sound = "CW_TOO_G3A3_BOLTGRAB"},
		  {time = 0.85, sound = "CW_TOO_G3A3_MAGOUT_EMPTY"},
		  {time = 1.9, sound = "CW_TOO_G3A3_MAGHIT_EMPTY"},
		   {time = 2.25, sound = "CW_TOO_G3A3_MAGIN_EMPTY"},
		    {time = 2.68, sound = "CW_TOO_G3A3_BOLTSLAP"},

    }
}
SWEP.SpeedDec = 40

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Theater Customs"
SWEP.SubCategory = "Battle Rifles"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 85
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/br/cw2_theater_rfas_g3.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_g3sg1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.Chamberable = false -- Charging handle is used in every reload

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_TOO_G3A3_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_G3A3_FIRE_SUPPRESSED"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.19
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 56
SWEP.DeployTime = 0.8
SWEP.NearWallDistance = 40

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3.25
SWEP.ReloadTime_Empty = 3.60
SWEP.ReloadHalt = 3.25
SWEP.ReloadHalt_Empty = 3.60

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 65 * 39.37
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
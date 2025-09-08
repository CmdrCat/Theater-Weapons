AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M3 Super 90"
	SWEP.UseHands = true
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	SWEP.IconLetter = "k"
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cw_theater_m3s90")
	killicon.AddFont("cw_xm1014_official", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.EffectiveRange_Orig = 20 * 39.37
	SWEP.DamageFallOff_Orig = .5
	
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	SWEP.Shell = "shotshell"
	SWEP.ShellDelay = 0
	
	SWEP.FireMoveMod = 1
	
	SWEP.SightWithRail = true
		
	SWEP.AlternativePos = Vector(-0.32, 1.366, -1.025)
	SWEP.AlternativeAng = Vector(0, 0, 0)


	SWEP.ROMEO4TPos = Vector(-4.841, 0, 1)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-4.881, 0, 1.12)
	SWEP.MRSAng = Vector(0, 0, 0)


	SWEP.EXPSPos = Vector(-4.881, 0, 1.12)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-4.816, -2, 2.24)
	SWEP.IronsightAng = Vector(0, 0.009, 0)

	
	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
		
	SWEP.CustomizePos = Vector(7.711, -0.482, -2)
	SWEP.CustomizeAng = Vector(16.364, 40.741, 15.277)
	

	SWEP.CustomizationMenuScale = 0.014


	SWEP.AttachmentModelsVM = {
		["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.178, -1.905), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.168, -0.935), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.168, -0.935), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(2.839, -1.048, 5.361), angle = Angle(0, 90, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },

		
	}


	

	
	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}
	
end

SWEP.MuzzleVelocity = 381 -- in meter/s
SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.RailBGs = { main = 1, on = 1, off = 0 }

SWEP.Trivia = {text = "Though this shotgun normally has dual-mode capabilities, this one is locked to semi-automatic.", x = -300, y = -600}

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -450}, atts = {"too_reflex_romeo4t", "too_reflex_mrs", "too_reflex_exps"}},
	[2] = {header = "Muzzle", offset = {-200, -250}, atts = {"md_saker"}},
	["+reload"] = {header = "Ammo", offset = {800, 450}, atts = {"am_slugrounds", "am_flechetterounds"}}}



SWEP.Animations = {
	fire = "fire",
	fire_aim = "fire_iron",
	reload_start = "reload_start",
	insert = "reload_loop",
	reload_end = "reload_end_empty",
	idle = "reload_end",
	draw = "draw"}
	
SWEP.Sounds = {

	 draw = {
        {time = 0, sound = "CW_FOLEY_MEDIUM"}
    },

	 reload_loop = {
        {time = 0.20, sound = "CW_TOO_M3SUPER90_INSERT1"},
		{time = 0.25, sound = "CW_TOO_M3SUPER90_INSERT2"},
		{time = 0.26, sound = "CW_TOO_M3SUPER90_INSERT3"},
    },
	
	 reload_end_empty = {
        {time = 0.20, sound = "CW_TOO_M3SUPER90_BACK"},
		{time = 0.28, sound = "CW_TOO_M3SUPER90_BACK"},
    },
}
 
SWEP.SpeedDec = 25

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Theater Customs"
SWEP.SubCategory = "Shotguns"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 80
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/rfas/sh/cw2_theater_rfas_m3s90.mdl"
SWEP.WorldModel		= "models/weapons/w_cstm_m3super90.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.Chamberable = true

SWEP.FireDelay = 60 / 550
SWEP.FireSound = "CW_TOO_M3SUPER90_FIRE"
SWEP.FireSoundSuppressed = "CW_TOO_M3SUPER90_FIRE_SUPPRESSED"
SWEP.Recoil = 2.5

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.008
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.06
SWEP.ClumpSpread = 0.017
SWEP.SpreadPerShot = 0.013
SWEP.SpreadCooldown = 0.3
SWEP.Shots = 12
SWEP.Damage = 9
SWEP.DeployTime = 1
SWEP.RecoilToSpread = 1.6 -- should actually be called SpreadToRecoil, but whatever

SWEP.ReloadStartTime = 0.28
SWEP.InsertShellTime = 0.8
SWEP.ReloadFinishWait = 0.6
SWEP.PumpMidReloadWait = 0.6
SWEP.ShotgunReload = true


	SWEP.SprintPos = Vector(0, 0, -2.639)
	SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

	SWEP.CustomizePos = Vector(1, -3, -0.611)
	SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)


function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 20 * 39.37
self.DamageFallOff = .5
end


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
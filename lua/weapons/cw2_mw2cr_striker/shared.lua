if not CustomizableWeaponry then return end

SWEP.magType = "shgMag"

if CLIENT then

--Basic Information
SWEP.DrawCrosshair = false
SWEP.PrintName = "Striker-12"
SWEP.CSMuzzleFlashes = true
SWEP.UseHands = true
SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.MuzzleEffect_orig = SWEP.MuzzleEffect
SWEP.PosBasedMuz = false
SWEP.SnapToGrip = false

SWEP.ForeGripOffsetCycle_Draw = 0
SWEP.ForeGripOffsetCycle_Reload = 0.9
SWEP.ForeGripOffsetCycle_ReloadStart = 0.9
SWEP.ForeGripOffsetCycle_ReloadInsert = 0.9
SWEP.ForeGripOffsetCycle_ReloadEnd = 0.9
SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

SWEP.SprintPos = Vector(2, 0, 0)
SWEP.SprintAng = Vector(-10.778, 27.573, 0)

SWEP.CustomizePos = Vector(6.88, -2.073, 1.12)
SWEP.CustomizeAng = Vector(21.361, 35.674, 25.371)

SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 

--Sight Positions

	SWEP.IronsightPos = Vector(-2.8465, -3.0845, 0.4783)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.MRSPos = Vector(-2.8388, -2.0196, 0.15)
	SWEP.MRSAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-2.8388, 2, 0.31)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ROMEO4TPos = Vector(-2.8388, -2, 0.025)
	SWEP.ROMEO4TAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.8388, 1, 0.22)
	SWEP.AimpointAng = Vector(0, 0, 0)

	SWEP.EXPSPos = Vector(-2.8313, -1.0694, 0.1)
	SWEP.EXPSAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.8313, 2, 0.22)
	SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.8313, 2, -0.11)
	SWEP.ACOGAng = Vector(0, 0, 0)

--Select and kill icon (Temporary)
SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cw2_mw2cr_striker")
killicon.Add("cw2_mw2cr_striker", "mw2_icons/ma85_icons/hud/striker", Color(255, 255, 255, 0))

--Worldmodel Information
SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/weapons/ma85_mw2cr/striker/worldmodel.mdl"
SWEP.WMPos = Vector( -16, -0.6, 3.25)
SWEP.WMAng = Vector(-5, 87.5, 180)

-- LUA Recoil
SWEP.LuaViewmodelRecoil = false
SWEP.FullAimViewmodelRecoil = true
SWEP.DisableSprintViewSimulation = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 5, roll = 0, forward = -4, pitch = 1}

--Shell
SWEP.ShellScale = 0.7
SWEP.Shell = "shotshell"
SWEP.ShellOffsetMul = 1
SWEP.ShellPosOffset = {x = 0, y = 0, z = -1}

--Bolt movement
--SWEP.BoltBone = "j_bolt2"
SWEP.BoltShootOffset = Vector(-1.5, 0, 0)
SWEP.HoldBoltWhileEmpty = false
SWEP.DontHoldWhenReloading = true
SWEP.BoltBonePositionRecoverySpeed = 15

SWEP.MaterialIndexPrimary = {0, 1}
SWEP.MaterialIndexSecondary = {2, 3}

SWEP.ForegripOverride = true
SWEP.ForegripOverridePos = {
["null"] = {},

-- ["customize"] = {
	-- ["j_shoulder_le"] = { scale = Vector(1.1, 1.1, 1.1), pos = Vector(-0.038, 2.628, -6.242), angle = Angle(-35.389, 0, 0) },
-- } 
}

SWEP.BackupSights = {
	["too_reflex_mrs"] = {[1] = Vector(-5, 5, -1), [2] = Vector(0,0,-30)},
	["too_reflex_exps"] = {[1] = Vector(-5, 7.5, -1), [2] = Vector(0,0,-30)},
	["md_microt1"] = {[1] = Vector(-5, 13, -1), [2] = Vector(0,0,-30)},
	["md_aimpoint"] = {[1] = Vector(-5, 10, -1), [2] = Vector(0,0,-30)},
	["too_reflex_romeo4t"] = {[1] = Vector(-5, 5, -1), [2] = Vector(0,0,-30)},
	["md_schmidt_shortdot"] = {[1] = Vector(-5, 13, -1), [2] = Vector(0,0,-30)},
	["md_acog"] = {[1] = Vector(-2.8313, 2, -1.18), [2] = Vector(-0.2, 0, 0)}}

SWEP.AttachmentModelsVM = {
--Scopes--
["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "tag_red_dot", rel = "", pos = Vector(-0.1, 0, 0.15), angle = Angle(0, 0, 0), size = Vector(.875, .875, .875) },
["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "tag_red_dot", pos = Vector(-0.1, 0, 0.347), angle = Angle(0, -90, 0), size = Vector(0.46, 0.46, 0.46)},
["too_reflex_romeo4t"] = { type = "Model", model = "models/eftatts/eft_scope_romeo4t.mdl", bone = "tag_red_dot", rel = "", pos = Vector(-0.25, 0, 0.16), angle = Angle(0, 0, 0), size = Vector(0.9, 0.9, 0.9)},
["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "tag_red_dot", pos = Vector(-6.4, 0.275, -5.45), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "tag_eotech", rel = "", pos = Vector(0.5, 0, 0.14), angle = Angle(0, 0, 0), size = Vector(.875, .875, .875) },
["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "tag_red_dot", rel = "", pos = Vector(8.7, -0.65, -1.1), angle = Angle(0, 0, -90), size = Vector(1, 1, 1) },
["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "tag_red_dot", pos = Vector(8.6, -0.59, -1), angle = Angle(0, 180, 90), size = Vector(0.6, 0.6, 0.6)},
["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(11.6, 0, -1.08), angle = Angle(0, 0, 0), size = Vector(1.1, 1.1, 1.1), bone = "tag_red_dot"},
["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "tag_red_dot", rel = "", pos = Vector(-6, 0, -4.07), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "tag_eotech", pos = Vector(-5.98, 0.36, -5.49), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "tag_eotech", pos = Vector(-6.3, 0.37, -5.47), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)}
}
end

SWEP.Animations = {
fire = "reg_fire",
reload_start = "reg_reload_start",
insert = "reg_reload_loop",
reload_end = "reg_reload_end",
idle = "reg_idle",
draw = "reg_draw",
holster = "reg_holster",
}

--Customization Information
SWEP.CustomizationMenuScale = 0.0125

SWEP.Attachments = {
[1] = {header = "Sight", offset = {400, -450}, atts = {"too_reflex_mrs", "md_microt1", "too_reflex_romeo4t", "md_aimpoint", "too_reflex_exps", "md_schmidt_shortdot", "md_acog"}},
[2] = {header = "Muzzle", offset = {-750, -300}, atts = {"doi_atow_unisuppressor", "md_saker"}},
[3] = {header = "Laser", offset = {-800, 300}, atts = {"ftacgrimline", "md_anpeq15"}},
[4] = {header = "Signature Attachment", offset = {1000, 450}, atts = {"cw2_mw2cr_strikerauto"}},
[5] = {header = "Skins", offset = {1200, 0}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
["+reload"] = {header = "Ammo", offset = {200, 350}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

--Other information
SWEP.Trivia = {text = "The Striker-12 is a cumbersome, revolving shotgun. But in the right hands, anything is deadly.", x = -400, y = -550}

SWEP.SpeedDec = 25 --Speed decrease on equip

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"double"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Shotguns"

SWEP.ViewModelMovementScale = 1

SWEP.ZoomAmount = 10
SWEP.AimViewModelFOV = 60
SWEP.ReticleInactivityPostFire = 0

SWEP.Author = "Moka_Akashiya85"
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = ""

SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/ma85_mw2cr/striker/viewmodel.mdl"
SWEP.WorldModel = "models/weapons/ma85_mw2cr/striker/worldmodel.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Primary.ClipSize = 12
SWEP.Primary.DefaultClip = 48
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12 Gauge"

SWEP.FireDelay = 60/352

SWEP.Recoil = 2.5

SWEP.RecoilToSpread = 1
SWEP.ShotgunReloadState = 0

SWEP.HipSpread = 0
SWEP.AimSpread = 0

SWEP.ClumpSpread = 0.03

SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0
SWEP.SpreadCooldown = 0
SWEP.FOVPerShot = 0 --How much the FOV is increased per shot
SWEP.FireAnimSpeed = 1 --Percentage speed of fire animation
SWEP.CanRestOnObjects = true
SWEP.ReloadViewBobEnabled = false
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

SWEP.PenMod = 0.1

--Damage
SWEP.Shots = 12
SWEP.Damage = 10
SWEP.PushForce = 5

--Shotgun Stuff
SWEP.ShotgunReload = 1

SWEP.ReloadSpeed = 1.75
SWEP.ReloadStartTime = 0.73
SWEP.InsertShellTime = 0.9
SWEP.ReloadFinishWait = 0.43

SWEP.EffectiveRange_Orig = 25 * 39.37
SWEP.DamageFallOff_Orig = 0.6

SWEP.SnapToIdlePostReload = false

SWEP.Chamberable = false

-- Bodygroups
SWEP.SightBGs = {main = 1, none = 1}
SWEP.MuzzleBGs = {main = 0, normal = 0, off = 0}
SWEP.GripBGs = {main = 0, gl = 1, shg = 2, normal = 0}
SWEP.HandBGs = {main = 0, normal = 1}

--Draw/Holster
SWEP.DrawSpeed = 1

SWEP.DeployTime = 0.8
SWEP.HolsterTime = 0.7

--Sounds
CustomizableWeaponry:addFireSound("MW2CR_striker_FIRE", {
"ma85_mw2cr/striker/fire/fire.wav",
}, 1, 90, CHAN_STATIC)

CustomizableWeaponry:addFireSound("MW2CR_striker_FIRE_SUPPRESSED", {
"ma85_mw2cr/striker/fire/h1_wpn_supp_sniper_01.wav",
}, 1, 90, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("MW2CR_striker_RELOAD_START", "ma85_mw2cr/striker/lift.wav")
CustomizableWeaponry:addReloadSound("MW2CR_striker_RELOAD_LOOP", { 
"ma85_mw2cr/striker/shell01.wav",
"ma85_mw2cr/striker/shell02.wav",
"ma85_mw2cr/striker/shell03.wav",
"ma85_mw2cr/striker/shell04.wav",
})
CustomizableWeaponry:addReloadSound("MW2CR_striker_RELOAD_END", "ma85_mw2cr/striker/end.wav")
CustomizableWeaponry:addReloadSound("MW2CR_striker_RELOAD_BUTTON", "ma85_mw2cr/striker/button.wav")

SWEP.Sounds = {
reg_draw = {
    {time = 0, sound = "MW2CR_RAISE_MEDIUM"},
},

reg_reload_start = {
    {time = 0, sound = "MW2CR_striker_RELOAD_LIFT"},
},

reg_reload_loop = {
    {time = 0, sound = "MW2CR_striker_RELOAD_LOOP"},
    {time = 0.2, sound = "MW2CR_striker_RELOAD_BUTTON"},
},

reg_reload_end = {
    {time = 0, sound = "MW2CR_striker_RELOAD_END"},
},
}

SWEP.LoopFireSound = false
SWEP.FireSound = "MW2CR_striker_FIRE"
SWEP.FireSoundSuppressed = "MW2CR_striker_FIRE_SUPPRESSED"

function SWEP:IndividualThink()
	self.EffectiveRange = 25 * 39.37
	self.DamageFallOff = .6
    self.CrosshairParts = {left = false, right = false, upper = false, lower = false}
    self.HipSpread = 0

    if (self.ActiveAttachments.am_slugrounds) then
        self.CrosshairParts = {left = true, right = true, upper = true, lower = true}
        self.HipSpread = 0.101
	end

local attachment = self.ActiveAttachments
if CLIENT then
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
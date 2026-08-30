if not CustomizableWeaponry then return end

SWEP.magType = "shgMag"

if CLIENT then

--Basic Information
SWEP.DrawCrosshair = false
SWEP.PrintName = "Model 1887"
SWEP.CSMuzzleFlashes = true
SWEP.UseHands = true
SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.MuzzleEffect_orig = SWEP.MuzzleEffect
SWEP.PosBasedMuz = false
SWEP.SnapToGrip = false

SWEP.ForeGripOffsetCycle_Draw = 0
SWEP.ForeGripOffsetCycle_Reload = 0
SWEP.ForeGripOffsetCycle_ReloadStart = 0
SWEP.ForeGripOffsetCycle_ReloadInsert = 0
SWEP.ForeGripOffsetCycle_ReloadEnd = 0
SWEP.ForeGripOffsetCycle_Reload_Empty = 0

SWEP.SprintPos = Vector(2, 0, 0)
SWEP.SprintAng = Vector(-10.778, 27.573, 0)

SWEP.CustomizePos_Orig = Vector(6.88, -2.073, 1.12)
SWEP.CustomizeAng_Orig = Vector(21.361, 35.674, 25.371)

SWEP.CustomizePos = Vector(6.88, -2.073, 1.12)
SWEP.CustomizeAng = Vector(21.361, 35.674, 25.371)

SWEP.CustomizePos_Akimbo = Vector(0, 0, -7.5)
SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

SWEP.LaserPosAdjust = Vector(6.05, 40, -4.3)
SWEP.LaserAngAdjust = Angle(0, 0, 0)

--Sight Positions

	SWEP.IronsightPos = Vector(-3.0865, -0.9268, 1.5287)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-4.698, -0.9268, 0.786)
	SWEP.TacStanceAng = Vector(0, 0, -45)

	SWEP.BackupSights = {
	["too_optic_tacstance"] = {[1] = Vector(-3.0865, -0.9268, 1.5287), [2] = Vector(0,0,0)}}

--Select and kill icon (Temporary)
SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cw2_MW2CR_1887")
killicon.Add("cw2_mw2cr_1887", "mw2_icons/ma85_icons/hud/1887", Color(255, 255, 255, 0))

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
SWEP.ShellDelay = 0.6
SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}

if CLIENT then
	function SWEP:CreateShell()
		return false
	end
end

--Bolt movement
--SWEP.BoltBone = "j_bolt2"
SWEP.BoltShootOffset = Vector(-1.5, 0, 0)
SWEP.HoldBoltWhileEmpty = false
SWEP.DontHoldWhenReloading = true
SWEP.BoltBonePositionRecoverySpeed = 15

SWEP.MaterialIndexPrimary = {0, 1}
SWEP.MaterialIndexSecondary = {2}

/*
0 - Barrel and magazine tube
1 - Receiver
2 - Wooden Handguard
*/

SWEP.BaseArm = "j_shoulder_le"

SWEP.ForegripOverride = true
SWEP.ForegripOverridePos = {
	["akimbo"] = {
        ["j_shoulder_le"] = { scale = Vector(1, 1, 1), pos = Vector(0, -50, 0), angle = Angle(0, 0, 0) }},
    ["nah"] = {
        ["j_shoulder_le"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	["customize"] = {
		["j_shoulder_le"] = { scale = Vector(1.1, 1.1, 1.1), pos = Vector(-0.038, 2.628, -6.242), angle = Angle(-35.389, 0, 0) }} 
}

SWEP.AttachmentModelsVM = {

	["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "tag_silencer", rel = "", pos = Vector(11.429, 0.001, 1.392), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
	["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(28.871, 0, 4.363), angle = Angle(0, 0, 0), size = Vector(1.1, 1.1, 1.1), bone = "tag_silencer"},

	["ins2_atow_clamplaser"] = {model = "models/khrcw2/ins2pack/attachments/lasers/laserrifle.mdl", pos = Vector(-14.499, -4.358, 8.66), angle = Angle(0, 0, 0), size = Vector(1.9, 1.9, 1.9), bone = "tag_weapon"},
}

end

SWEP.Animations = {
fire = "reg_fire",
rechamber = "reg_rechamber",
rechamber_onehand = "reg_reload_end",
reload_start = "reg_reload_start",
reload_start_one = "reg_reload_start_alt",
reload_start_empty = "reg_reload_start_empty",
insert = "reg_reload_loop",
insert_one = "reg_reload_loop_alt",
reload_end = "reg_reload_end",
idle = "reg_idle",
draw = "reg_draw",
holster = "reg_holster"
}

SWEP.Animations_Akimbo = {
fire = "reg_fire",
rechamber = "reg_rechamber",
rechamber_onehand = "reg_reload_end",
reload_start = "reg_reload_start",
reload_start_one = "reg_reload_start_alt",
reload_start_empty = "reg_reload_start_empty",
insert = "reg_reload_loop",
insert_one = "reg_reload_loop_alt",
reload_end = "reg_reload_end",
idle = "reg_idle",
draw = "reg_draw",
holster = "reg_holster",

fire_right = "reg_fire",
rechamber_right = "reg_rechamber",
rechamber_onehand_right = "reg_reload_end",
reload_start_right = "reg_reload_start",
reload_start_one_right = "reg_reload_start_alt",
reload_start_empty_right = "reg_reload_start_empty",
insert_right = "reg_reload_loop",
insert_one_right = "reg_reload_loop_alt",
reload_end_right = "reg_reload_end",
idle_right = "reg_idle",
draw_right = "reg_draw",
holster_right = "reg_holster",
}

--Customization Information
SWEP.CustomizationMenuScale = 0.0175

SWEP.Trivia = {text = "Designed by the legendary John Browning, this lever-action shotgun proves reliable even to this day.", x = -200, y = -350}

SWEP.Attachments = {
[1] = {header = "Sight", offset = {600, -150}, atts = {"too_optic_tacstance"}},
[2] = {header = "Muzzle", offset = {-700, -150}, atts = {"doi_atow_unisuppressor", "md_saker"}},
[3] = {header = "Laser", offset = {-600, 300}, atts = {"ins2_atow_clamplaser"}},
[4] = {header = "Technique", offset = {500, 600}, atts = {"cw_akimbo"}},
[5] = {header = "Skins", offset = {1400, 200}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
["+reload"] = {header = "Ammo", offset = {1200, 550}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

--Other information
SWEP.SpeedDec = 15 --Speed decrease on equip

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.AimingHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"leveract"}
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
SWEP.ViewModel = "models/weapons/ma85_mw2cr/1887/viewmodel.mdl"
SWEP.WorldModel = "models/weapons/w_annabelle.mdl"

SWEP.ViewModel_AkimboL = "models/weapons/ma85_mw2cr/1887/viewmodel.mdl"
SWEP.ViewModel_AkimboR = "models/weapons/ma85_mw2cr/1887/viewmodel.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 35
SWEP.Primary.Automatic = false
SWEP.Primary.Automatic_Orig = SWEP.Primary.Automatic
SWEP.Primary.Ammo = "12 Gauge"

SWEP.FireDelay = 60/45

SWEP.Recoil = 2.5

SWEP.RecoilToSpread = 1
SWEP.ShotgunReloadState = 0

SWEP.HipSpread = 0
SWEP.AimSpread = 0

SWEP.ClumpSpread = 0.02

SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.001
SWEP.SpreadPerShot = 0.1
SWEP.SpreadCooldown = 0
SWEP.CrosshairParts = {left = false, right = false, upper = false, lower = false}
SWEP.FOVPerShot = 0 --How much the FOV is increased per shot
SWEP.FireAnimSpeed = 1 --Percentage speed of fire animation
SWEP.CanRestOnObjects = true
SWEP.ReloadViewBobEnabled = false
SWEP.ADSFireAnim = true

SWEP.PenMod = 0.1

SWEP.SemiAutoQueuedShot = false
SWEP.SemiAutoTriggerBuffer = 0
SWEP.SemiAutoTriggerBufferUntil = 0
SWEP.RechamberTime = 1
SWEP.RechamberSpeed = 1.25

--Damage
SWEP.Shots = 12
SWEP.Damage = 16

--Shotgun Stuff
SWEP.ShotgunReload = 1

SWEP.ReloadSpeed = 1.25
SWEP.ReloadStartTime = 1.825
SWEP.ReloadStartEmptyTime = 1.925
SWEP.InsertShellTime = 1.1
SWEP.ReloadFinishWait = 1.45

SWEP.EffectiveRange_Orig = 20 * 39.37
SWEP.DamageFallOff_Orig = 0.7

SWEP.SnapToIdlePostReload = false
SWEP.UseMW2CRShotgunReloadLogic = true

SWEP.Chamberable = false

-- Bodygroups
SWEP.SightBGs = {main = 1, none = 1}
SWEP.MuzzleBGs = {main = 0, normal = 0, off = 0}
SWEP.GripBGs = {main = 1, gl = 1, shg = 2, normal = 0}
SWEP.HandBGs = {main = 0, normal = 1}

--Draw/Holster
SWEP.DrawSpeed = 1
SWEP.HolsterSpeed = 1

SWEP.FirstDeployTime = 1.57
SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.35

--Sounds
CustomizableWeaponry:addFireSound("MW2CR_1887_FIRE", {
"ma85_mw2cr/1887/fire/fire.wav",
}, 1, 90, CHAN_STATIC, 100, 100)

CustomizableWeaponry:addFireSound("MW2CR_SIL_SNIPER", {
"ma85_mw2cr/1887/fire/h1_wpn_supp_sniper_01.wav",
}, 1, 70, CHAN_STATIC, 95, 110)

CustomizableWeaponry:addReloadSound("MW2CR_1887_RELOAD_START", "ma85_mw2cr/1887/lift.wav")

CustomizableWeaponry:addReloadSound("MW2CR_1887_RELOAD_SPIN", "ma85_mw2cr/1887/spin.wav")

CustomizableWeaponry:addReloadSound("MW2CR_1887_RELOAD_LOOP", {
"ma85_mw2cr/1887/shell01.wav",
"ma85_mw2cr/1887/shell02.wav",
"ma85_mw2cr/1887/shell03.wav",
"ma85_mw2cr/1887/shell04.wav",
}
)

CustomizableWeaponry:addReloadSound("MW2CR_1887_PUMP_BACK", "ma85_mw2cr/1887/open.wav")
CustomizableWeaponry:addReloadSound("MW2CR_1887_PUMP_FORWARD", "ma85_mw2cr/1887/close.wav")

SWEP.LoopFireSound = false
SWEP.FireSound = "MW2CR_1887_FIRE"
SWEP.FireSoundSuppressed = "MW2CR_SIL_SNIPER"

SWEP.Sounds = {
reg_draw = {
[1] = {time = 0, sound = "MW2CR_RAISE_MEDIUM"},
},

reg_rechamber = {
[1] = {time = 0.15, sound = "MW2CR_1887_PUMP_BACK"},
[2] = {time = 0.45, sound = "MW2CR_1887_PUMP_FORWARD"},
},

reg_rechamber_onehand = {
[1] = {time = 0, sound = "MW2CR_1887_RELOAD_LIFT"},
[2] = {time = 0.3, sound = "MW2CR_1887_RELOAD_SPIN"},
[3] = {time = 0.65, sound = "MW2CR_1887_PUMP_FORWARD"},
},

reg_reload_start = {
[1] = {time = 0, sound = "MW2CR_1887_RELOAD_LIFT"},
[2] = {time = 0.3, sound = "MW2CR_1887_PUMP_BACK"},
[3] = {time = 1.3, sound = "MW2CR_1887_RELOAD_LOOP"},
},

reg_reload_start_alt = {
[1] = {time = 0, sound = "MW2CR_1887_RELOAD_LIFT"},
[2] = {time = 0.3, sound = "MW2CR_1887_PUMP_BACK"},
[3] = {time = 1.3, sound = "MW2CR_1887_RELOAD_LOOP"},
},

reg_reload_start_empty = {
[1] = {time = 0, sound = "MW2CR_1887_RELOAD_LIFT"},
[2] = {time = 0.3, sound = "MW2CR_1887_PUMP_BACK"},
[3] = {time = 1.3, sound = "MW2CR_1887_RELOAD_LOOP"},
},

reg_reload_loop = {
[1] = {time = 0.5, sound = "MW2CR_1887_RELOAD_LOOP"},
},

reg_reload_loop_alt = {
[1] = {time = 0.5, sound = "MW2CR_1887_RELOAD_LOOP"},
},

reg_reload_end = {
[1] = {time = 0, sound = "MW2CR_1887_RELOAD_LIFT"},
[2] = {time = 0.3, sound = "MW2CR_1887_RELOAD_SPIN"},
[3] = {time = 0.65, sound = "MW2CR_1887_PUMP_FORWARD"},
},

}

function SWEP:fireAnimFunc(rightSide)
	self.mw2crAllowImmediateReload = self:Clip1() <= 1

	if self.isDualwield then
		if rightSide then
			self:sendWeaponAnim("fire_right", self.FireAnimSpeed, 0, false, 1)
			if self.Animations and self.Animations.rechamber then
				if self:Clip1() > 1 then
					timer.Simple(0.2, function()
						if IsValid(self) then
							self:sendWeaponAnim("rechamber_onehand_right", self.RechamberSpeed or 1, 0, true, 1)
						end
					end)
				end
			end
			return
		end

		self:sendWeaponAnim("fire", self.FireAnimSpeed, 0, false, nil)
		if self.Animations and self.Animations.rechamber then
			if self:Clip1() > 1 then
				timer.Simple(0.2, function()
					if IsValid(self) then
						self:sendWeaponAnim("rechamber_onehand", self.RechamberSpeed or 1, 0, true)
					end
				end)
			end
		end
		return
	end

	self:sendWeaponAnim("fire", self.FireAnimSpeed)

	if self.Animations and self.Animations.rechamber then
		if self:Clip1() > 1 then
			timer.Simple(0.2, function()
				if IsValid(self) and self:Clip1() % 2 == 0 then
					self:sendWeaponAnim("rechamber", self.RechamberSpeed/1.25 or 1, 0, true)
				else
					if self:isAiming() then
						self:sendWeaponAnim("rechamber", self.RechamberSpeed/1.25 or 1, 0, true)
					else
						self:sendWeaponAnim("rechamber_onehand", self.RechamberSpeed or 1, 0, true)
					end
				end
			end)
		end
	end
end

function SWEP:postPrimaryAttack()
	if self.mw2crAllowImmediateReload then
		self.ReloadWait = CurTime()
		self.mw2crAllowImmediateReload = false
	end
end

function SWEP:IndividualThink()
	self.EffectiveRange = 20 * 39.37
	self.DamageFallOff = .7
    self.CrosshairParts = {left = false, right = false, upper = false, lower = false}
    self.HipSpread = 0

    if (self.ActiveAttachments.am_slugrounds) then
        self.CrosshairParts = {left = true, right = true, upper = true, lower = true}
        self.HipSpread = 0.07
	end

	if self.ActiveAttachments.cw_akimbo then
		self.ViewModelOffsetPos = Vector(2, 0, 0)
		self.ViewModelOffsetAng = Angle(0, 0, 0)
		self.ViewModelOffsetPos2 = Vector(-2, 0, 0)
		self.ViewModelOffsetAng2 = Angle(0, 0, 0)
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
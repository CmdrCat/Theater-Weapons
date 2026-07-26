if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")
	
	SWEP.magType = "pistolMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Raging Bull"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.SelectIcon = surface.GetTextureID("weaponicons/select/taurus")
	killicon.Add("cw_ber_bull", "weaponicons/bull-k", Color(255, 80, 0, 150))
	
	SWEP.EffectiveRange = 30 * 39.37
	SWEP.DamageFallOff = .85

	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_dber_bull.mdl"
	SWEP.WMPos = Vector(0, 2.8, -4.4)
	SWEP.WMAng = Vector(0, 0, 180)

	SWEP.ViewModel_AkimboL = "models/weapons/v_dber_bull.mdl"
	SWEP.ViewModel_AkimboR = "models/weapons/v_dber_bull.mdl"
	
	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.PosBasedMuz = false
	SWEP.NoShells = true
	
	SWEP.IronsightPos = Vector(-1.663, 5, 0.5)
	SWEP.IronsightAng = Vector(0.315, -0.406, 0)

	SWEP.DocterPos = Vector(-1.565, 5, 0.26)
	SWEP.DocterAng = Vector(0, 0, 0)

	SWEP.RMRPos = Vector(-1.565, 5, 0.31)
	SWEP.RMRAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-1.56, 5, -0.01)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ELCANPos = Vector(-1.68, 5, -0.34)
	SWEP.ELCANAng = Vector(-0.04, -0.406, 0)

	SWEP.ACOGPos = Vector(-1.59, 7.5, -0.365)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.ThermalPos = Vector(-1.68, -5, -0.34)
	SWEP.ThermalAng = Vector(-0.04, -0.406, 0)

	SWEP.NXSPos = Vector(-1.6, 10, -0.34)
	SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.SprintPos = Vector(0.402, -6.226, -5.026)
	SWEP.SprintAng = Vector(53.466, -4.926, -7.035)

	SWEP.CustomizePos_Orig = Vector(7.236, -6, 1.009)
	SWEP.CustomizeAng_Orig = Vector(43.619, 42.209, 54.874)

	SWEP.CustomizePos = Vector(7.236, -6, 1.009)
	SWEP.CustomizeAng = Vector(43.619, 42.209, 54.874)

	SWEP.CustomizePos_Akimbo = Vector(0, -5, -7.5)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

	SWEP.AlternativePos = Vector(0.261, -0.038, -0.131)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.ViewModelMovementScale = 0.5
	SWEP.FullAimViewmodelRecoil = true
	SWEP.HUD_MagText = "CYLINDER: "

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.008
	SWEP.DisableSprintViewSimulation = true

	SWEP.MaterialIndexPrimary = {0, 1}

	SWEP.BaseArm = "l_upperarm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.ForegripOverridePos = {
	["onehand"] = {
		["l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -5), angle = Angle(0, 0, 0) }},
	["akimbo"] = {
		["l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -40), angle = Angle(0, 0, 0) }},
	["nah"] = {
		["l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
	}

	SWEP.BackupSights = {
	["md_docter"] = {[1] = Vector(-4, 6, -2), [2] = Vector(5, 0, -30)},
	["md_rmr"] = {[1] = Vector(-4, 6, -2), [2] = Vector(5, 0, -30)},
	["md_microt1"] = {[1] = Vector(-4, 10, -2), [2] = Vector(5, 0, -30)},
	["md_elcan"] = {[1] = Vector(-1.66, 5, -1.12), [2] = Vector(-0.04, -0.406, 0)},
	["md_acog_fixed"] = {[1] = Vector(-1.683, 5, -1.264), [2] = Vector(0, -0.395, 0)},
	["md_nightforce_nxs"] = {[1] = Vector(-4, 6, -2), [2] = Vector(5, 0, -30)}}

	SWEP.NXSAlign = {right = 0.35, up = 0, forward = 0}

	SWEP.AttachmentModelsVM = {
		["md_docter"] = { type = "Model", model = "models/wystan/attachments/2octorrds.mdl", bone = "weapon", rel = "", pos = Vector(-0.265, 0.49, 2.96), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "weapon", pos = Vector(-0.25, -2.7, -0.39), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(-0.01, 0.65, 3.134), angle = Angle(0, 180, 0), size = Vector(0.349, 0.349, 0.349)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "weapon", rel = "", pos = Vector(-0.3, -1.34, -1.57), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_acog_fixed"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(-0.315, -4.04, -1.53), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "weapon", rel = "", pos = Vector(-0.3, -1.34, -1.57), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "weapon", pos = Vector(-0.1, 1.25, 4.19), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "weapon", pos = Vector(0, 1.36, 1.85), angle = Angle(0, 89.56, 0), size = Vector(0.12, 0.12, 0.12)},
		["md_csgo_taclight"] = { type = "Model", model = "models/kali/weapons/csgo/eq_taclight_pistol.mdl", bone = "weapon", rel = "", pos = Vector(-0.03, -4.1, -2.67), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.5, 1.3), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255)}
	}
	
	SWEP.LaserPosAdjust = Vector(0, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
end

SWEP.BarrelBGs = {main = 0, small = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false
SWEP.ADSFireAnim = true

SWEP.AttachmentExclusions = {["am_snakeshot"] = {"cw_500nitroexpress"},
							 ["md_elcan"] = {"bg_ber_babybull"},
							 ["md_thermal"] = {"bg_ber_babybull"}}

SWEP.Attachments = {[1] = {header = "Sight", offset = {500, -300},  atts = {"md_docter", "md_rmr", "md_microt1", "md_elcan", "md_acog_fixed", "md_thermal", "md_nightforce_nxs"}},
	[2] = {header = "Barrel", offset = {-450, -300},  atts = {"bg_ber_babybull", "md_saker"}},
	[3] = {header = "Underbarrel", offset = {-600, 200}, atts = {"md_insight_x2", "md_csgo_taclight"}},
	[4] = {header = "Technique", offset = {1100, 600}, atts = {"doi_atow_onehand", "cw_akimbo"}},
	[5] = {header = "Conversion", offset = {300, 450}, atts = {"cw_500nitroexpress"}},
	[6] = {header = "Skins", offset = {-875, 650}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes","md_skinyellowjacket"}},
	["+reload"] = {header = "Ammo", offset = {1000, 125}, atts = {"am_reducedpowderload", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap", "am_snakeshot"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	idle = "idle1",
	draw = "draw"}

SWEP.Animations_Akimbo = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	idle = "idle1",
	draw = "draw",
	fire_right = {"shoot1", "shoot2"},
	reload_right = "reload",
	idle_right = "idle1",
	draw_right = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_LIGHT"},
	{time = 0.3, sound = "CW_BER_BULL_CYLINDERCLOSE"}},

	reload = {{time = 0.1, sound = "CW_BER_BULL_CYLINDEROPEN"},
	{time = 0.8, sound = "CW_BER_BULL_ROUNDSOUT"},
	{time = 1.3, sound = "CW_FOLEY_LIGHT"},
	{time = 2, sound = "CW_BER_BULL_ROUNDSIN"},
	{time = 2.7, sound = "CW_BER_BULL_CYLINDERCLOSE"}}}

SWEP.Trivia = {text = "The Raging Bull is a reliable revolver that delivers a .44 Magnum payload with no compromise.", x = -400, y = -400}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"double"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Pistols"

SWEP.Author			= "BER_"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_dber_bull.mdl"
SWEP.WorldModel		= "models/weapons/w_dber_bull.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 78
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".44 Magnum"

SWEP.Secondary.DefaultClip	= 36
SWEP.Secondary.Ammo			= ".500 Nitro Express"

SWEP.FireDelay = 60 / 200
SWEP.FireSound = "CW_BER_BULL_FIRE"
SWEP.FireSoundSuppressed = "DOIK98_FIRE_SUPPRESSED"
SWEP.Recoil = 3

SWEP.HipSpread = 0.039
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
SWEP.Damage = 72
SWEP.DeployTime = 0.8
SWEP.Chamberable = false
SWEP.MuzzleVelocity = 900

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3.4
SWEP.ReloadHalt = 3.4
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt_Empty = 3.3

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 30 * 39.37
self.DamageFallOff = .85
self.FireSound = "CW_BER_BULL_FIRE"
self.FireSoundSuppressed = "DOIK98_FIRE_SUPPRESSED"
if self.ActiveAttachments.cw_500nitroexpress then
	self.EffectiveRange = ((self.EffectiveRange + 20 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - 0.45))
end
if self.ActiveAttachments.am_snakeshot then
	self.FireSound = "DOIM37_FIRE"
end
if self.ActiveAttachments.cw_500nitroexpress then
	self.FireSound = "CW_CHEYTAC_FIRE"
	self.FireSoundSuppressed = "CW_CHEYTAC_FIRE_SUPPRESSED"
end
if self.ActiveAttachments.bg_ber_babybull then
	self.EffectiveRange = ((self.EffectiveRange - 5 * 39.37))
end
if self.ActiveAttachments.am_reducedpowderload then
	self.EffectiveRange = ((self.EffectiveRange * 0.85))
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
if self.ActiveAttachments.cw_akimbo then
	self.ViewModelOffsetPos = Vector(0.5, 5, 0)
	self.ViewModelOffsetAng = Angle(0, 0, -20)
	self.ViewModelOffsetPos2 = Vector(-0.5, 5, 0)
	self.ViewModelOffsetAng2 = Angle(0, 0, 20)
end
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
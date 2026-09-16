AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Desert Eagle"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.IconLetter = "f"
	SWEP.SelectIcon = surface.GetTextureID("vgui/deagle44")
	killicon.AddFont("cw_deagle", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
	SWEP.PosBasedMuz = false
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 1.14
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}
		
	SWEP.MicroT1Pos = Vector(-2.28, 0, -0.292)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
    
	SWEP.MRSPos = Vector(-2.25, -5, -0.40)
	SWEP.MRSAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-2.254, 5.913, 0.31)
	SWEP.IronsightAng = Vector(0.1, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.247, -6.5, -0.602)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)

	SWEP.CustomizePos = Vector(10, -6.5, 0.5)
	SWEP.CustomizeAng = Vector(17, 45, 24)

	SWEP.CustomizePos_Orig = Vector(10, -6.5, 0.5)
	SWEP.CustomizeAng_Orig = Vector(17, 45, 24)

	SWEP.CustomizePos_Akimbo = Vector(0, -5, -10)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

	SWEP.AlternativePos = Vector(-0.88, 1.325, -0.561)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(3.25, 21, -1.5)
	SWEP.LaserAngAdjust = Angle(0, 0, 0)

	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-2.241, -4.728, -1.568), [2] = Vector(0, 0, 0)}, 
	["md_microt1"] = {[1] = Vector(-3.5, 0.5, 0), [2] = Vector(0,0,-45)},
["too_reflex_mrs"] = {[1] = Vector(-3.5, 0.5, 0), [2] = Vector(0,0,-45)}}

	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .85

	SWEP.MaterialIndexSecondary = {0}

	SWEP.BaseArm = "l_upperarm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.ForegripOverridePos = {
    ["onehand"] = {
        ["l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 15), angle = Angle(0, 0, 0) }},
	["akimbo"] = {
        ["l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -50), angle = Angle(0, 0, 0) }},
    ["nah"] = {
        ["l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
	}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.BoltBone = "slider"
	SWEP.BoltShootOffset = Vector(-2, 0, 0)
	SWEP.HoldBoltWhileEmpty = true
	SWEP.DontHoldWhenReloading = true
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	SWEP.BoltBonePositionRecoverySpeed = 25
	
	SWEP.AttachmentModelsVM = {
		["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(3.5, -0.775, 0.20), angle = Angle(0, 0, -90), size = Vector(0.8,0.8,0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(3.325, -1.075, 0.209), angle = Angle(90, 0, -90), size = Vector(0.4, 0.4, 0.4)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "weapon", pos = Vector(-6.054, 8.47, -0.035), angle = Angle(0, 1.5, -90), size = Vector(0.85, 0.85, 0.85)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "weapon", pos = Vector(-1.831, 3.892, 0.504), angle = Angle(-90, 0, -90), size = Vector(0.85, 0.85, 0.85)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", pos = Vector(-4.784, -0.408, -1.581), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
	["ins2_atow_clamplaser"] = {model = "models/khrcw2/ins2pack/attachments/lasers/laserrifle.mdl", pos = Vector(-17.5, -2.5 , 1.85), angle = Angle(0, 0, 0), size = Vector(1,1,0.7), bone = "weapon"},
	}

end

SWEP.ShootWhileProne = true

SWEP.MuzzleVelocity = 470 

SWEP.BarrelBGs = {main = 1, regular = 0, compensator = 1, extended = 2}
SWEP.LuaViewmodelRecoil = true
SWEP.CanRestOnObjects = false

SWEP.Attachments = {[1] = {header = "Sight", offset = {450, -650}, atts = {"too_reflex_mrs", "md_microt1","md_acog"}},
[2] = {header = "Barrel", offset = {-800, -650}, atts = {"md_saker", "bg_deagle_compensator", "bg_deagle_extendedbarrel"}},
[3] = {header = "Technique", offset = {-200, -650}, atts = {"doi_atow_onehand", "cw_akimbo"}},
[4] = {header = "Laser", offset = {-800, -200}, atts = {"ins2_atow_clamplaser"}},
[5] = {header = "Signature Attachment", offset = {-800, 200}, atts = {"too_thunderbird_conversion", "too_dungeon_eagle"}},
["+reload"] = {header = "Ammo", offset = {300, -200}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	reload_empty = "reload_2",
	idle = "idle",
	draw = "draw"}

SWEP.Animations_Akimbo = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	reload_empty = "reload_2",
	idle = "idle",
	draw = "draw",
	fire_right = {"shoot1", "shoot2"},
	reload_right = "reload",
	reload_empty_right = "reload_2",
	idle_right = "idle",
	draw_right = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_LIGHT"}},

	reload = {[1] = {time = 0.42, sound = "CW_DEAGLE_MAGOUT"},
	[2] = {time = 1.5, sound = "CW_DEAGLE_MAGIN"}},
	
	reload_2 = {[1] = {time = 0.42, sound = "CW_DEAGLE_MAGOUT"},
	[2] = {time = 1.5, sound = "CW_DEAGLE_MAGIN"},
	[3] = {time = 2.36, sound = "CW_DEAGLE_SLIDEBACK"},
	[4] = {time = 2.47, sound = "CW_DEAGLE_SLIDEFORWARD"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Pistols"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.DrawSpeed = 1.5

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/pistols/deagle.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_deagle.mdl"

SWEP.ViewModel_AkimboL = "models/cw2/pistols/deagle.mdl"
SWEP.ViewModel_AkimboR = "models/cw2/pistols/deagle.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 63
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 AE"

SWEP.FireDelay = 60 / 350
SWEP.FireSound = "CW_DEAGLE_FIRE"
SWEP.FireSoundSuppressed = "CW_DEAGLE_FIRE_SUPPRESSED"
SWEP.Recoil = 2.8

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.32
SWEP.Shots = 1
SWEP.Damage = 79
SWEP.DeployTime = 1
--SWEP.Chamberable = false
SWEP.NearWallDistance = 15

SWEP.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.5 / 1.2 ) 
	end
end

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.89
SWEP.ReloadHalt = 1.89

SWEP.ReloadTime_Empty = 2.9
SWEP.ReloadHalt_Empty = 2.9

function SWEP:IndividualThink()
	self.EffectiveRange = 30 * 39.37
	self.DamageFallOff = .85

	self.bulletCallback = function( att, tr, dmg )
		if tr.HitGroup == HITGROUP_HEAD then
			dmg:ScaleDamage( 1.5 / 2 )
		end
	end

if self.ActiveAttachments.bg_deagle_extendedbarrel then
		self.EffectiveRange = ((self.EffectiveRange * 1.1))
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
	if self.ActiveAttachments.cw_akimbo then
		self.ViewModelOffsetPos = Vector(0, 6, 0)
		self.ViewModelOffsetAng = Angle(0, 0, -30)
		self.ViewModelOffsetPos2 = Vector(0, 6, 0)
		self.ViewModelOffsetAng2 = Angle(0, 0, 30)
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
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

	SWEP.magType = "srMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SR-338"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.IconLetter = "w"
	killicon.Add( "", "", Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = true
	SWEP.NoDistance = true
	SWEP.CrosshairEnabled = true
	SWEP.ShellScale = 0.75
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = 10}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = .85
	SWEP.ForeGripOffsetCycle_Reload_Empty = .85
	SWEP.SightWithRail = true
	SWEP.DisableSprintViewSimulation = false
	SWEP.SnapToIdlePostReload = true
	
	SWEP.EffectiveRange_Orig = 140 * 39.37
	SWEP.DamageFallOff_Orig = .26
	
	SWEP.BoltBone = "Bolt"
	SWEP.BoltBonePositionRecoverySpeed = 30
	SWEP.BoltShootOffset = Vector(-4, 0, 0)
	
	SWEP.SprintPos = Vector(4.119, -1.206, -3.12)
	SWEP.SprintAng = Vector(-12.664, 50.652, -13.367)
	
	SWEP.CSGOACOGPos = Vector(-3.0852, -2.5, 0.496)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-3.1, -2.5, 0.71)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.KR_CMOREPos = Vector(-3.09, -2.5, 0.58)
	SWEP.KR_CMOREAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-3.112, -1, 0.46)
	SWEP.IronsightAng = Vector(-0.4, 0.028, 0)

	SWEP.ShortDotPos = Vector(-3.0735, -2, 0.6)
	SWEP.ShortDotAng = Vector(0, 0, 0)

	SWEP.NXSPos = Vector(-3.091, -2.5, 0.603)
	SWEP.NXSAng = Vector(0, 0, 0)

	
	SWEP.CustomizePos = Vector(1.72, -4.02, -3.08)
	SWEP.CustomizeAng = Vector(23.92, 20.884, 6.884)
	
	SWEP.AlternativePos = Vector(-0.6711, -0.6711, 0)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.CustomizationMenuScale = 0.024
	SWEP.ViewModelMovementScale = 1

	SWEP.MaterialIndexPrimary = {0}

	SWEP.MagBoneName = "MAG"
	
	SWEP.AttachmentModelsVM = {
	["md_sight_front"] = { type = "Model", model = "models/bunneh/frontsight.mdl", bone = "RSASS", rel = "", pos = Vector(-0.274, -28.4, 0), angle = Angle(0, -90, 0), size = Vector(1.25, 1.25, 1.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["odec3d_cmore_kry"] = { type = "Model", model = "models/weapons/krycek/sights/odec3d_cmore_reddot.mdl", bone = "RSASS", rel = "", pos = Vector(2.559, -7.292, -1.321), angle = Angle(0, 90, 0), size = Vector(0.259, 0.259, 0.259), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "RSASS", rel = "", pos = Vector(2.549, -16.105, -3.636), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_sight_rear"] = { type = "Model", model = "models/bunneh/rearsight.mdl", bone = "RSASS", rel = "", pos = Vector(5.309, 2.519, -0.01), angle = Angle(0, 90, 0), size = Vector(1.25, 1.25, 1.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_nxs"] = { type = "Model", model = "models/cw2/attachments/l96_scope.mdl", bone = "RSASS", rel = "", pos = Vector(2.569, -9, -0.35), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_microt1kh"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "RSASS", rel = "", pos = Vector(2.47, -7.792, -1.3), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "RSASS", rel = "", pos = Vector(2.423, -1.341, -5.261), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "RSASS", rel = "", pos = Vector(2.789, -2.5, -6.531), angle = Angle(0, 90, 0), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "RSASS", rel = "", pos = Vector(2.2, -23.378, -4.901), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_saker222"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "RSASS", rel = "", pos = Vector(2.49, -12.4, -4.45), angle = Angle(0, 180, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "RSASS", rel = "", pos = Vector(2.589, -16.026, -1.481), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	--Magazines
	["md_sr338_rsass_conversion"] = { type = "Model", model = "models/gmod4phun/pmag30.mdl", bone = "MAG", rel = "", pos = Vector(2.480, -9, -5.35), angle = Angle(0, 90, 0), size = Vector(0.8301463413, 0.8301463413, 0.446666667), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

	SWEP.BackupSights = {
		["md_microt1kh"] = {[1] = Vector(-4.5, 3, 0.1), [2] = Vector(0,0,-30)},
		["odec3d_cmore_kry"] = {[1] = Vector(-4.5, 3, 0.1), [2] = Vector(0,0,-30)},
		["md_schmidt_shortdot"] = {[1] = Vector(-4.5, 8, 0.1), [2] = Vector(0,0,-30)},
		["md_uecw_csgo_acog"] = {[1] = Vector(-4.5, 8, 0.1), [2] = Vector(0,0,-30)},
		["md_nxs"] = {[1] = Vector(-4.5, 8, 0.1), [2] = Vector(0,0,-30)}
	}

	SWEP.ForeGripHoldPos = {
	["l_wrist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.557, 14.444, 5.556) },
	["l_upperarm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-1.111, -1.111, 12.222) },
	["l_armtwist_1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -23.334) },
	["l_forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1.896, 0.555, -0.556), angle = Angle(0, -3.333, 36.666) },
	["l_thumb_low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(16.666, 14.444, 27.777) }
	}

	SWEP.ACOGAxisAlign = {right = 0.2, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0.2, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	function SWEP:RenderTargetFunc()

	
	if self.AimPos != self.IronsightPos then -- if we have a sight/scope equiped, hide the front and rar sights
	self.AttachmentModelsVM.md_sight_front.active = false
	self.AttachmentModelsVM.md_sight_rear.active = false
	else
	self.AttachmentModelsVM.md_sight_front.active = true
	self.AttachmentModelsVM.md_sight_rear.active = true
	end

end
	
end

SWEP.MuzzleVelocity = 925 -- in meter/s

SWEP.LaserPosAdjust = Vector(-.7, 0, 0)--{x = 1, y = 0, z = 0}
SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}

SWEP.LuaViewmodelRecoil = true
SWEP.CanRestOnObjects = false


SWEP.Attachments = {[1] = {header = "Optic", offset = {600, -400},  atts = {"md_microt1kh","odec3d_cmore_kry", "md_schmidt_shortdot", "md_uecw_csgo_acog", "md_nxs"}},
[2] = {header = "Muzzle", offset = {180, -400}, atts = {"md_saker222"}},
[3] = {header = "Handguard", offset = {-650, 100}, atts = {"md_foregrip","md_bipod"}},
[4] = {header = "Laser", offset = {-550, -350}, atts = {"md_anpeq15"}},
[5] = {header = "Conversion", offset = {400, 450}, atts = {"md_sr338_rsass_conversion"}},
[6] = {header = "Skins", offset = {500, 50}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
["+reload"] = {header = "Ammo", offset = {-550, 500}, atts = {"am_magnum","am_matchgrade"}}}

SWEP.Animations = {fire = {"shoot", "shoot2"},
	reload = "reload",
	idle = "idle1",
	draw = "draw"}
	
SWEP.Sounds = {	a = {[1] = {time = 0, sound = "CW_FOLEY_MEDIUM"}},

	reload = {[1] = {time = .6, sound = "SR338.Clipout"},
	[2] = {time = 1.8, sound = "SR338.Clipin"},
	[3] = {time = 2.25, sound = "SR338.Bolt"}}}

SWEP.HoldBoltWhileEmpty = false
SWEP.DontHoldWhenReloading = true
SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1, roll = .25, forward = .25, pitch = 1}

SWEP.SpeedDec = 45

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.OverallMouseSens = 1
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Sniper Rifles"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 80
SWEP.AimViewModelFOV = 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/v_snip_sr338.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_sg550.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".338 Lapua"

SWEP.Secondary.DefaultClip	= 70
SWEP.Secondary.Ammo			= "7.62x51MM"

SWEP.Chamberable = false
SWEP.FireDelay = 60/300
SWEP.FireSound = "SR338_FIRE"
SWEP.FireSoundSuppressed = "SR338_SUPFIRE"
SWEP.Recoil = 2.8

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.RecoilToSpread = .2
SWEP.Shots = 1
SWEP.Damage = 95
SWEP.DeployTime = .8

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 2.9
SWEP.ReloadHalt = 2.9
SWEP.ReloadHalt_Empty = 2.9

function SWEP:IndividualThink()
	self.EffectiveRange = 140 * 39.37
	self.DamageFallOff = .26
	if self.ActiveAttachments.am_magnum then
		self.EffectiveRange = ((self.EffectiveRange * 1.15))
	end
	if self.ActiveAttachments.am_matchgrade then
		self.DamageFallOff = ((self.DamageFallOff * 0.5))
	end
	if self.ActiveAttachments.md_sr338_rsass_conversion then
		self.EffectiveRange = ((self.EffectiveRange - 50 * 39.37))
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
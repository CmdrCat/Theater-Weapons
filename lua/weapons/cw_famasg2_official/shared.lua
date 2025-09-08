AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "FAMAS G2"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.TelescopeSkipRotate = false
	
	SWEP.IronsightPos = Vector(-2.932, -3, 0.046)
	SWEP.IronsightAng = Vector(1.556, -0.886, 2.65)

	SWEP.MicroT1Pos = Vector(-2.911, 0, -1.441)
	SWEP.MicroT1Ang = Vector(0.61, -0.85, 2.65)	
	
	SWEP.EoTechPos = Vector(-2.845, -3, -1.869)
	SWEP.EoTechAng = Vector(0.544, -0.907, 2.65)
	
	SWEP.AimpointPos = Vector(-2.863, -3, -1.663)
	SWEP.AimpointAng = Vector(0.58, -0.77, 2.65)

	SWEP.ShortDotPos = Vector(-2.843, -3, -1.525)
	SWEP.ShortDotAng = Vector(1.478, -0.789, 2.65)
	
	SWEP.ACOGPos = Vector(-2.796, -2.5, -1.795)
	SWEP.ACOGAng = Vector(0.46, -0.179, 2.65)
	
	SWEP.SprintPos = Vector(1.786, 0, -2)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-2.796, -3, -2.717), [2] = Vector(0.46, -0.887, 2.65)}}
	
	SWEP.AlternativePos = Vector(-0.8, 0, -0.8)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.012
	
	SWEP.IconLetter = "t"
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cw_famasg2_official")
	killicon.AddFont("cw_famasg2", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.EffectiveRange_Orig = 50 * 39.37
	SWEP.DamageFallOff_Orig = .55

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = -3}
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.85
	
	SWEP.magBoneName = {"magazine", "bulletq"}

	SWEP.SchmidtShortDotAxisAlignNew = {right = 0, up = 0, forward = -2.65}
	SWEP.ACOGAxisAlignNew = {right = 0, up = 0, forward = -2.65}

	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(-0.5, 180 - 0.6, -2.65) 
	
	SWEP.AttachmentModelsVM = {
		["md_rail"] = {model = "models/wystan/attachments/rail.mdl", bone = "gun", pos = Vector(-0.245, 1.501, 2.469), angle = Angle(0, -90, 0), size = Vector(1.034, 1.034, 1.034)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "gun", pos = Vector(0.006, 0.586, 4.493), adjustment = {min = 0.586, max = 4.245, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, 180, 0), size = Vector(0.347, 0.347, 0.347)},
		
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "gun", pos = Vector(-0.253, -4.612, -0.678), adjustment = {min = -4.612, max = -2.086, axis = "y", inverseOffsetCalc = true, preventedBy = {"md_anpeq15"}}, angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "gun", pos = Vector(-0.019, 1.554, -0.249), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "gun", pos = Vector(-0.265, -2.544, 0.101), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "gun", pos = Vector(-0.301, -4, -0.334), angle = Angle(0, 0, 0), size = Vector(0.829, 0.829, 0.829)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "gun", pos = Vector(-0.403, -5.182, -1.742), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "gun", pos = Vector(0.076, 6.361, -0.06), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "gun", pos = Vector(-0.123, 5.447, 4.297), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_cmag_556_official"] = {model = "models/wystan/Cmag.mdl", bone = "magazine", pos = Vector(-0.182, -3.918, 1.111), angle = Angle(0, -90, 0), size = Vector(0.699, 0.699, 0.699)}
	}

	SWEP.ForeGripHoldPos = {
		["Bone07"] = {pos = Vector(0, 0, 0), angle = Angle(30.129, 0, 0) },
		["Bone02"] = {pos = Vector(0, 0, 0), angle = Angle(-12.506, 0, 0) },
		["Bone09"] = {pos = Vector(0, 0, 0), angle = Angle(87.529, 0, -10.704) },
		["Bone03"] = {pos = Vector(0, 0, 0), angle = Angle(7.043, 0, 0) },
		["Bone_L_LowerThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(86.033, 0, 0) },
		["Bone_L_LowerArm01"] = {pos = Vector(-0.403, 2.645, -0.38), angle = Angle(-1.601, 0, 75.903) },
		["Bone05"] = {pos = Vector(0, 0, 0), angle = Angle(67.432, 0.662, -11.282) },
		["Bone13"] = {pos = Vector(0, 0, 0), angle = Angle(80.552, -4.981, -15.509) },
		["Bone_L_MiddleThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(21.812, 0, 0) },
		["Bone15"] = {pos = Vector(0, 0, 0), angle = Angle(30.725, 9.206, 0) },
		["Bone_L_UpperThumb01"] = {pos = Vector(0, 0, 0), angle = Angle(5.41, -10.047, -6.314) },
		["Bone01"] = {pos = Vector(0, 0, 0), angle = Angle(81.065, 0, -7.411) },
		["Bone_L_Hand01"] = {pos = Vector(0, 0, 0), angle = Angle(22.538, 0, 10.763) },
		["Bone06"] = {pos = Vector(0, 0, 0), angle = Angle(-34.194, 0, 0) },
		["Bone10"] = {pos = Vector(0, 0, 0), angle = Angle(-83.87, 0, 0) },
		["Bone14"] = {pos = Vector(0, 0, 0), angle = Angle(-73.589, -4.473, 0) },
		["Bone11"] = {pos = Vector(0, 0, 0), angle = Angle(58.02, 0, 0) }
	}
end

SWEP.MuzzleVelocity = 925 -- in meter/s

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "A French bullpup assault rifle with a high fire rate.", x = -100, y = -450}

SWEP.BarrelBGs = {main = 2, rpk = 1, short = 4, regular = 0}
SWEP.StockBGs = {main = 1, regular = 0, heavy = 1, foldable = 2}
SWEP.ReceiverBGs = {main = 3, rpk = 1, regular = 0}
SWEP.MagBGs = {main = 4, regular = 0, rpk = 1}

SWEP.Attachments = {[1] = {header = "Sight", offset = {1000, -600},  atts = {"md_microt1", "md_aimpoint", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-900, -350}, atts = {"md_saker"}},
	[3] = {header = "Handguard", offset = {-550, 100}, atts = {"md_foregrip", "md_bipod"}},
	[4] = {header = "Laser", offset = {-550, -600}, atts = {"md_anpeq15"}, dependencies = {md_microt1 = true, md_aimpoint = true, md_schmidt_shortdot = true, md_acog = true}},
	[5] = {header = "Magazine", offset = {850, -150}, atts = {"md_cmag_556_official"}},
	["+reload"] = {header = "Ammo", offset = {850, 350}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {	draw = {{time = 0, sound = "CW_FAMASG2_CLOTH"}},

	reload = {[1] = {time = 0.65, sound = "CW_FAMASG2_MAGOUT"},
	[2] = {time = 1.6, sound = "CW_SVD_OFFICIAL_MAGIN_PARTIAL"},
	[3] = {time = 1.9, sound = "CW_FAMASG2_MAGIN1"},
	[4] = {time = 2.5, sound = "CW_FAMASG2_FOREARM"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Snark"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/rifles/v_famasg2.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_famas.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 1100
SWEP.FireSound = "CW_FAMASG2_FIRE"
SWEP.FireSoundSuppressed = "CW_FAMASG2_SUPPRESSED"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.1
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.RecoilToSpread = 0.7
SWEP.BurstRecoilMul = 0.7
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1.0
SWEP.ReloadTime = 2.23
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 2.23
SWEP.ReloadHalt_Empty = 3.5
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = .55
if self.ActiveAttachments.am_magnum then
	self.EffectiveRange = ((self.EffectiveRange * 1.15))
end
if self.ActiveAttachments.am_matchgrade then
	self.DamageFallOff = ((self.DamageFallOff * 0.5))
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
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP5A3"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "x"

	SWEP.SelectIcon = surface.GetTextureID("vgui/mp5a5")
	killicon.Add("cw_theater_mp5", "vgui/killicons/mp5", Color(255, 120, 40, 0))

	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .5
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.81
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = -2, z = -0.5}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.87

	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(2.032, -3.323, 0.759)
	SWEP.IronsightAng = Vector(0.388, -0.051, 0)
	
	SWEP.PronePos = Vector(-7.397, -2.497, -1.551)
	SWEP.ProneAng = Vector(5.618, -49.056, -15.311)
	
	-- MP5SD variant ironsight pos
	SWEP.SDPos = Vector(2.032, -3.323, 0.759)
	SWEP.SDAng = Vector(0.338, -0.005, 0)
		
	-- MP5K variant ironsight pos
	SWEP.KPos = Vector(2.032, -3.323, 0.759)
	SWEP.KAng = Vector(0.187, -0.005, 0)

	SWEP.MRSPos = Vector(2.032, -2.5, 0.17)
	SWEP.MRSAng = Vector(0, 0, 0)	

	SWEP.MicroT1Pos = Vector(2.042, -0.2, 0.66)
	SWEP.MicroT1Ang = Vector(-1.668, 0, 0)	
	
	SWEP.AimpointPos = Vector(2.03, -5.14, 0.171)
	SWEP.AimpointAng = Vector(0, 0, 0)

	SWEP.EXPSPos = Vector(2.032, -2.5, 0.13)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ShortDotPos = Vector(2.009, -5.844, 0.263)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(2.028, -5.613, -0.113)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(3, -1.4, 1)
	SWEP.TacStanceAng = Vector(0, 0, 45)

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(-4.444, -1, 0.082)
	SWEP.SprintAng = Vector(-12.849, -39.23, 0)

	SWEP.CustomizePos_Orig = Vector(-8.174, -1.27, -1.288)
	SWEP.CustomizeAng_Orig = Vector(17.954, -40.578, -18.357)

	SWEP.CustomizePos = Vector(-8.174, -1.27, -1.288)
	SWEP.CustomizeAng = Vector(17.954, -40.578, -18.357)

	SWEP.CustomizePos_Akimbo = Vector(0, -5, -7.5)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)
	
	SWEP.AlternativePos = Vector(0, 1.325, -0.801)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
    SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

    SWEP.LaserPosAdjust = Vector(0, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 0, 0)
	
	SWEP.BackupSights = {
	["too_optic_tacstance"] = {[1] = Vector(2.032, -3.323, 0.759), [2] = Vector(0.388, -0.051, 0)},
	["too_reflex_mrs"] = {[1] = Vector(3, -2.1, 1), [2] = Vector(0,0,45)},
	["too_reflex_exps"] = {[1] = Vector(3, -0.2, 1), [2] = Vector(0,0,45)},
	["md_aimpoint"] = {[1] = Vector(3, -1, 1), [2] = Vector(0,0,45)},
	["md_microt1"] = {[1] = Vector(3, -0.2, 1), [2] = Vector(0,0,45)},
	["md_schmidt_shortdot"] = {[1] = Vector(3, -0.4, 1), [2] = Vector(0,0,45)},
	["md_acog"] = {[1] = Vector(2.028, -0.2, -1.124), [2] = Vector(0, 0, 0)}}

	SWEP.MaterialIndexPrimary = {0}
	SWEP.MaterialIndexSecondary = {2, 3, 4, 6}

	/*
	0: Receiver and magazine
	1: Arms
	2: Fixed stock
	3: Handguard + front sight (MP5K)
	4: Front sight (base MP5A3)
	5: Unknown
	6: Handguard (base MP5A3)
	7: Unknown
	*/

	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}

	SWEP.BaseArm = "Bip01 R UpperArm"

	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 3, roll = 1, forward = 1, pitch = 1}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.SprintViewNormals = {x = 1, y = -1, z = 1}

	SWEP.AttachmentModelsVM = {
		--Muzzles
		["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "gun", pos = Vector(-0.038, -12.216, 0.305), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
		--Optics
		["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "gun", rel = "", pos = Vector(-0.042, -0.9, 2.65), angle = Angle(-180, -90, 180), adjustment = {min = -1.5, max = -0.59, axis = "y", inverse = true}, size = Vector(0.698, 0.698, 0.698), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "gun", pos = Vector(-0.042, -0.2, 2.809), angle = Angle(0, 0, 0), adjustment = {min = -1.5, max = -0.2, axis = "y", inverse = true}, size = Vector(0.349, 0.349, 0.349)},
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "gun", rel = "", pos = Vector(-0.042, -1.44, 2.66), angle = Angle(-180, -90, 180), adjustment = {min = -1.7, max = -1.1, axis = "y", inverse = true}, size = Vector(0.698, 0.698, 0.698), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "gun", pos = Vector(0.2, 5, -2.425), angle = Angle(0, 180, 0), adjustment = {min = 4.5, max = 5, axis = "y", inverseOffsetCalc = true}, size = Vector(0.899, 0.899, 0.899)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "gun", pos = Vector(0.224, 3.98, -1.884), angle = Angle(0, 90, 0), adjustment = {min = 3.5, max = 3.98, axis = "y", inverseOffsetCalc = true}, size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "gun", pos = Vector(0.284, 4.372, -2.46), angle = Angle(0, 180, 0), size = Vector(0.899, 0.899, 0.899)},
		--Underbarrels
		["md_m203"] = { type = "Model", model = "models/cw2/attachments/m203.mdl", bone = "gun", rel = "", pos = Vector(-2.38, 9.358, 4), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), animated = true},
		--Stocks
		["bg_ar15regularstock_mp5a3"] = { type = "Model", model = "models/cw2/rifles/ar15.mdl", bone = "stockcap", rel = "", pos = Vector(-2.208, 5.72, 2.474), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
		["bg_ar15sturdystock_mp5a3"] = { type = "Model", model = "models/cw2/rifles/ar15.mdl", bone = "stockcap", rel = "", pos = Vector(-2.208, 5.72, 2.474), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
		["bg_precisionstock_mp5a3"] = { type = "Model", model = "models/khrcw2/v_snip_sr338.mdl", bone = "stockcap", rel = "", pos = Vector(-3.097, 4.83, 2.548), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)}
	}
	SWEP.ForegripOverridePos = {
		["bg_mp5_sdbarrel"] = {
			["Bip01 R Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(-4.029, 14.069, 0) },
			["Bip01 R Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(0, -8.988, 0) }
		},
		
		["bg_mp5_kbarrel"] = {
			["Bip01 R Hand"] = {pos = Vector(0, 0, 0), angle = Angle(0.263, 23.951, -31.754) },
			["Bip01 R Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(-0.894, 32.728, 3.026) },
			["Bip01 R Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(0, 12.1, 0) },
			["Bip01 R Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 25.451, 0) },
			["Bip01 R Clavicle"] = {pos = Vector(-6.856, 2.325, 2.252), angle = Angle(48.464, 28.256, 12.512) },
			["Bip01 R Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 14.687) },
			["Bip01 R Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(-1.813, 71.625, 0) },
			["Bip01 R Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, -26.932, 0) },
			["Bip01 R Finger31"] = {pos = Vector(0, 0, 0), angle = Angle(0, -16.4, 0) },
			["Bip01 R Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 89.527, 0) },
			["Bip01 R Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 18.952, 11.305) },
			["Bip01 R Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(-15.782, -6.495, 33.964) },
			["Bip01 R Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 54.675, -4.284) },
			["Bip01 R Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 67.799, 0) }
		},

		["akimbo"] = {
        	["Bip01 R UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 10, 40), angle = Angle(0, 0, 0) }},
    	["nah"] = {
        	["Bip01 R UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
	}

	SWEP.M203HoldPos = {
		["Bip01 R UpperArm"] = {pos = Vector(1.47, -2, 1.7), angle = Angle(0, 0, 0)},
		["Bip01 R Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(-4.029, 14.069, 0) },
		["Bip01 R Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(0, -8.988, 0) }
	}
	
	SWEP.AttachmentPosDependency = {["md_tundra9mm"] = {["bg_mp5_kbarrel"] = Vector(-0.038, -10.749, 0.324)}}

	SWEP.LaserPosAdjust = {x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = {p = 2, y = 180, r = 0}
	SWEP.SightWithRail = true
	SWEP.CustomizationMenuScale = 0.01
end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, k = 2, regular = 0}
SWEP.StockBGs = {main = 1, regular = 0, retractable = 1, none = 2}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.MagBGs = {main = 4, round15 = 0, round30 = 1}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "This reliable submachine gun is the face of counter-terrorism due its successful usage by SAS operators in Operation Nimrod.", x = -500, y = -800}

SWEP.Attachments = {
	[1] = {header = "Sight", offset = {700, -600}, atts = {"too_reflex_mrs", "md_microt1", "md_aimpoint", "too_reflex_exps", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-200, -600}, atts = {"md_tundra9mm"}, exclusions = {md_m203 = true}},
	[3] = {header = "Grip", offset = {-900, 300}, atts = {"md_m203", "cw_akimbo"}},
	[5] = {header = "Magazine", offset = {-200, 450}, atts = {"bg_mp515rndmag"}, exclusions = {too_mp5_22lr_rifle = true, md_m203 = true}},
	[4] = {header = "Stock", offset = {1400, 450}, atts = {"bg_retractablestock", "bg_ar15regularstock_mp5a3", "bg_ar15sturdystock_mp5a3", "bg_precisionstock_mp5a3", "bg_nostock"}},
	[6] = {header = "Signature Attachments", offset = {450, 450}, atts = {"bg_mp5_kbarrel", "bg_mp5_sdbarrel", "too_mp5_22lr_rifle"}},
	--[7] = {header = "Laser", offset = {450, 450}, atts = {"ftacgrimline", "md_anpeq15"}},
	[7] = {header = "Skins", offset = {1500, -50}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes","md_skinyellowjacket"}},
	["+use"] = {header = "Optic Type", offset = {1600, -600}, atts = {"too_optic_category_reflex", "too_optic_category_magnified", "too_optic_tacstance"}},
	["+reload"] = {header = "Ammo", offset = {-900, -200}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}
}

SWEP.AttachmentDependencies = {
	["cw_akimbo"] = {"bg_nostock"},
	["too_reflex_mrs"] = {"too_optic_category_reflex"},
	["md_microt1"] = {"too_optic_category_reflex"},
	["md_aimpoint"] = {"too_optic_category_reflex"},
	["too_reflex_exps"] = {"too_optic_category_reflex"},
	["md_schmidt_shortdot"] = {"too_optic_category_magnified"},
	["md_acog"] = {"too_optic_category_magnified"}
}

SWEP.AttachmentExclusions = {
	["md_m203"] = {"bg_mp5_kbarrel", "bg_mp5_sdbarrel"},
    ["bg_mp5_sdbarrel"] =  {"md_tundra9mm"}}


SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reloadfull",
	reload_empty = "reloadempty",
	idle = "idle",
	draw = "draw"}

SWEP.Animations_Akimbo = {fire = {"shoot1", "shoot2"},
	reload = "reloadfull",
	reload_empty = "reloadempty",
	idle = "idle",
	draw = "draw",
	fire_right = {"shoot1", "shoot2"},
	reload_right = "reloadfull",
	reload_empty_right = "reloadempty",
	idle_right = "idle",
	draw_right = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	reloadfull = {[1] = {time = 1.1, sound = "CW_MP5_MAGOUT"},
	[2] = {time = 1.4, sound = "CW_MP5_MAGIN"}},
	
	reloadempty = {[1] = {time = 0.4, sound = "CW_MP5_BOLTBACK"},
	[2] = {time = 1.5, sound = "CW_MP5_MAGOUT"},
	[3] = {time = 1.8, sound = "CW_MP5_MAGIN"},
	[4] = {time = 2.6, sound = "CW_MP5_BOLTFORWARD"}}}

SWEP.SpeedDec = 15

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/cw2/smgs/mp5.mdl"
SWEP.WorldModel		= "models/weapons/w_smg_mp5.mdl"

SWEP.ViewModel_AkimboL		= "models/cw2/smgs/mp5.mdl"
SWEP.ViewModel_AkimboR		= "models/cw2/smgs/mp5.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.Secondary.DefaultClip	= 75
SWEP.Secondary.Ammo			= ".22 LR"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_MP5_FIRE"
SWEP.FireSoundSuppressed = "CW_MP5_FIRE_SUPPRESSED"
SWEP.Recoil = 0.63

SWEP.HipSpread = 0.02
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.3
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 37
SWEP.DeployTime = 0.8
SWEP.NearWallDistance = 25

SWEP.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.2 / 1.2 ) -- 1.2 multiplied by this value is the resulting multiplier
	end
end

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 2
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 2.6
SWEP.ReloadHalt_Empty = 3.5

function SWEP:IndividualThink()

self:setBodygroup(self.MagBGs.main, self.MagBGs.round30)

self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 30 * 39.37
self.DamageFallOff = .5

self.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.2 / 2 ) -- 2 multiplied by this value is the resulting multiplier
	end
end


if self.ActiveAttachments.bg_mp515rndmag then
	self:setBodygroup(self.MagBGs.main, self.MagBGs.round15)
end
if self.ActiveAttachments.bg_mp5_kbarrel then
	self.EffectiveRange = ((self.EffectiveRange - 15 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + 0.05))
end
if (self.ActiveAttachments.bg_mp5_sdbarrel) then
	self.EffectiveRange = ((self.EffectiveRange - 15 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + 0.1))
	self.bulletCallback = function( att, tr, dmg )
		if tr.HitGroup == HITGROUP_HEAD then
			dmg:ScaleDamage( 2 / 2 ) -- 2 multiplied by this value is the resulting multiplier
		end
	end
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
	self.ViewModelOffsetPos = Vector(-1, 5, 0)
	self.ViewModelOffsetAng = Angle(0, 0, -40)
	self.ViewModelOffsetPos2 = Vector(-3, 5, 0)
	self.ViewModelOffsetAng2 = Angle(0, 0, 40)
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
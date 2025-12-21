AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SCAR-L"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.01
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/scarh")
	killicon.Add("cw_scarh", "vgui/killicons/scarh", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 50 * 39.37
	SWEP.DamageFallOff_Orig = .3

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -18, y = 30, z = -7}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/cw2/rifles/w_scarh.mdl"
	SWEP.WMPos = Vector(0, -0.5, 0.5)
	SWEP.WMAng = Vector(0, 0, 180)
	
	SWEP.IronsightPos = Vector(-3, 5, -0.04)
	SWEP.IronsightAng = Vector(0,0,-30)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)

	SWEP.MicroT1Pos = Vector(-1.71, -1.4, 0.16)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.CmorePos = Vector(-1.62, -1.4, -0.06)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.ELCANPos = Vector(-1.62, -2.8, -0.14)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.ThermalPos = Vector(-1.62, -2.8, -0.14)
	SWEP.ThermalAng = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-1.62, -1.4, -0.2)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-1.62, -1.4, -0.2)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.TrijiconPos = Vector(-1.64, -1.4, 0.1)
	SWEP.TrijiconAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-1.66, -2.8, -0.4)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(-1.62, -1.4, 0.08)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.BallisticPos = Vector(-1.62, -1.4, -0.12)
	SWEP.BallisticAng = Vector(0, 0, 0)
	
	SWEP.CSGOACOGPos = Vector(-1.68, -2.8, -0.4)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)
	
	SWEP.CSGO556Pos = Vector(-1.7, -2.6, 0.064)
	SWEP.CSGO556Ang = Vector(0, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(-3, 5, -0.04), [2] = Vector(0,0,-30)},
	["md_cmore"] = {[1] = Vector(-3, 5, -0.04), [2] = Vector(0,0,-30)},
	["md_trijicon"] = {[1] = Vector(-3, 5, -0.04), [2] = Vector(0,0,-30)},
	["md_reflex"] = {[1] = Vector(-3, 5, -0.04), [2] = Vector(0,0,-30)},
	["md_aimpoint"] = {[1] = Vector(-3, 5, -0.04), [2] = Vector(0,0,-30)},
	["md_elcan"] = {[1] = Vector(-1.63, 0, -0.903), [2] = Vector(-0.1, -0.2, 0)},
	["md_acog"] = {[1] = Vector(-1.635, 5, -1.5), [2] = Vector(-0.05, 0.01, 0)},
	["md_uecw_csgo_acog"] = {[1] = Vector(-3, 5, -0.04), [2] = Vector(0,0,-30)},
	["md_uecw_csgo_556"] = {[1] = Vector(-1.667, 0, -0.88), [2] = Vector(0.75, 0, 0)},
	["md_ballistic"] = {[1] = Vector(-3, 5, -0.04), [2] = Vector(0,0,-30)},
	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}

	SWEP.SightWithRail = true
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(0.2, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.M203OffsetCycle_Reload = 0.81
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0

	SWEP.BaseArm = "Right_L_Arm"
	SWEP.BaseArmBoneOffset = Vector(-500, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.M203HoldPos = {
		["Right_L_Arm"] = {pos = Vector(2.197, -2.123, -1.015), angle = Angle(0, 0, 0)}
	}
	
	SWEP.AttachmentModelsVM = {
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "SCAR_Body", pos = Vector(0.02, -1.761, -2), angle = Angle(0, 180, 90), size = Vector(0.35, 0.35, 0.35)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-0.26, -8.2, -4.64), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "SCAR_Body", pos = Vector(-0.38, -7.2, -4.8), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},

		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "SCAR_Body", pos = Vector(0, -7.4, -3.3), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},

		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "SCAR_Body", pos = Vector(-0.08, 4, 0.94), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},

		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-0.4, -5, -3.295), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, 4.599, -2.06), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},

		["md_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-1.315, -10.2, 1.52), angle = Angle(0, -90, 0), size = Vector(1.039, 1.039, 1.039), color = Color(255, 255, 255, 255)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0.006, -0.4, 1.2), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, -2, 0.96), angle = Angle(180, 180, 180), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-0.28, -7.2, -3.66), angle = Angle(180, 180, 180), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0)},
		["md_thermal"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-0.28, -7.2, -3.66), angle = Angle(180, 180, 180), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, 15.2, -0.3), angle = Angle(180, 90, -90), size = Vector(1, 1, 1)},

		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-0.02, -0.6, -1.44), angle = Angle(0, 0, 0), size = Vector(2, 2, 2)},
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, -9.601, -3.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, 13.369, -1.201), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_uecw_csgo_556"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_sig.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, -1.8, 0.74), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "SCAR_Body", pos = Vector(2.299, -6.611, 4.138), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), animated = true}
	}

	SWEP.ForeGripHoldPos = {
		['Bone06'] = {pos = Vector(0, 0, 0), angle = Angle(88.449996948242, 0, 0)},
		['Bone10'] = {pos = Vector(0, 0, 0), angle = Angle(62.006000518799, 0, 0)},
		['Bone12'] = {pos = Vector(0, 0, 0), angle = Angle(37.987998962402, 0, 0)},
		['Bone24'] = {pos = Vector(0, 0, 0), angle = Angle(0, -84.275001525879, 0)},
		['Bone22'] = {pos = Vector(0, 0, 0), angle = Angle(11.244000434875, -1.7690000534058, 13.89999961853)},
		['Bone23'] = {pos = Vector(0, 0, 0), angle = Angle(0.64999997615814, -37.838001251221, 0)},
		['Bone16'] = {pos = Vector(0, 0, 0), angle = Angle(63.831001281738, 0, 0)},
		['Right_L_Arm'] = {pos = Vector(-1, -0.9, 0.3), angle = Angle(-15.463000297546, 0, -87.300003051758)},
		['Right_Hand'] = {pos = Vector(0, 0, 0), angle = Angle(0, 19.386999130249, 0)},
		['Bone18'] = {pos = Vector(0, 0, 0), angle = Angle(28.062999725342, -13.137999534607, 0)},
		['Bone08'] = {pos = Vector(0, 0, 0), angle = Angle(18.218999862671, 0, 0)},
		['Bone14'] = {pos = Vector(0, 0, 0), angle = Angle(53.325000762939, 0, 0)},
		['Bone20'] = {pos = Vector(0, 0, 0), angle = Angle(48.137001037598, 0, 0)}
	}
	
	SWEP.AttachmentPosDependency = {
		["md_anpeq15"] = {["md_nightforce_nxs"] = Vector(-0.801, 10.246, 1.228)}
	}
	
	SWEP.AttachmentAngDependency = {
		md_anpeq15 = {nd_nightforce_nxs = Angle(0, 90, -90)}
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 0.5, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}
	
	SWEP.BoltBone = "SCAR_Charger"
	SWEP.BoltShootOffset = Vector(-3.5, 0, 0)
	
	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
end

SWEP.MuzzleVelocity = 714 -- in meter/s

SWEP.SightBGs = {main = 2, none = 1}
SWEP.LuaViewmodelRecoil = true

-- SWEP.Trivia = {text = "A reliable battle rifle used by the US Army. Make sure your fingers are clear of the charging handle.", x = -100, y = -450}

SWEP.AttachmentExclusions = {["md_microt1"] = {"cw_fortnite_scar_conversion"},
							 ["md_aimpoint"] = {"cw_fortnite_scar_conversion"},
							 ["md_schmidt_shortdot"] = {"cw_fortnite_scar_conversion"},
							 ["md_acog"] = {"cw_fortnite_scar_conversion"},
							 ["md_nightforce_nxs"] = {"cw_fortnite_scar_conversion"},
							 ["md_saker"] = {"cw_fortnite_scar_conversion"},
							 ["md_anpeq15"] = {"cw_fortnite_scar_conversion"},
							 ["md_foregrip"] = {"cw_fortnite_scar_conversion"},
							 ["md_bipod"] = {"cw_fortnite_scar_conversion"},
							 ["md_m203"] = {"cw_fortnite_scar_conversion"},
							 ["am_magnum"] = {"cw_fortnite_scar_conversion"},
							 ["am_matchgrade"] = {"cw_fortnite_scar_conversion"},
							 ["am_atow_lowvel"] = {"cw_fortnite_scar_conversion"},
							 ["am_atow_heavy"] = {"cw_fortnite_scar_conversion"},
							 ["am_atow_ap"] = {"cw_fortnite_scar_conversion"}}

SWEP.Attachments = {[1] = {header = "Sight", offset = {900, -300},  atts = {"md_microt1"}}, -- , "md_aimpoint", "md_schmidt_shortdot", "md_acog", "md_nightforce_nxs"
	-- [2] = {header = "Muzzle", offset = {-400, -500},  atts = {"md_saker"}},
	-- [3] = {header = "Laser", offset = {-400, -50},  atts = {"md_anpeq15"}},
	-- [4] = {header = "Handguard", offset = {-400, 400}, atts = {"md_foregrip", "md_bipod"}},
	-- [5] = {header = "Conversion", offset = {500, 400}, atts = {"cw_fortnite_scar_conversion"}},
	["+reload"] = {header = "Ammo", offset = {900, 150}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_SCARL_FOLEY"}},

	reload = {{time = 0.4, sound = "CW_SCARL_MAGOUT"},
	{time = 0.6, sound = "CW_SCARL_FOLEY"},
	{time = 1.1, sound = "CW_SCARL_MAGIN"},
	{time = 1.4, sound = "CW_SCARL_FOLEY"},
	{time = 1.5, sound = "CW_SCARL_MAGSLAP"},
	{time = 1.85, sound = "CW_SCARL_BOLT"},
	{time = 2, sound = "CW_SCARL_FOLEY"}}}

SWEP.SpeedDec = 40

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "CatGopher98"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_mas_scar.mdl"
SWEP.WorldModel		= "models/cw2/rifles/w_scarh.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 650
SWEP.FireSound = "CW_SCARL_FIRE"
SWEP.FireSoundSuppressed = "CW_SCARL_FIRE_SUPPRESSED"
SWEP.Recoil = 1.4

SWEP.HipSpread = 0.125
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.9
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 42
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 0.9
SWEP.ReloadTime = 1.7
SWEP.ReloadTime_Empty = 2
SWEP.ReloadHalt = 1.8
SWEP.ReloadHalt_Empty = 2.3

SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 60 * 39.37
self.DamageFallOff = .25

if (self.ActiveAttachments.cw_fortnite_scar_conversion) then
self.EffectiveRange = ((self.EffectiveRange - 35 * 39.37))
self.DamageFallOff = ((self.DamageFallOff + 0.55))
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
if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Masada"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/acr masada")
	killicon.Add("cw_g4p_magpul_masada", "vgui/killicons/acr masada", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 50 * 39.37
	SWEP.DamageFallOff_Orig = .3

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 16, y = 12, z = -1}
	SWEP.InvertShellEjectAngle = true
	
	SWEP.ForeGripOffsetCycle_Draw = 0.43
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.CustomizePos = Vector(-13.507, -6.981, 1.175)
	SWEP.CustomizeAng = Vector(27.256, -50.713, -29.239)
	
	SWEP.IronsightPos = Vector(2.012, -3.28, 0.773)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)
	
	SWEP.CmorePos = Vector(2.02, -2.4, 0.82)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.ELCANPos = Vector(2.02, -2.8, 0.4)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(2.012, -3.28, 0.62)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(2.012, -3.28, 0.72)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(2.042, -3.28, 0.9)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(2.012, -3.28, 0.5)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(2.02, -2.8, 0.99)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.BallisticPos = Vector(2.02, -2.8, 0.760)
	SWEP.BallisticAng = Vector(0, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.TrijiconPos = Vector(2.0, -2.8, 0.77)
	SWEP.TrijiconAng = Vector(0, 0, 0)
	
	SWEP.CSGOACOGPos = Vector(2, -4.6, 0.759)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)
	
	SWEP.FAS2AimpointPos = Vector(2.039, -4.02, 0.639)
	SWEP.FAS2AimpointAng = Vector(-0.4, 0.075, 0)
	
	SWEP.SprintPos = Vector(-3.401, -2.201, 1.399)
	SWEP.SprintAng = Vector(-15.801, -34.401, 0)
	
	SWEP.AlternativePos = Vector(-1.241, 0, 1.08)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	
	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(4, 5, 1), [2] = Vector(0,0,30)},
	["md_cmore"] = {[1] = Vector(4, 5, 1), [2] = Vector(0,0,30)},
	["md_trijicon"] = {[1] = Vector(4, 5, 1), [2] = Vector(0,0,30)},
	["md_reflex"] = {[1] = Vector(4, 5, 1), [2] = Vector(0,0,30)},
	["md_aimpoint"] = {[1] = Vector(4, 5, 1), [2] = Vector(0,0,30)},
	["md_elcan"] = {[1] = Vector(2.035, 0, -0.555), [2] = Vector(-0.05, 0.14, 0)},
	["md_acog_fixed"] = {[1] = Vector(1.99, 0, -0.65), [2] = Vector(0, 0, 0)},
	["md_uecw_csgo_acog"] = {[1] = Vector(4, 5, 1), [2] = Vector(0,0,30)}
	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Right_U_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "smdimport", rel = "", pos = Vector(1.315, -5, -3.08), angle = Angle(0, -90, -180), size = Vector(1.039, 1.039, 1.039), color = Color(255, 255, 255, 255)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "smdimport", rel = "", pos = Vector(0.006, 6.98, -2.757), angle = Angle(180, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "smdimport", rel = "", pos = Vector(0, 3, -2.52), angle = Angle(0, 180, 180), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "smdimport", rel = "", pos = Vector(0.26, -3.6, 3.1), angle = Angle(180, 0, 0), size = Vector(1, 1, 1)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "smdimport", rel = "", pos = Vector(0.36, -2.2, 3.18), angle = Angle(0, 180, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "smdimport", rel = "", pos = Vector(-0.419, 20.406, 1.975), angle = Angle(0, 0, 180), size = Vector(0.699, 0.699, 0.699)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "smdimport", pos = Vector(0, 1, -4.1), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "smdimport", pos = Vector(0, 2, -2.7), angle = Angle(180, 180, 0), size = Vector(0.4, 0.4, 0.4)},
		["md_acog_fixed"] = {model = "models/wystan/attachments/2cog.mdl", bone = "smdimport", pos = Vector(0.34, -2.9, 3.2), angle = Angle(180, 0, 0), size = Vector(1, 1, 1)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "smdimport", pos = Vector(0.2, 10.9, -2.5), angle = Angle(180, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "smdimport", rel = "", pos = Vector(0.1, 13.369, 0.74), angle = Angle(0, 180, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "smdimport", rel = "", pos = Vector(0, 22.2, -2), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "smdimport", rel = "", pos = Vector(-0.02, 5.199, 0), angle = Angle(180, 0, 0), size = Vector(2.2, 2.2, 2.2)},
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "smdimport", rel = "", pos = Vector(-0.08, -3.6, 1.039), angle = Angle(180, 90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint.mdl", bone = "smdimport", rel = "", pos = Vector(0, 6.4, -2), angle = Angle(180, 90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroups = {[4] = 1} },
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "smdimport", rel = "", pos = Vector(-1.64, -1, -2), angle = Angle(180, 90, 0), size = Vector(0.699, 0.699, 0.699), animated = true},
	}
	
	SWEP.M203HoldPos = {
		["Right_U_Arm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, -2, -1), angle = Angle(0, 0, 0) }
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
	
--	SWEP.BoltBone = "bolt" -- okay then, dont move the charging handle :D
--	SWEP.BoltShootOffset = Vector(0, -3.2, 0)

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
function SWEP:RenderTargetFunc()
	
	if !self.SkinSilencerInstalled then -- if we dont have skin silencer, hide it
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone("silencer"), Vector(0.009, 0.009, 0.009))
	else
	self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone("silencer"), Vector(1, 1, 1))
	end

end

end

SWEP.SightBGs = {main = 1, carryhandle = 0, none = 1}
SWEP.BarrelBGs = {regular = 0}
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "An iconic assault rifle that takes inspiration from other popular rifles.", x = 0, y = -500}

SWEP.Attachments = {[1] = {header = "Sight", offset = {200, -400},  atts = {"md_microt1", "md_cmore", "md_reflex", "md_trijicon", "md_aimpoint", "md_elcan", "md_acog_fixed", "md_uecw_csgo_acog"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Muzzle", offset = {-500, -500}, atts = {"md_saker", "md_csgo_silencer_rifle", "uecw_skin_silencer"}},
	[3] = {header = "Handguard", offset = {-400, 0}, atts = {"md_foregrip", "md_bipod"}},
	[4] = {header = "Laser", offset = {0, 475}, atts = {"md_anpeq15"}},
	[5] = {header = "Conversion", offset = {1000, 500}, atts = {"uecw_acr_68_conversion"}},
	["+reload"] = {header = "Ammo", offset = {800, 0}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

if CustomizableWeaponry_KK_HK416 then
	table.insert( SWEP.Attachments[1].atts, 7, "md_fas2_aimpoint" )
end

--SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.9, sound = "CW_MAGPUL_MASADA_MAGOUT"},
	[2] = {time = 1.8, sound = "CW_MAGPUL_MASADA_MAGIN"},
	[3] = {time = 2.4, sound = "CW_MAGPUL_MASADA_BOLT"}},
	draw = {{time = 0.01, sound = "CW_XM8_CLOTH"},
	{time = 0.5, sound = "CW_MAGPUL_MASADA_DRAW"}}}
	

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/weapons/v_rif_masada.mdl"
SWEP.WorldModel		= "models/cw2/rifles/w_scarh.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 700
SWEP.FireSound = "CW_MAGPUL_MASADA_FIRE"
SWEP.FireSoundSuppressed = "CW_MAGPUL_MASADA_FIRE_SUPPRESSED"
SWEP.Recoil = 0.9

SWEP.HipSpread = 0.1
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.6
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 39
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.1
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.4
SWEP.ReloadHalt_Empty = 3.6
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 50 * 39.37
self.DamageFallOff = 0.3
if self.ActiveAttachments.uecw_acr_68_conversion then
	self.EffectiveRange = ((self.EffectiveRange + 15 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - 0.1))
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
if self.ActiveAttachments.md_csgo_silencer_rifle then
	self.EffectiveRange = ((self.EffectiveRange * 0.85))
end
if self.ActiveAttachments.uecw_skin_silencer then
	self.EffectiveRange = ((self.EffectiveRange * 1.1))
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
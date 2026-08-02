AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Vector"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.EffectiveRange_Orig = 20 *39.37
	SWEP.DamageFallOff_Orig = .65
	
	SWEP.IconLetter = "x"
	killicon.AddFont("cw_mp5", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = -1, z = 2}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0
	
	SWEP.IronsightPos = Vector(-2.747, -3.75, 1.11)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.PronePos = Vector(-7.397, -2.497, -1.551)
	SWEP.ProneAng = Vector(5.618, -49.056, -15.311)

	SWEP.MicroT1Pos = Vector(-2.747, -0.25, 0.5)
	SWEP.MicroT1Ang = Vector(-0.026, 0, 0)	
		
	SWEP.EXPSPos = Vector(-2.75, -2, 0.55)
	SWEP.EXPSAng = Vector(0, 0, 0)

	SWEP.ENFORPos = Vector(-2.75, -2.75, 0.5)
    SWEP.ENFORAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.733, -5, 0.36)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.CustomizePos_Orig = Vector(5.488, -1.627, -1.821)
	SWEP.CustomizeAng_Orig = Vector(17.009, 29.971, 16.669)

	SWEP.CustomizePos = Vector(5.488, -1.627, -1.821)
	SWEP.CustomizeAng = Vector(17.009, 29.971, 16.669)

	SWEP.CustomizePos_Akimbo = Vector(0, 0, -7.5)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

	SWEP.MaterialIndexPrimary = {1}
	SWEP.MaterialIndexSecondary = {0, 2, 4, 5, 6, 7}
	
	SWEP.BackupSights = {["too_reflex_exps"] = {[1] = Vector(-4.25, -2, 0.75), [2] = Vector(0, 0, -50)},
	["md_microt1"] = {[1] = Vector(-4.25, -0.25, 0.75), [2] = Vector(0, 0, -50)},
	["md_acog"] = {[1] = Vector(-2.735, 5, -0.753), [2] = Vector(0, 0.028, 0)}, -- there you go
	["corioenforcer"] = {[1] = Vector(-4.25, -2.75, 0.75), [2] = Vector(0, 0, -50)}}

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 3, roll = 1, forward = 1, pitch = 1}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.SprintViewNormals = {x = 1, y = -1, z = 1}

	SWEP.AttachmentModelsVM = {
		--muzzle
		["md_saker"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon", pos = Vector(0, 10.138, 0.034), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "weapon", rel = "", pos = Vector(-0.05, 12.79, 1.017), angle = Angle(180, 90, -90), size = Vector(1, 1, 1)},
		["md_csgo_silencer_pistol"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_pistol.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.31, -4.6), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},		
		--foregrip
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(-0.375, -5, -2.05), angle = Angle(0, 0, 0), adjustment = {min = -5.971, max = -5, axis = "y", inverseOffsetCalc = false}, size = Vector(0.699, 0.699, 0.699)},
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "weapon", rel = "", pos = Vector(-0.03, 4.5, 0.155), angle = Angle(0, -90, 0), adjustment = {min = 4.5, max = 5.147, axis = "y", inverseOffsetCalc = false}, size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "weapon", rel = "", pos = Vector(0, 4.5, 0.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		--sight
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(0.022, -2.2, 3.27), angle = Angle(0, 180, 0), adjustment = {min = -2.714, max = -0.547, axis = "y", inverseOffsetCalc = false}, size = Vector(.5, .5, .5)},
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "weapon", rel = "", pos = Vector(0.1, -1.70, 2.65), angle = Angle(0, -90, 0), adjustment = {min = -2.236, max = -0.961, axis = "y", inverseOffsetCalc = false}, size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -1, 3.05), angle = Angle(0, -90, 0), adjustment = {min = -1.986, max = -0.940, axis = "y", inverseOffsetCalc = false}, size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "weapon", pos = Vector(-0.35, -7.5 ,-2.75 ), angle = Angle(0, 0, 0), adjustment = {min = -8.165, max = -7.5, axis = "y", inverseOffsetCalc = false}, size = Vector(1, 1, 1)},
		--laser
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", pos = Vector(-0.15, 2.5, 2.9), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "weapon", rel = "", pos = Vector(0, 2.15, 3), angle = Angle(0, -90, 0), size = Vector(1, 1, 1) },
		["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "weapon", pos = Vector(0.454, 4.051, 0.931), angle = Angle(0, 90, -90), size = Vector(0.091, 0.091, 0.091)}
	}	
     
		
	
	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
    SWEP.GrimlineAngAdjust = Angle(0, 0, 0)
	SWEP.LaserPosAdjust = {x = 0, y = 0, z = 0.25}
	SWEP.LaserAngAdjust = {p = 0, y = 180, r = 0}
	SWEP.SightWithRail = true
	SWEP.CustomizationMenuScale = 0.012
end
-- SWEP.PenMod = 0
SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, k = 2, regular = 0}
SWEP.StockBGs = {main = 1, regular = 0, retractable = 1, none = 2}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.MagBGs = {main = 4, round15 = 0, round30 = 1}
SWEP.LuaViewmodelRecoil = true

SWEP.Attachments = {[1] = {header = "Sight", offset = {-500, -300},  atts = {"md_microt1", "too_reflex_exps", "corioenforcer", "md_acog"}},
[2] = {header = "Muzzle", offset = {800, -300}, atts = {"md_saker", "hard20", "md_csgo_silencer_pistol"}},
[3] = {header = "Laser", offset = {-500, 160}, atts = {"md_anpeq15", "ftacgrimline", "md_insight_x2"}},
[4] = {header = "Foregrip", offset = {-500, -750}, atts = {"md_foregrip","ftactiger_r", "bruentiltgrip_r"}, exclusions = {md_vector_sac3_conversion = true}},
[5] = {header = "Stance", offset = {150, -750}, atts = {"cw_akimbo"}},
[6] = {header = "Signature Attachment", offset = {265, 160}, atts = {"md_vector_sac3_conversion"}},
[7] = {header = "Skins", offset = {800, 160}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}, exclusions = {md_vector_sac3_conversion = true}},
["+reload"] = {header = "Ammo", offset = {800, -750}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap",}, exclusions = {md_vector_sac3_conversion = true}}}

SWEP.AttachmentExclusions = {["md_acog"] = {"md_vector_sac3_conversion"},
							 ["md_saker"] = {"md_vector_sac3_conversion"},
							 ["hard20"] = {"md_vector_sac3_conversion"},
							 ["md_anpeq15"] = {"md_vector_sac3_conversion"},
							 ["ftacgrimline"] = {"md_vector_sac3_conversion"}
}

SWEP.AttachmentDependencies = {
	["md_csgo_silencer_pistol"] = {"md_vector_sac3_conversion"},
	["md_insight_x2"] = {"md_vector_sac3_conversion"}
} 

SWEP.Trivia = {text = "Notable for its KRISS Super V mechanism, which reduces muzzle climb.", x = -300, y = -850}

SWEP.Animations = {fire = {"base_fire"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.Animations_Akimbo = {fire = {"base_fire"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw",
	fire_right = {"base_fire"},
	reload_right = "base_reload",
	reload_empty_right = "base_reloadempty",
	idle_right = "base_idle",
	draw_right = "base_draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	base_reload = {[1] = {time = .5, sound = "CW_VECTOR_MAGREL"},
	[2] = {time = .8, sound = "CW_VECTOR_MAGOUT"},
	[3] = {time = 1, sound = "CW_VECTOR_RAT"},
	[4] = {time = 2.2, sound = "CW_VECTOR_MAGIN"}},
	
	base_reloadempty = {[1] = {time = 0.5, sound = "CW_VECTOR_MAGREL"},
	[2] = {time = .8, sound = "CW_VECTOR_MAGOUT"},
	[3] = {time = 1, sound = "CW_VECTOR_RAT"},
	[4] = {time = 2.7, sound = "CW_VECTOR_MAGIN"},
	[5] = {time = 3.5, sound = "CW_VECTOR_BOLTREL"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "2burst", "semi"}
SWEP.BurstCooldownMul = 0
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_tfa_vector.mdl"
SWEP.WorldModel		= "models/weapons/w_tfa_vector.mdl"
SWEP.ViewModel_AkimboL = "models/weapons/v_tfa_vector.mdl"
SWEP.ViewModel_AkimboR = "models/weapons/v_tfa_vector.mdl"
SWEP.NearWallEnabled = false

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 33
SWEP.Primary.DefaultClip	= 198
SWEP.Primary.Automatic		= true

SWEP.Primary.Ammo = ".45 ACP"

SWEP.FireDelay = 0.05
SWEP.FireSound = "CW_VECTOR_FIRE"
SWEP.FireSoundSuppressed = "DOITHOM1928_FIRE_SUPPRESSED"
SWEP.Recoil = 0.25

SWEP.HipSpread = 0.15
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.001
SWEP.MaxSpreadInc = 0.005
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.8

SWEP.bulletCallback = function( att, tr, dmg )
	if tr.HitGroup == HITGROUP_HEAD then
		dmg:ScaleDamage( 1.05 / 1.2 ) -- 1.2 multiplied by this value is the resulting multiplier
	end
end

SWEP.ReloadSpeed = 1.6
SWEP.ReloadTime = 2
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 3.2
SWEP.ReloadHalt_Empty = 4.3

SWEP.UseHands = true

SWEP.ForegripOverride = true
SWEP.ForegripParent = "nah"

SWEP.BaseArm = "L Clavicle"
SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

SWEP.ForegripOverridePos = {
		["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, .3), angle = Angle(0, 0, 15) },
		["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, .40, -.5), angle = Angle(5, 2, -5) },
		["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, -3, -5) },
		["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 6, 0) },
		["akimbo"] = {
     		["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, -50, 0), angle = Angle(0, 0, 0) }},
		["nah"] = {
   			["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}}
	

function SWEP:IndividualThink()

	if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end

	self.LaserPosAdjust = {x = 0, y = 0, z = 0.25}
	self.LaserAngAdjust = {p = 0, y = 180, r = 0}
	
	self.Damage = 28
	self.FireDelay = 0.05
	self.ReloadSpeed = 1.6

	self.EffectiveRange = 20 * 39.37
	self.DamageFallOff = .65

	self.HipSpread = 0.15
	self.VelocitySensitivity = 0.001
	self.MaxSpreadInc = 0.005

	self.bulletCallback = function( att, tr, dmg )
		if tr.HitGroup == HITGROUP_HEAD then
			dmg:ScaleDamage( 1.05 / 2 ) -- 2 multiplied by this value is the resulting multiplier
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
		self.ViewModelOffsetPos = Vector(-2, 0, -1)
		self.ViewModelOffsetAng = Angle(0, 0, -30)
		self.ViewModelOffsetPos2 = Vector(2, 0, -1)
		self.ViewModelOffsetAng2 = Angle(0, 0, 30)

		self.HipSpread = self.HipSpread * 16
		self.VelocitySensitivity = self.VelocitySensitivity * 1600
		self.MaxSpreadInc = self.MaxSpreadInc * 40
	end
	if self.ActiveAttachments.md_vector_sac3_conversion then
		
		self.bulletCallback = function( att, tr, dmg )
			if tr.HitGroup == HITGROUP_HEAD then
				dmg:ScaleDamage( 1.1 / 2 ) -- 2 multiplied by this value is the resulting multiplier
			end
		end

		self.HipSpread = 0.075
		self.VelocitySensitivity = 6
		self.MaxSpreadInc = 0.2

		if self.ActiveAttachments.cw_akimbo then
			self.Damage = 50
			self.FireDelay = 60 / 600
			self.EffectiveRange = self.EffectiveRange + 11 * 39.37
			self.DamageFallOff = 0.28
			self.ReloadSpeed = 2.39
		else
			self.Damage = 32
			self.FireDelay = 60 / 923
			self.EffectiveRange = self.EffectiveRange + 2 * 39.37
			self.DamageFallOff = 0.37
			self.ReloadSpeed = 2.15
		end
	end
	if self.ActiveAttachments.md_csgo_silencer_pistol then
		self.EffectiveRange = ((self.EffectiveRange * 0.85))
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
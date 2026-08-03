if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "arMag"

	CustomizableWeaponry.shells:addNew("khr79233", "models/khrcw2/doipack/shells/9x39mm.mdl", "CW_SHELL_MAIN")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "StG 44"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_stg44")
	killicon.Add( "doi_atow_stg44", "vgui/inventory/killicons/weapon_stg44", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 60 * 39.37
SWEP.DamageFallOff_Orig = .3
	
	SWEP.Shell = "khr79233"
	SWEP.ShellScale = 1
	SWEP.ShellDelay = .02
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3, y = -2, z = -.75}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = .7
	SWEP.ForeGripOffsetCycle_Reload_Empty = .7


SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 

	SWEP.IronsightPos = Vector(-2.316, -4.5, 0.58)
	SWEP.IronsightAng = Vector(0.2536, 0.0368, 0)

	SWEP.ReflexPos = Vector(-2.25, -3.5, -0.45)
    SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.ZF4Pos = Vector(-2.3575, -5.25, 0.32)
	SWEP.ZF4Ang = Vector(0, 0.0186, 0)

	SWEP.NXSPos = Vector(-2.285, -1, -0.5)
    SWEP.NXSAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-4, 0.25, 0.5)
	SWEP.TacStanceAng = Vector(0, 0, -45)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(11, -3, -2.2)
	SWEP.CustomizeAng = Vector(20, 44, 15)
	
	SWEP.AlternativePos = Vector(-0.4, -.5, -0.5)
	SWEP.AlternativeAng = Vector(0.2536, 0.0368, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, 50.0455, -15.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .8
	SWEP.CustomizationMenuScale = 0.0165 --  0.0275

	SWEP.MaterialIndexPrimary = {0, 2, 4}
	SWEP.MaterialIndexSecondary = {3}

	SWEP.BackupSights = { ["too_optic_tacstance"] = {[1] = Vector(-2.316, -4.5, 0.58), [2] = Vector(0.2536, 0.0368, 0)},
	["md_reflex"] = {[1] = Vector (-4, 0.25, 0.5), [2] = Vector(0, 0, -45)},
	["doi_atow_zf4"] = {[1] = Vector(-4, 2.75, 0.5), [2] = Vector(0, 0, -45)},
	["md_nightforce_nxs"] = {[1] = Vector (-4, 2.75, 0.5), [2] = Vector(0, 0, -45)}
	}

	SWEP.AttachmentModelsVM = { 

		--optics
		["doi_atow_zf4"] = {model = "models/khrcw2/doipack/attachments/zf4scope.mdl", pos = Vector(-0.04, -4.2041, 5.525), angle = Angle(0, -90, 0), size = Vector(1.075, 1.075, 1.075), bone = "STG44"},
		["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "STG44", pos = Vector(-0.09, -4.5, 3.85), angle = Angle(0, -180, 0), size = Vector(1, 1, 1)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "STG44", rel = "", pos = Vector(-0.315, -4.15, 5.975), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		--handguard
		["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "STG44", rel = "", pos = Vector(-0.295, 7.5, 2), angle = Angle(0, 0, 0), size = Vector(0.80, 1, 1)},
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "STG44", rel = "", pos = Vector(-0.35, 6, 2.85), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
        ["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "STG44", rel = "", pos = Vector(-0.375, 6, 2.75), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
        ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "STG44", rel = "", pos = Vector(-0.75, -5, 0.5), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		--lasers
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "STG44", pos = Vector(-0.75, 8.5, 3.25), angle = Angle(0, 90, -90), size = Vector(0.8, 0.8, 0.8)},
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "STG44", rel = "", pos = Vector(-0.95, 8, 3.75), angle = Angle(0, -90, 90), size = Vector(1, 1, 1) },
		--muzzles
		["md_nightforce_nxs"] = {model = "models/cw2/attachments/l96_scope.mdl", bone = "STG44", rel = "", pos = Vector(-0.436, -6, 6.75), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_csgo_silencer_rifle"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "STG44", rel = "", pos = Vector(-0.35, 19.7, 2.4), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "STG44", pos = Vector(-0.375, -0.85, 0.55), angle = Angle(0, 0, 0), size = Vector(0.9, 1, 0.9)},
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "STG44", rel = "", pos = Vector(-0.35, 22, 3.25), angle = Angle(180, 90, -90), size = Vector(1, 1, 1)},
		["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(-.375, 16.7, 3.275), angle = Angle(0, -90, 0), size = Vector(1.55, 1.3, 1.3), bone = "STG44"},
	}
		
	SWEP.ForegripOverridePos = {
	["penos"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1, .4, 1), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 5, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, -.4), angle = Angle(0, 0, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, .40, -.5), angle = Angle(5, 2, -5) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, -2, -5) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2, 35, 0) }},
}
	
	SWEP.AP2XAxisAlign = {right = 0, up = -.015, forward = 0}
	SWEP.M823AxisAlign = {right = 0, up = -.015, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = .45, pitch = 0.1}
end
end 

SWEP.MuzzleVelocity = 685

SWEP.SlingBGs = {main = 2, off = 0, on = 1}

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true
--SWEP.AimBreathingIntensity = .875

SWEP.Trivia = {text = "The first weapon to be denominated as an assault rifle.", x = 0, y = -750}
-- sumn bout saving europa or whatevs

SWEP.Attachments = {[3] = {header = "Accessory", offset = {-450, -700}, atts = {"doi_atow_sling"}},
[6] = {header = "Handguard", offset = {-450, 50}, atts = {"ftactiger_r", "bruentiltgrip_r", "md_foregrip", "md_bipod"}},
[2] = {header = "Muzzle", offset = {-450, -350}, atts = {"doi_atow_unisuppressor", "md_saker", "md_csgo_silencer_rifle", "hard20"}},
[4] = {header = "Finish", offset = {850, 400}, atts = {"doi_atow_normandycamo", "md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
[1] = {header = "Optic", offset = {600, -525}, atts = {"md_reflex", "doi_atow_zf4", "md_nightforce_nxs", "too_optic_tacstance"}},
[5] = {header = "Laser", offset = {1100, -50}, atts = {"ftacgrimline", "md_anpeq15"}},
["+reload"] = {header = "Ammo", offset = {-450, 500}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 35

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto","semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 75 // 65
SWEP.AimViewModelFOV = 63
SWEP.ZoomAmount = 15
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/stg44.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_stg44.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_stg44.mdl"
SWEP.WMPos = Vector(-1.5, 10, -.25)
SWEP.WMAng = Vector(-6, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false //
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = .5
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "AR2"
else
SWEP.Primary.Ammo			= "7.92x33MM"
end

SWEP.FireDelay = 60/600
SWEP.FireSound = "DOISTG44_FIRE"
SWEP.FireSoundSuppressed = "DOIM1A1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = .75

SWEP.HipSpread = 0.15
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 0.6
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 49
SWEP.DeployTime = .48
SWEP.HolsterTime = .6

SWEP.ADSFireAnim = true

SWEP.ReloadSpeed = 1.25
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 3.1
SWEP.ReloadTime_Empty = 3.8
SWEP.ReloadHalt_Empty = 4.85

function SWEP:IndividualThink()
	
	if CLIENT then
		self.ForegripOverride = true
		self.ForegripParent = "penos"
	end
	
	if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end
	
	self.EffectiveRange = 60 * 39.37
	self.DamageFallOff = .3

	self.ADSFireAnim = true

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
	if self.ActiveAttachments.doi_atow_zf4 or self.ActiveAttachments.md_nightforce_nxs then
		self.ADSFireAnim = false
	end
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.05
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
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

/*/

 

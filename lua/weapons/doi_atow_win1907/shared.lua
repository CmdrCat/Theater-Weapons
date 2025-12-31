if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")
		
		SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1907 Carbine"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/1907")
	killicon.Add( "doi_atow_win1907", "vgui/inventory/killicons/1907kill", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 35 * 39.37
	SWEP.DamageFallOff_Orig = .55
	
	SWEP.Shell = "khr30carbine"
	SWEP.ShellScale = 1.17
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3, y = -3, z = .5}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0
	
	SWEP.IronsightPos = Vector(-2.887, -3, 1.2955)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(-2.885, -7, 0.185)
    SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.AltIronPos = Vector(-2.4768, -3, 1.1628)
	SWEP.AltIronAng = Vector(0.2625, 0.0213, 0)
	
	SWEP.LymanPos = Vector(-1.965, -3.5, 0.60)
	SWEP.LymanAng = Vector(0, 0, 0)

	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
    SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-15.478, 20.96, -15)

	SWEP.AlternativePos = Vector(-0.7, 1, -0.5)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, 35.0455, -25.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.CustomizePos = Vector(8, -2, .5)
	SWEP.CustomizeAng = Vector(10, 40, 18)

	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.0175 --  0.024

	SWEP.BackupSights = {
		["md_reflex"] = {[1] = Vector(-4, 3, 0), [2] = Vector(0,0,-30)},
		["doi_atow_lymanm82"] = {[1] = Vector(-2.887, -1.7, 1.2955), [2] = Vector(0,0,0)},
	}
	
	SWEP.AttachmentModelsVM = {
	--optics
	["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "Weapon", rel = "", pos = Vector(0, -1.55, 5), angle = Angle(0, 0, 270), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
	["md_rail"] = { type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "Weapon", rel = "", pos = Vector(0.235, 0.55, 2.55), angle = Angle(270, 90, 0), size = Vector(1, 1, 1)},
	["doi_atow_lymanm82"] = {model = "models/khrcw2/doipack/attachments/garandscope.mdl", pos = Vector(-0.15, -1.2, -2), angle = Angle(90, 270, 0), size = Vector(1, 1, 1), bone = "Weapon"},
	--muzzles
	["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/m3a1suppressor.mdl", pos = Vector(-1.78, 1.479, 9.875), angle = Angle(90, 0, 90), size = Vector(0.9, 0.9, 0.9), bone = "Weapon"},
	--lasers
	["ftacgrimline"] = {model = "models/shared/lasers/r_ftacgrimline.mdl", pos = Vector(-0.9, 0.05, 10.5), angle = Angle(90, 0, 0), size = Vector(1, 1, 1), bone = "Weapon"},
	["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", pos = Vector(-0.75, 0.1, 11), angle = Angle(-90, 0, -185), size = Vector(0.6, 0.6, 0.6), bone = "Weapon"},
	--handguard/grips
    ["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "Weapon", rel = "", pos = Vector(0, 1.75, 12), angle = Angle(0, 0, -90), size = Vector(0.80, 1, 1)},
	["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "Weapon", rel = "", pos = Vector(-0.35, -5, 2.85), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
    ["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "Weapon", rel = "", pos = Vector(-0.25, 1, 9.75), angle = Angle(90, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
    ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "Weapon", rel = "", pos = Vector(-0.295, 2.5, 1.555), angle = Angle(0, 0, -90), size = Vector(0.5, 0.5, 0.5)},
	}
	
	SWEP.ForegripOverridePos = {
		["nah"] = {
		["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, .3), angle = Angle(0, 0, 15) },
		["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, .40, -.5), angle = Angle(5, 2, -5) },
		["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, -3, -5) },
		["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 6, 0) }}
}
	
	SWEP.M82AxisAlign = {right = 0, up = -.02, forward = 0}
	SWEP.INS2AxisAlign = {right = 0, up = -.04, forward = 0}
	SWEP.PO42PAxisAlign = {right = .075, up = -.03, forward = 0}
	SWEP.AP2XAxisAlign = {right = .075, up = -.055, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = .15, roll = .25, forward = 0, pitch = .1}
end
end

SWEP.MuzzleVelocity = 570

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true

SWEP.MagBGs = {main = 1, five = 0, fifteen = 1}

	SWEP.Attachments = {[1] = {header = "Optic", offset = {550, -500}, atts = {"md_reflex", "doi_atow_lymanm82"}},
	[3] = {header = "Magazine", offset = {1000, 450}, atts = {"doi_atow_win190715"}},
	[2] = {header = "Barrel", offset = {-450, -600}, atts = {"doi_atow_unisuppressor"}},
	[4] = {header = "Laser", offset = {1000, 0}, atts = {"ftacgrimline", "md_anpeq15"}},
	[5] = {header = "Handguard", offset = {-450, -150}, atts = {--"ftactiger_r", 
    "bruentiltgrip_r", "md_foregrip", "md_bipod"}},
	["+reload"] = {header = "Ammo", offset = {-450, 300}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire","base_fire2"},
	fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.SpeedDec = 35
SWEP.FOVPerShot = 0

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 70
SWEP.AimViewModelFOV = 63
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/win1907.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_m1a1para.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_m1a1para.mdl"
SWEP.WMPos = Vector(-1.25, 4.5, .25)
SWEP.WMAng = Vector(-8, 3, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false //
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 35
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "AR2"
else
SWEP.Primary.Ammo			= ".351 WSL"
end


SWEP.FireDelay = 60/600
SWEP.FireSound = "DOI1907_FIRE"
SWEP.FireSoundSuppressed = "DOIM1A1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = 1.7
 -- = 1.1

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 50
SWEP.DeployTime = .525
SWEP.HolsterTime = .5

SWEP.ADSFireAnim = true
SWEP.RecoilToSpread = 0
SWEP.RecoilToSpreadAuto = .25
SWEP.RecoilToSpreadSemi = 0

SWEP.ForegripOverride = true
SWEP.ForegripParent = "nah"

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.8
SWEP.ReloadHalt = 2.5
SWEP.ReloadTime_Empty = 3.2
SWEP.ReloadHalt_Empty = 3.9

function SWEP:IndividualThink()
	
	self.EffectiveRange = 35 * 39.37
	self.DamageFallOff = .55
	
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

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
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

/*


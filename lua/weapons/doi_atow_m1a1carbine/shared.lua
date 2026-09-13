if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")
		
		SWEP.magType = "arMag"
		CustomizableWeaponry.shells:addNew("khr30carbine", "models/khrcw2/doipack/shells/357mag.mdl", "CW_SHELL_MAIN")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1A1 Carbine"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m1paratrooper")
	killicon.Add( "doi_atow_m1a1carbine", "vgui/inventory/killicons/weapon_m1paratrooper", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 55 * 39.37
	SWEP.DamageFallOff_Orig = .4
	
	SWEP.Shell = "khr30carbine"
	SWEP.ShellScale = 1
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4.25, y = -3, z = .5}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.7
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.5
	
	SWEP.IronsightPos = Vector(-2.4768, -3, 1.1628)
	SWEP.IronsightAng = Vector(0.2625, 0.0213, 0)
	
	SWEP.AltIronPos = Vector(-2.4773, -3, 1.2686)
	SWEP.AltIronAng = Vector(0, 0.0355, 0)
	
	SWEP.LymanPos = Vector(-1.4022, -3.5, 1.1298)
	SWEP.LymanAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(-2.4625, -9.5, 0.095)
    SWEP.ReflexAng = Vector(0, 0, 0)

	SWEP.TacStancePos = Vector(-4, 0.25, 0.5)
	SWEP.TacStanceAng = Vector(0, 0, -45)

	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
    SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(0, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 

	SWEP.AlternativePos = Vector(-0.7, 1, -0.5)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, 35.0455, -25.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.CustomizePos = Vector(8, -2, .5)
	SWEP.CustomizeAng = Vector(10, 40, 18)

	SWEP.StockBoneName = "FoldingStock"
	
	SWEP.BackupSights = {["too_optic_tacstance"] = {[1] = Vector(-2.47, -2.5, 1.1628), [2] = Vector(0, 0.0355, 0)},
						 ["md_reflex"] = {[1] = Vector (-4, 0.25, 0.5), [2] = Vector(0, 0, -45)},
						 ["doi_atow_lymanm82"] = {[1] = Vector(-2.47, -2.5, 1.1628), [2] = Vector(0, 0.0355, 0)}}
	-- ON FOENEM GRAVE I DONT KNOW WHY THIS SHIT ISNT WORKING. PLEASE SAVE ME.
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.015 --  0.024
	
	SWEP.AttachmentModelsVM = {
	--optics
	["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "Weapon", rel = "", pos = Vector(0.25, 5, 3.55), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
	["md_rail"] = { type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "Weapon", rel = "", pos = Vector(0.48, 4.5, 1.5), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
	["doi_atow_lymanm82"] = {model = "models/khrcw2/doipack/attachments/garandscope.mdl", pos = Vector(-0.5, 0.18, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	--muzzle
	["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/m3a1suppressor.mdl", pos = Vector(2.02, 2.45, 4.25), angle = Angle(0, -90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Weapon"},
	--laser
	["ftacgrimline"] = {model = "models/shared/lasers/r_ftacgrimline.mdl", pos = Vector(-0.9, 0.05, 10.5), angle = Angle(90, 0, 0), size = Vector(1, 1, 1), bone = "Weapon"},
	["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", pos = Vector(0.45, 10.5, 2), angle = Angle(0, 90, 180), size = Vector(0.7, 0.7, 0.7), bone = "Weapon"},
	}
	
		SWEP.ForegripOverridePos = {
	["nah"] = {
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, 0), angle = Angle(0, 0, 10) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, .40, -.5), angle = Angle(5, 2, -5) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, -7, -5) }}
}
	
	SWEP.M82AxisAlign = {right = 0, up = -.02, forward = 0}
	SWEP.INS2AxisAlign = {right = 0, up = -.04, forward = 0}
	SWEP.PO42PAxisAlign = {right = .075, up = -.03, forward = 0}
	SWEP.AP2XAxisAlign = {right = .075, up = -.055, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = .15, roll = .35, forward = .2, pitch = .15}
end
end

SWEP.MuzzleVelocity = 600


SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true

SWEP.SightBGs = {main = 2, off = 0, on = 1}
SWEP.MagBGs = {main = 3, fifteen = 0, thirty = 1}
SWEP.SlingBGs = {main = 4, off = 0, on = 1}

--if CustomizableWeaponry_atowins2_optics then
	--else
	SWEP.Attachments = {[1] = {header = "Optic", offset = {550, -350}, atts = {"doi_atow_lymanm82", "md_reflex", "too_optic_tacstance"}},
	[2] = {header = "Sight", offset = {1225, 50}, atts = {"doi_atow_altsight"}},
	[3] = {header = "Muzzle", offset = {-600, -400}, atts = {"doi_atow_unisuppressor"}},
	[4] = {header = "Conversion", offset = {-50, -450}, atts = {"doi_atow_m2carbineconv"}},
	[5] = {header = "Magazine", offset = {700, 600}, atts = {"doi_atow_m1carbine30rnd"}},
	[6] = {header = "Accessory", offset = {-400, 400}, atts = {"doi_atow_sling", "bg_nostock"}},
	[7] = {header = "Laser", offset = {0, 200}, atts = {-- "ftacgrimline", 
	"md_anpeq15"}},
	[8] = {header = "Skins", offset = {1500, -300}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
	["+reload"] = {header = "Ammo", offset = {1500, 450}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
--end

SWEP.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.SpeedDec = 25
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

SWEP.ViewModelFOV	= 75
SWEP.AimViewModelFOV = 63
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/m1a1para.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_galil.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false //
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "SMG1"
else
SWEP.Primary.Ammo			= ".30 Carbine"
end


SWEP.FireDelay = 60/700
SWEP.FireSound = "DOIM1A1CAR_FIRE"
SWEP.FireSoundSuppressed = "DOIM1A1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = 2.10
 -- = 1.1

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.45
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 40
SWEP.DeployTime = .525
SWEP.HolsterTime = .5

SWEP.ADSFireAnim = true

SWEP.RecoilToSpread = 0
SWEP.RecoilToSpreadAuto = .25
SWEP.RecoilToSpreadSemi = 0

SWEP.MaterialIndexPrimary = {1, 3}
SWEP.MaterialIndexSecondary = {0, 4}

SWEP.ForegripOverride = true
SWEP.ForegripParent = "nah"

SWEP.ReloadSpeed = 1.5
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 3
SWEP.ReloadTime_Empty = 3.6
SWEP.ReloadHalt_Empty = 4.3

function SWEP:IndividualThink()
	self.RecoilToSpread = (self.FireMode == "auto") and self.RecoilToSpreadAuto or self.RecoilToSpreadSemi
	
	self.EffectiveRange = 55 * 39.37
	self.DamageFallOff = .4

	self.PrintName = "M1A1 Carbine"

	self.ADSFireAnim = true
	
	if self.ActiveAttachments.doi_atow_m2carbineconv then
		self.PrintName = "M2A1 Carbine"
	end
	if self.ActiveAttachments.doi_atow_altsight then
	self.BackupSights = {["doi_atow_lymanm82"] = {[1] = Vector(-2.47, -2.5, 1.27), [2] = Vector(-0.05, 0.0355, 0)},
						 ["md_reflex"] = {[1] = Vector(-4, 0.25, 0.5), [2] = Vector(0, 0, -45)},
						 ["too_optic_tacstance"] = {[1] = Vector(-2.47, -2.5, 1.27), [2] = Vector(-0.05, 0.0355, 0)}}
	else
	self.BackupSights = { ["doi_atow_lymanm82"] = {[1] = Vector(-2.47, -2.5, 1.1628), [2] = Vector(0.2625, 0.0213, 0)},
						 ["md_reflex"] = {[1] = Vector(-4, 0.25, 0.5), [2] = Vector(0, 0, -45)},
						 ["too_optic_tacstance"] = {[1] = Vector(-2.47, -2.5, 1.1628), [2] = Vector(0.2625, 0.0213, 0)}}
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
	if self.ActiveAttachments.doi_atow_lymanm82 then
		self.ADSFireAnim = false
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

/*/

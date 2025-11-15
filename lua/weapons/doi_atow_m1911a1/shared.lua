if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "pistolMag"
		
		CustomizableWeaponry.shells:addNew("khr9x19", "models/khrcw2/doipack/shells/45acp.mdl", "CW_SHELL_SMALL")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1911A1"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m1911")
	killicon.Add( "doi_atow_m1911a1", "vgui/inventory/killicons/weapon_m1911", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 25 * 39.37
	SWEP.DamageFallOff_Orig = .8
	
	SWEP.Shell = "khr9x19"
	SWEP.ShellScale = 1.59
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = -2.35, z = 2.9}
	
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0

	SWEP.IronsightPos = Vector(-1.845, 0, 0.42)
	SWEP.IronsightAng = Vector(1, 0.06, 6.2803)
	
	SWEP.SprintPos = Vector(3.25, -10.9318, -8.5227)
	SWEP.SprintAng = Vector(59.3182, -2.0455, 3)
	
	SWEP.CustomizePos = Vector(9, -7.5, 2.7)
	SWEP.CustomizeAng = Vector(15, 47, 30)

	SWEP.CustomizePos_Akimbo = Vector(0, -3.511, -5.283)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

	SWEP.RMRPos = Vector(-1.745, 0, -0.17)
	SWEP.RMRAng = Vector(1, 0.06, 6.2803)

	SWEP.BackupSights = {["md_rmr"] = {[1] = Vector(-4.5, 6, -3), [2] = Vector(5, 0, -30)}}

	SWEP.AlternativePos = Vector(-.5, -2.35, -0.5)
	SWEP.AlternativeAng = Vector(.5, 0.4, 2)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = true
	SWEP.SightWithRail = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 4, hor = 2, roll = 2, forward = 2, pitch = 2}
	SWEP.CustomizationMenuScale = 0.013 --  0.0165
	
	SWEP.AttachmentModelsVM = {["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(0.005, 3.6, .555), angle = Angle(-.7, -90, 0), size = Vector(0.725, 0.725, 0.725), bone = "barrel"},
		["md_rail"] = {model = "models/cw2/attachments/slimpistolrail.mdl", bone = "barrel", pos = Vector(0.005, 2, -0.4), angle = Angle(0, -90, 0), size = Vector(0.1, 0.1, 0.1)},
		["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", bone = "barrel", pos = Vector(-0.21, -2, -2.15), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_insight_x2"] = { type = "Model", model = "models/cw2/attachments/pistollaser.mdl", bone = "barrel", pos = Vector(0.1, 0.2, -0.33), angle = Angle(0, 90, 0), size = Vector(0.079, 0.079, 0.079), bodygroups = {[1] = 1}}}

	SWEP.LaserPosAdjust = Vector(0.5, 0, -1)
	SWEP.LaserAngAdjust = Angle(0, 180, 0)

	SWEP.ForegripOverridePos = {
	["nah"] = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, -.4), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["R Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, -.25, 0), angle = Angle(0, 0, 0) }}
}
	
end
end

SWEP.MagBGs = {main = 2, off = 0, on = 1}

SWEP.MuzzleVelocity = 250

SWEP.Attachments = {[1] = {header = "Sight", offset = {900, -300}, atts = {"md_rmr"}, exclusions = {md_insight_x2 = true}},
[2] = {header = "Laser", offset = {-350, 250}, atts = {"md_insight_x2"}, exclusions = {md_rmr = true}},
[4] = {header = "Magazine", offset = {550, 250}, atts = {"doi_atow_pistolextmag"}},
[3] = {header = "Muzzle", offset = {-500, -350}, atts = {"doi_atow_unisuppressor"}},
[5] = {header = "Finish", offset = {175, -350}, atts = {"doi_atow_m1911satinfinish","doi_atow_c96goldfinish"}},
[6] = {header = "Stance", offset = {175, -350}, atts = {"cw_akimbo"}},
["+reload"] = {header = "Ammo", offset = {-700, 100}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap", "am_atow_riot"}}}

SWEP.Animations = {fire = {"base_fire","base_fire3"},
	fire_aim = {"iron_fire","iron_fire2","iron_fire3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.Animations_Akimbo = {reload = "base_reload",
	fire = {"base_fire","base_fire3"},
	idle = "base_idle",
	draw = "base_draw",
	reload_right = "base_reload",
	fire_right = {"base_fire","base_fire3"},
	idle_right = "base_idle",
	draw_right = "base_draw"
}
	
SWEP.ReloadViewBobEnabled = false //
	
SWEP.SpeedDec = 15
SWEP.FOVPerShot = 0

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "pistol"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Pistols"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 75 // 65
SWEP.AimViewModelFOV = 55
SWEP.ZoomAmount = 0
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/m1911.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_m1911.mdl"

SWEP.ViewModel_AkimboL = "models/khrcw2/doipack/m1911.mdl"
SWEP.ViewModel_AkimboR = "models/khrcw2/doipack/m1911.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_m1911.mdl"
SWEP.WMPos = Vector(-1.4, 5, 1.25)
SWEP.WMAng = Vector(-5, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false //
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = .5
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 63
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "Pistol"
else
SWEP.Primary.Ammo			= ".45 ACP"
end


SWEP.FireDelay = 0.11
SWEP.FireSound = "DOIM1911_FIRE"
SWEP.FireSoundSuppressed = "DOIPPK_FIRE_SUPPRESSED"
SWEP.Recoil = 1

SWEP.HipSpread = 0.01
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 48
SWEP.DeployTime = .25
SWEP.HolsterTime = .35

SWEP.ADSFireAnim = true
SWEP.ShootWhileProne = true
SWEP.HolsterOnLadder = false
SWEP.SprintingEnabled = false

SWEP.ForegripOverride = true
SWEP.ForegripParent = "nah"

SWEP.ReloadSpeed = 1.25
SWEP.ReloadTime = 1.8
SWEP.ReloadHalt = 2.3
SWEP.ReloadTime_Empty = 1.8
SWEP.ReloadHalt_Empty = 3

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
self.EffectiveRange = 25 * 39.37
self.DamageFallOff = .8

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
	if self.ActiveAttachments.am_atow_riot then
		self.EffectiveRange = ((self.EffectiveRange - 7.5 * 39.37))
	end
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.1
	anim = "safe"
	prefix = ""
	suffix = ""
	
		if clip == 1 then
		suffix = suffix .. "_last"
	end

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
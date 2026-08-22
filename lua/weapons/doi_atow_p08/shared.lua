if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "pistolMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "P08"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_luger")
	killicon.Add( "doi_atow_p08", "vgui/inventory/killicons/weapon_luger", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .75
	
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0
	
	SWEP.Shell = "khr9x19"
	SWEP.ShellScale = 1.25
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -4, y = -2.35, z = -.25}

	SWEP.IronsightPos = Vector(-1.803, 0, 0.9)
	SWEP.IronsightAng = Vector(0.3, 0.05, 6.5882)
	
	SWEP.AltIronPos = Vector(-1.803, 0, 0.91)
	SWEP.AltIronAng = Vector(0.3, 0.0047, 6.5882)
	
	SWEP.SprintPos = Vector(3.8409, -11.9318, -9.5227)
	SWEP.SprintAng = Vector(59.3182, -2.0455, 2.0455)

	SWEP.CustomizePos_Orig = Vector(9.75, -7.5, 2.7)
	SWEP.CustomizeAng_Orig = Vector(15, 47, 30)

	SWEP.CustomizePos = Vector(9.75, -7.5, 2.7)
	SWEP.CustomizeAng = Vector(15, 47, 30)

	SWEP.CustomizePos_Akimbo = Vector(0, -10.511, -8.283)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

	SWEP.AlternativePos = Vector(-.45, -2.5, -0.15)
	SWEP.AlternativeAng = Vector(0.3, 0.0047, 3)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 2, roll = 2, forward = 1.5, pitch = 2}
	SWEP.CustomizationMenuScale = 0.0135 --  0.0165
	
	SWEP.AttachmentModelsVM = {["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(0, 4.39, -0.08), angle = Angle(0, -90, 0), size = Vector(.7, .7, .7), bone = "P80_Barrel"}
	}
	
			SWEP.AttachmentPosDependency = {
	["doi_atow_unisuppressor"] = {
		["doi_atow_lugerlongbarrel"] = Vector(0, 6.7, -0.08),
		},
	}
	
		SWEP.ForegripOverridePos = {
	["nah"] = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, -.4), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["R Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, -.25, 0), angle = Angle(0, 0, 0) }}
}
	
end
end

SWEP.BarrelBGs = {main = 4, off = 0, on = 1}
SWEP.SightBGs = {main = 3, off = 0, on = 1}

SWEP.MuzzleVelocity = 350
SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {
[3] = {header = "Finish", offset = {50, -350}, atts = {"doi_atow_c96goldfinish"}},
[1] = {header = "Barrel", offset = {-700, -350}, atts = {"doi_atow_lugerlongbarrel"}},
[2] = {header = "Muzzle", offset = {-850, 0}, atts = {"doi_atow_unisuppressor"}},
[4] = {header = "Technique", offset = {750, -350}, atts = {"cw_akimbo"}},
["+reload"] = {header = "Ammo", offset = {-175,80}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire","base_fire3"},
	fire_aim = {"iron_fire_2","iron_fire_3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.Animations_Akimbo = {fire = {"base_fire","base_fire3"},
	fire_aim = {"iron_fire_2","iron_fire_3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw",
	fire_right = {"base_fire","base_fire3"},
	fire_aim_right = {"iron_fire_2","iron_fire_3"},
	fire_last_right = {"base_firelast"},
	fire_last_aim_right = {"iron_firelast"},
	reload_right = "base_reload",
	reload_empty_right = "base_reloadempty",
	idle_right = "base_idle",
	draw_right = "base_draw"}
	

SWEP.SpeedDec = 5
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
SWEP.ViewModel		= "models/khrcw2/doipack/lugerp08.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_elite_single.mdl"

SWEP.ViewModel_AkimboL = "models/khrcw2/doipack/lugerp08.mdl"
SWEP.ViewModel_AkimboR = "models/khrcw2/doipack/lugerp08.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/weapons/w_pist_elite_single.mdl"
SWEP.WMPos = Vector(-1.35, 4.5, 3.5)
SWEP.WMAng = Vector(-2, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false //
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .25

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 72
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

SWEP.ForegripOverride = true
SWEP.ForegripParent = "nah"

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "Pistol"
else
SWEP.Primary.Ammo			= "9x19MM"
end

SWEP.FireDelay = 60/500
SWEP.FireSound = "DOIP08_FIRE"
SWEP.FireSoundSuppressed = "DOIPPK_FIRE_SUPPRESSED"
SWEP.Recoil = 1.1
 -- = .57

SWEP.HipSpread = 0.01
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 48
SWEP.DeployTime = .2
SWEP.HolsterTime = .30

SWEP.ADSFireAnim = true
SWEP.ShootWhileProne = true
SWEP.HolsterOnLadder = false
SWEP.SprintingEnabled = false

SWEP.ReloadSpeed = 1.45
SWEP.ReloadTime = 2.15
SWEP.ReloadHalt = 2.9
SWEP.ReloadTime_Empty = 2.95
SWEP.ReloadHalt_Empty = 4

function SWEP:IndividualThink()
self.Owner.ViewAff = 0

	if not self.ActiveAttachments.am_slugroundsm37 then
	self:setBodygroup(self.SightBGs.main, self.SightBGs.on)
	else
	self:setBodygroup(self.SightBGs.main, self.SightBGs.off)
	end
	
	self.EffectiveRange = 30 * 39.37
	self.DamageFallOff = .75
	
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
	
	if self.ActiveAttachments.doi_atow_lugerlongbarrel then
	self.EffectiveRange = ((self.EffectiveRange + 5 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .03))
end
	if self.ActiveAttachments.cw_akimbo then
		self.ViewModelOffsetPos = Vector(0, 5, 0)
		self.ViewModelOffsetAng = Angle(0, 0, -20)
		self.ViewModelOffsetPos2 = Vector(0, 5, 0)
		self.ViewModelOffsetAng2 = Angle(0, 0, 20)
	end
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
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
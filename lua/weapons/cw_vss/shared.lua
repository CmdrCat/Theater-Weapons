AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("9x39MM", "9x39MM", 9, 39)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "VSS Vintorez"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.014
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/vss")
	killicon.Add("cw_vss", "vgui/killicons/vss", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 90 * 39.37
	SWEP.DamageFallOff_Orig = .15

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.83
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = -2}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/cw2/rifles/w_vss.mdl"
	SWEP.WMPos = Vector(1, -9, 1.2)
	SWEP.WMAng = Vector(0, 180, 180)

	SWEP.PSOPos = Vector(-2.304, 1.417, 0.402)
	SWEP.PSOAng = Vector(0, 0, 0)
		
	SWEP.SR3MPos = Vector(-2.494, -2.722, 1.157)
	SWEP.SR3MAng = Vector(1.098, 0, 0)

	SWEP.IronsightPos = Vector(-2.491, -2.954, 1.759)
	SWEP.IronsightAng = Vector(0.052, 0, 0)
	
	SWEP.KobraPos = Vector(-2.587, -3.539, 0.509)
	SWEP.KobraAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.527, -3.054, -0.385)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.541, -3.504, -0.233)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.517, -3.504, -0.166)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.CustomizePos = Vector(12.121, -4.907, -0.461)
	SWEP.CustomizeAng = Vector(17.232, 58.485, 19.311)
		
	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-2.021, -4.864, -1.122), [2] = Vector(0, 0, 0)}}

	SWEP.SightWithRail = true
	SWEP.PSO1AxisAlign = {right = 0, up = 0, forward = 90}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(0, 1, -1)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(-6.141, 19.972, 0) },
		["Bip01 L Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, -7.212, 0) },
		["Bip01 L UpperArm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 2.257, 21.444) },
		["Bip01 L Clavicle"] = {pos = Vector(-6.691, 4.309, 0.462), angle = Angle(0, 23.016, -25.094) },
		["Bip01 L Finger22"] = {pos = Vector(0, 0, 0), angle = Angle(0, 72.48, 0) },
		["Bip01 L Finger31"] = {pos = Vector(0, 0, 0), angle = Angle(0, -3.277, 0) },
		["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 78.357, 0) },
		["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, 22.827, 0) },
		["Bip01 L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(-5.815, -9.587, 0) },
		["Bip01 L Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(-9.544, 48.951, -5.665) },
		["Bip01 L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 62.164, 0) },
		["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(8.01, 3.112, -9.921) },
		["Bip01 L Finger12"] = {pos = Vector(0, 0, 0), angle = Angle(0, 24.069, 0) },
		["Bip01 L Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(-2.405, 32.501, 0) },
		["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(7.236, 22.563, 55.094) },
		["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 23.079, 0) },
		["Bip01 L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 48.407, 0) }
	}
	
	SWEP.ForeGripOffsetCycle_Reload = 0.75
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

	SWEP.BackupSights = {
		["md_kobra"] = {[1] = Vector(-4, 5, 0.5), [2] = Vector(0,0,-30)},
		["md_aimpoint"] = {[1] = Vector(-4, 5.5, 0.5), [2] = Vector(0,0,-30)},
		["md_schmidt_shortdot"] = {[1] = Vector(-4, 7.5, 0.5), [2] = Vector(0,0,-30)},
		["md_pso1"] = {[1] = Vector(-4, 7.5, 0.5), [2] = Vector(0,0,-30)}}
	
	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "Object01", pos = Vector(-0.234, -6.67, -2.567), angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "Object01", pos = Vector(-0.232, -0.908, 0.637), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "Object01", pos = Vector(0.09, -6.288, -1.887), angle = Angle(0, 180, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "Object01", pos = Vector(-0.32, -6.019, -2.675), angle = Angle(0, -90, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_kobra"] = {model = "models/cw2/attachments/kobra.mdl", bone = "Object01", pos = Vector(0.4, -0.965, -1.775), angle = Angle(0, 180, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_pbs1"] = {model = "models/cw2/attachments/pbs1.mdl", bone = "ak47_control", pos = Vector(0.001, 12.855, -1.339), angle = Angle(0, 180, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak47_control", pos = Vector(-0.403, -4.705, -3.195), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75)}
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 0.5, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}

	SWEP.BoltBone = "ak46_bolt"
	SWEP.BoltShootOffset = Vector(-2, 0, 0)
end

SWEP.MuzzleVelocity = 292 -- in meter/s

SWEP.MagBGs = {main = 4, round30 = 2, round20 = 1, regular = 0}
SWEP.VariantBGs = {main = 2, sr3m = 1, vss = 0}
SWEP.StockBGs = {main = 3, foldable = 1, vss = 0}
	
SWEP.LuaViewmodelRecoil = true

SWEP.Trivia = {text = "This unique marksman rifle has an integrated suppressor and is chambered in the subsonic 9×39mm cartridge, making every shot whisper-quiet.", x = -200, y = -650}

SWEP.Attachments = {[1] = {header = "Sight", offset = {1400, -500},  atts = {"md_kobra", "md_aimpoint", "md_schmidt_shortdot", "md_pso1"}},
	[2] = {header = "Magazine", offset = {0, 350},  atts = {"bg_asval_20rnd", "bg_asval_30rnd"}, dependencies = {bg_asval = true, bg_sr3m = true}},
	[3] = {header = "Variant", offset = {0, -550},  atts = {"bg_asval", "bg_sr3m"}},
	[4] = {header = "Stock", offset = {1400, -50}, atts = {"bg_vss_foldable_stock"}},
	[5] = {header = "Muzzle", offset = {0, -100}, atts = {"md_pbs1"}, dependencies = {bg_sr3m = true}},
	[6] = {header = "Front", offset = {800, -50}, atts = {"md_foregrip"}, dependencies = {bg_sr3m = true}},
	["+reload"] = {header = "Ammo", offset = {1400, 350}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"ak47_fire1", "ak47_fire2", "ak47_fire3"},
	reload = "ak47_reload",
	reload_empty = "ak47_reloadempty",
	idle = "ak47_idle",
	draw = "ak47_draw"}
	
SWEP.Sounds = {ak47_draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"},
	{time = 0.41, sound = "CW_VSS_BOLTBACK"},
	{time = 0.79, sound = "CW_VSS_BOLTFORWARD"}},

	ak47_reload = {{time = 0.4, sound = "CW_FOLEY_LIGHT"},
	{time = 0.7, sound = "CW_G3A3_HANDLE"},
	{time = 0.98, sound = "CW_VSS_MAGOUT"},
	{time = 1.4, sound = "CW_FOLEY_LIGHT"},
	{time = 2.1, sound = "CW_VSS_MAGIN"}},
	
	ak47_reloadempty = {{time = 0.4, sound = "CW_FOLEY_LIGHT"},
	{time = 0.7, sound = "CW_G3A3_HANDLE"},
	{time = 0.98, sound = "CW_VSS_MAGOUT"},
	{time = 1.4, sound = "CW_FOLEY_LIGHT"},
	{time = 2.1, sound = "CW_VSS_MAGIN"},
	{time = 2.5, sound = "CW_FOLEY_MEDIUM"},
	{time = 3.53, sound = "CW_VSS_BOLTBACK"},
	{time = 3.77, sound = "CW_VSS_BOLTFORWARD"},
	{time = 4, sound = "CW_FOLEY_LIGHT"}},
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Marksman Rifles"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/rifles/vss.mdl"
SWEP.WorldModel		= "models/cw2/rifles/w_vss.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 70
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x39MM"

SWEP.FireDelay = 60 / 900
SWEP.FireSound = "CW_VSS_FIRE"
SWEP.FireSoundSuppressed = "CW_VSS_FIRE"
SWEP.Recoil = 0.25

SWEP.SuppressedOnEquip = true

SWEP.HipSpread = 0.12
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 0.9
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 1.2

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 2.63
SWEP.ReloadTime_Empty = 3.92
SWEP.ReloadHalt = 3.6
SWEP.ReloadHalt_Empty = 4.7

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 90 * 39.37
self.DamageFallOff = .15
self.PrintName = "VSS Vintorez"
self.Trivia = {text = "This unique marksman rifle has an integrated suppressor and is chambered in the subsonic 9×39mm cartridge, making every shot whisper-quiet.", x = -200, y = -650}
if (self.ActiveAttachments.bg_asval) then
	self.EffectiveRange = ((self.EffectiveRange - 40 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .20))
	self.PrintName = "AS Val"
	self.Trivia = {text = "Select-fire, integrally suppressed assault rifle almost identical to the VSS Vintorez marksman rifle. Meant to be used with a 20-round magazine.", x = -200, y = -650}
	end
if (self.ActiveAttachments.bg_sr3m) then
	self.EffectiveRange = ((self.EffectiveRange - 30 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .33))
	self.PrintName = "SR-3M"
	self.Trivia = {text = "The SR-3M combines attributes of the SR-3, AS Val, and VSS Vintorez in a compact package.", x = -200, y = -650}
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
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"
	
	SWEP.EffectiveRange_Orig = 90 * 39.37
	SWEP.DamageFallOff_Orig = .35

	CustomizableWeaponry.shells:addNew("sfkm762r", "models/weapons/khrcw2/shells/762rshell.mdl", "CW_SHELL_MAIN")


if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Model 1895"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/1895")
	killicon.Add( "fp_win1895", "vgui/killicons/1895", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0
	
	SWEP.Shell = "sfkm762r"
	SWEP.ShellScale = 1
	SWEP.ShellDelay = .21
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0.5, y = -2, z = 2}
	
	SWEP.IronsightPos = Vector(-2.8, -5, 2.53)
	SWEP.IronsightAng = Vector(-.15, .025, 0)
	
	SWEP.PPCoPos = Vector(-1.045, -5, 2.36)
	SWEP.PPCoAng = Vector(0, 0, 0)

	SWEP.BackupSights = {
	["md_fp_1895scope"] = {[1] = Vector(-2.8, -5, 2.53), [2] = Vector(-.15, .025, 0)}}
	
	SWEP.SprintPos = Vector(5.618, -5.051, -5.026)
	SWEP.SprintAng = Vector(-0.704, 55.577, -14.775)
	
	SWEP.CustomizePos = Vector(13.5, -4, .5)
	SWEP.CustomizeAng = Vector(12, 45, 16)

	SWEP.AlternativePos = Vector(-1.3, 0, 0)
	SWEP.AlternativeAng = Vector(0, -.25, -4.518)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-55.8947, 55.0455, -16.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false

	SWEP.MaterialIndexPrimary = {0, 4}
	SWEP.MaterialIndexSecondary = {2, 3, 5, 6}

	SWEP.GoldenJusticeIndexWhite = {5, 6}
	SWEP.GoldenJusticeIndexBrass = {3, 4}
	SWEP.GoldenJusticeIndexRed = {2}

	/*
	0 = Bullet Casing
	1 = Unknown
	2 = Bullet
	3 = Chamber
	4 = Receiver and Barrel
	5 = Stock
	6 = Handguard
	*/
	
	SWEP.OverallMouseSens = .9
	SWEP.CustomizationMenuScale = 0.022
	SWEP.AttachmentModelsVM = {["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "body", rel = "", pos = Vector(-.82, -3.15, 15), angle = Angle(0, 180, -90), size = Vector(.7, .7, .7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_fp_1895scope"] = { type = "Model", model = "models/weapons/khrcw2/att/1895_scope.mdl", bone = "body", rel = "", pos = Vector(2.7, -5.9, -18.5), angle = Angle(90, -90, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },}
	
	SWEP.INS2AxisAlign = {right = 0, up = -0.01, forward = 0}
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 0, roll = 10, forward = 1, pitch = 1}
end

SWEP.ScopeBGs = {main = 2, off = 0, on = 1}
SWEP.BarrelBGs = {main = 1, long = 0, short = 1}
--SWEP.ShellsBGs = {main = 5, one = 4, two = 3, three = 2, four = 1, five = 0}

SWEP.MuzzleVelocity = 760

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Trivia = {text = "American lever-action rifle compatible with a plethora of cartridges. This model in particular was made for the Russian Empire.", x = -100, y = -600}

SWEP.Attachments = {
[2] = {header = "Optic", offset = {1050, -450}, atts = {"md_fp_1895scope"}},
[1] = {header = "Barrel", offset = {50, -450}, atts = {"md_fp_1895short", "md_saker"}},
[3] = {header = "Signature Attachment", offset = {1550, 300}, atts = {"md_goldenjustice"}},
[4] = {header = "Skins", offset = {1200, 0}, atts = {"md_skinburger", "md_skincheckered", "md_skindonut", "md_skinmicrochip", "md_skinmosaic", "md_skinnoir","md_skinrunes", "md_skinyellowjacket"}},
["+reload"] = {header = "Ammo", offset = {-200, 300}, atts = {"am_35winchester", "am_3006", "am_3003", "am_3040", "am_303brit", "am_792x57", "am_3872", "am_4072", "am_405winchester", "am_snakeshot"}},
}

SWEP.AttachmentExclusions = {
	["md_fp_1895short"] = {"md_goldenjustice"},
	["md_saker"] = {"md_goldenjustice"},
	["am_35winchester"] = {"md_goldenjustice"},
	["am_3006"] = {"md_goldenjustice"},
	["am_3003"] = {"md_goldenjustice"},
	["am_3040"] = {"md_goldenjustice"},
	["am_303brit"] = {"md_goldenjustice"},
	["am_792x57"] = {"md_goldenjustice"},
	["am_3872"] = {"md_goldenjustice"},
	["am_4072"] = {"md_goldenjustice"},
	["am_405winchester"] = {"md_goldenjustice"},
	["am_snakeshot"] = {"md_goldenjustice"}}

SWEP.Animations = {fire = "fireironfull",
	fire_aim = "fireironfull",
	fire_last_aim = "firefulllast",
	fire_last = "firefulllast",
	reload_start = "reloadstart",
	insert = "reload",
	reload_end = "reloadend",
	reload = "reloadclip",
	reload_empty = "reloadclip",
	idle = "reloadend",
	draw = "draw"}
	

SWEP.SpeedDec = 35
SWEP.ADSSpeedMult = {
standing = .85
}

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"leveract"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Marksman Rifles"

SWEP.Author			= "Khris"
SWEP.Contact		= "https://steamcommunity.com/id/khrissyk/"
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 63
SWEP.AimViewModelFOV = 60
SWEP.ZoomAmount = 10
SWEP.FOVPerShot = 0
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/khrcw2/win1895.mdl"
SWEP.WorldModel		= "models/weapons/khrcw2/w_win1895.mdl"


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false


SWEP.FireDelay = 60/150
SWEP.FireSound = "FP1895_FIRE"
SWEP.FireSoundSuppressed = "FP1895_FIRESUP"
SWEP.Recoil = 1.5


SWEP.HipSpread = 0.065
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.75
SWEP.MaxSpreadInc = 0.076
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.4
SWEP.Shots = 1
SWEP.Damage = 145
SWEP.DeployTime = .65
SWEP.HolsterTime = .15

SWEP.ADSFireAnim = true
SWEP.Chamberable = false
SWEP.ShotgunReload = true

SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.ReloadStartTime = .57
SWEP.InsertShellTime = .85
SWEP.ReloadFinishWait = .6

SWEP.ReloadSpeed = 1.75
SWEP.ReloadTime = 1.6
SWEP.ReloadHalt = 2.6
SWEP.ReloadTime_Empty = 1.6
SWEP.ReloadHalt_Empty = 2.6

function SWEP:IndividualThink()
	self.EffectiveRange = 90 * 39.37
	self.DamageFallOff = .35

	if self.ActiveAttachments.am_792x57 then
		self.EffectiveRange = self.EffectiveRange + 10 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.05
	end

	if self.ActiveAttachments.am_3003 then
		self.EffectiveRange = self.EffectiveRange - 45 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.15
	end
	
	if self.ActiveAttachments.am_3040 then
		self.EffectiveRange = self.EffectiveRange - 55 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.2
	end

	if self.ActiveAttachments.am_303brit then
		self.EffectiveRange = self.EffectiveRange - 60 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.1
	end

	if self.ActiveAttachments.am_35winchester then
		self.EffectiveRange = self.EffectiveRange - 60 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.17
	end

	if self.ActiveAttachments.am_3872 then
		self.EffectiveRange = self.EffectiveRange - 70 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.3
	end

	if self.ActiveAttachments.am_405winchester then
		self.EffectiveRange = self.EffectiveRange - 75 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.5
	end

	if self.ActiveAttachments.md_goldenjustice then
		self.EffectiveRange = self.EffectiveRange - 15 * 39.37
		self.DamageFallOff = self.DamageFallOff - 1.35
	end
	
	if self.ActiveAttachments.md_fp_1895short then
		self.EffectiveRange = ((self.EffectiveRange * .6))
	end

	if self.ActiveAttachments.am_3006 then
		self.EffectiveRange = self.EffectiveRange - 50 * 39.37
		self.DamageFallOff = self.DamageFallOff - 0.05
	end

	if self.ActiveAttachments.am_4072 then
		self.EffectiveRange = self.EffectiveRange - 70 * 39.37
		self.DamageFallOff = self.DamageFallOff + 0.35
	end

	if self.ActiveAttachments.am_3006 then
		self.bulletCallback = function( att, tr, dmg )
			if tr.HitGroup == HITGROUP_HEAD then
				dmg:ScaleDamage( 1.0 )
			end
		end
	elseif self.ActiveAttachments.am_4072 then
		self.bulletCallback = function( att, tr, dmg )
			if tr.HitGroup == HITGROUP_HEAD then
				dmg:ScaleDamage( 0.75 )
			end
		end
	else
		self.bulletCallback = nil -- 
	end

end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 2.1
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

//*/

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
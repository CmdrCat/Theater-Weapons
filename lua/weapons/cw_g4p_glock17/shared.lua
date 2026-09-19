if CustomizableWeaponry then

SWEP.magType = "pistolMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Glock 17"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/glock17")
	killicon.Add("cw_g4p_glock17", "vgui/killicons/glock17", Color(255, 120, 40, 0))
	
	SWEP.EffectiveRange_Orig = 30 * 39.37
	SWEP.DamageFallOff_Orig = .75
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	
	SWEP.DryFire = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}
	
	SWEP.CustomizePos_Orig = Vector(-3.8, -3.6, -2.8)
	SWEP.CustomizeAng_Orig = Vector(16.6, -28.4, -2.6)

	SWEP.CustomizePos = Vector(-3.8, -3.6, -2.8)
	SWEP.CustomizeAng = Vector(16.6, -28.4, -2.6)

	SWEP.CustomizePos_Akimbo = Vector(0, -5.511, -7.283)
	SWEP.CustomizeAng_Akimbo = Vector(37.627, 0, 0)

	SWEP.MicroT1Pos = Vector(-2.115, -2.8, 0.04)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.08, -2.8, 0.13)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.DocterPos = Vector(2.01, 5, 0.65)
	SWEP.DocterAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(2.01, 5, 1.03)
	SWEP.IronsightAng = Vector(0.2, 0, 0)

	SWEP.HoodPos = Vector(2.01, 5, 1.03)
	SWEP.HoodAng = Vector(0.2, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.247, -6.5, -0.602)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.88, 1.325, -0.561)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.BackupSights = {["md_docter"] = {[1] = Vector(4.25, 5, -2.1), [2] = Vector(5, 0, 30)}}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	SWEP.BoltBonePositionRecoverySpeed = 25 -- how fast does the bolt bone move back into it's initial position after the weapon has fired
	
	SWEP.BaseArm = "Bip01 L UpperArm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)

	SWEP.AttachmentModelsVM = {
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "Glock18", rel = "", pos = Vector(0, -2.241, 0.899), angle = Angle(0, -90, 180), size = Vector(0.3, 0.3, 0.3), color = Color(255, 255, 255, 255)},
		["md_docter"] = { type = "Model", model = "models/wystan/attachments/2octorrds.mdl", bone = "Glock18 Slide", rel = "", pos = Vector(0.246, 10.06, 0.426), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_tundra9mm"] = { type = "Model", model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "Glock18 Barrel", rel = "", pos = Vector(0, -6.35, 0.779), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},		["md_csgo_taclight"] = { type = "Model", model = "models/kali/weapons/csgo/eq_taclight_pistol.mdl", bone = "gun", rel = "", pos = Vector(0.039, 4.3, -2.76), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},
		["md_csgo_silencer_pistol"] = { type = "Model", model = "models/kali/weapons/csgo/eq_suppressor_pistol.mdl", bone = "Glock18 Barrel", rel = "", pos = Vector(0, 6.329, -3.901), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},	
		["md_csgo_taclight"] = { type = "Model", model = "models/kali/weapons/csgo/eq_taclight_pistol.mdl", bone = "Glock18", rel = "", pos = Vector(0, 4.38, -3.12), angle = Angle(0, 90, 0), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255)},
		["md_tcw_9mm_33rnd"] = { type = "Model", model = "models/weapons/v_tfa_vector.mdl", bone = "Glock18 Magazine", rel = "", pos = Vector(-2.030, 20.05, 2.090), angle = Angle(0, 90, 0), size = Vector(0.74, 0.74, 0.74), color = Color(255, 255, 255, 255)},
	}
	
	SWEP.HoldBoltWhileEmpty = true
	SWEP.DontHoldWhenReloading = true
	SWEP.BoltBone = "Glock18 Slide"
	SWEP.BoltShootOffset = Vector(-1.25, 0, 0)

	SWEP.MagBoneName = "Glock18 Magazine"
	SWEP.BulletBoneName = "Glock18 Bullet"
	
	SWEP.LaserPosAdjust = Vector(0.2, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
end

SWEP.BarrelBGs = {main = 1, regular = 0, compensator = 1, extended = 2}
SWEP.LuaViewmodelRecoil = true
SWEP.CanRestOnObjects = false

SWEP.Trivia = {text = "An extremely popular handgun found in the hands of soldiers, police officers, civilians, and criminals.", x = -600, y = -600}

SWEP.ForegripOverride = true

SWEP.ForegripOverridePos = {
    ["onehand"] = {
        ["Bip01 L UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -10), angle = Angle(0, 0, 0) }},
	["akimbo"] = {
        ["Bip01 L UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -30), angle = Angle(0, 0, 0) }},
    ["nah"] = {
        ["Bip01 L UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
}

SWEP.Attachments = {[1] = {header = "Sight", offset = {500, -500}, atts = {"md_docter"}},
[2] = {header = "Muzzle", offset = {-900, -200}, atts = {"md_tundra9mm", "md_csgo_silencer_pistol"}},
[3] = {header = "Rail", offset = {-700, 200}, atts = {"md_anpeq15", "md_csgo_taclight"}},
[4] = {header = "Magazine", offset = {-200, 200}, atts = {"md_tcw_9mm_33rnd"}},
[5] = {header = "Technique", offset = {-450, -500}, atts = {"doi_atow_onehand", "cw_akimbo"}},
[6] = {header = "Signature Attachment", offset = {550, 300}, atts = {"uecw_glock_switch"}},
["+reload"] = {header = "Ammo", offset = {200, -175}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = "shoot_1",
	fireDry = "shoot_last",
	reload = "glock_reload",
	reload_empty = "glock_reload",
	idle = "glock_idle",
	draw = "glock_draw"}

SWEP.Animations_Akimbo = {fire = "shoot_1",
	fireDry = "shoot_last",
	reload = "glock_reload",
	reload_empty = "glock_reload",
	idle = "glock_idle",
	draw = "glock_draw",
	fire_right = "shoot_1",
	fireDry_right = "shoot_last",
	reload_right = "glock_reload",
	reload_empty_right = "glock_reload",
	idle_right = "glock_idle",
	draw_right = "glock_draw"}
	
SWEP.Sounds = {glock_reload = {[1] = {time = 0.4, sound = "CW_GLOCK17_MAGOUT"},
	[2] = {time = 1.5, sound = "CW_GLOCK17_MAGIN"},
	[3] = {time = 2.1, sound = "CW_GLOCK17_SLIDE"}},
	
	glock_draw = {[1] = {time = 0.1, sound = "CW_GLOCK17_DRAW"}}}

SWEP.SpeedDec = 5

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Pistols"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/weapons/v_pist_glock17.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_glock18.mdl"

SWEP.ViewModel_AkimboL = "models/weapons/v_pist_glock17.mdl"
SWEP.ViewModel_AkimboR = "models/weapons/v_pist_glock17.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 17
SWEP.Primary.DefaultClip	= 119
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_GLOCK17_FIRE"
SWEP.FireSoundSuppressed = "CW_GLOCK17_FIRE_SUPPRESSED"
SWEP.Recoil = 0.75

SWEP.HipSpread = 0.01
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 0.15
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 32
SWEP.DeployTime = 1
SWEP.Chamberable = false

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3
SWEP.ReloadHalt = 3
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3
SWEP.SnapToIdlePostReload = true

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 30 * 39.37
self.DamageFallOff = .75
self.HoodPos = Vector(2.01, 5, 1.03)
self.HoodAng = Vector(0.2, 0, 0)
self.DocterPos = Vector(2.01, 5, 0.65)
self.DocterAng = Vector(0, 0, 0)
if self.ActiveAttachments.doi_atow_onehand then
	self.HoodPos = Vector(0.402, 5, 1.206)
	self.HoodAng = Vector(2.111, 0.704, 62.613)
	self.DocterPos = Vector(2.01, 5, 0.65)
	self.DocterAng =  Vector(0, 0, 90)
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
if self.ActiveAttachments.md_csgo_silencer_pistol then
	self.EffectiveRange = ((self.EffectiveRange * 0.85))
end
if self.ActiveAttachments.cw_akimbo then
	self.ViewModelOffsetPos = Vector(-1, 5, -0.5)
	self.ViewModelOffsetAng = Angle(0, 0, -30)
	self.ViewModelOffsetPos2 = Vector(-3, 5, -0.5)
	self.ViewModelOffsetAng2 = Angle(0, 0, 30)
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
-- decided to give it an "_official" suffix because there may be a lot more m249s out there

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M249"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.CustomizationMenuScale = 0.014
	
	SWEP.IconLetter = "i"
	SWEP.SelectIcon = surface.GetTextureID("vgui/m249")
	killicon.Add("cw_m249_official", "vgui/killicons/m249", Color(255, 120, 40, 0))

	SWEP.EffectiveRange_Orig = 60 * 39.37
	SWEP.DamageFallOff_Orig = .1

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0.8
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.93
	SWEP.FireMoveMod = 0.6
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/cw2_0_mach_para.mdl"
	SWEP.WMPos = Vector(-1.5, 2, 0.5)
	SWEP.WMAng = Vector(0, 0, 180)
	
	SWEP.IronsightPos = Vector(-2.05, -1.964, 0.972)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.05, -0.993, -0.093)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.043, -2.5, 0.115)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-2.043, -0.993, 0.236)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.02, -2.869, -0.124)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.02, -2.869, 0.123)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	SWEP.BackupSights = {
		["md_microt1"] = {[1] = Vector(-3.1, 5, 0.5), [2] = Vector(0,0,-30)},
		["md_aimpoint"] = {[1] = Vector(-3.1, 3.5, 0.5), [2] = Vector(0,0,-30)},
		["md_schmidt_shortdot"] = {[1] = Vector(-3.2, 4, 0.5), [2] = Vector(0,0,-30)},
		["md_acog"] = {[1] = Vector(-2.02, 5, -1.132), [2] = Vector(0, 0, 0)}}

	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0.03, up = 0, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(-0.2, 0, -0.4)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "LidCont", pos = Vector(-0.427, -8.511, -4.505), angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},

		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "Weapon", pos = Vector(0.014, 3.732, 1.504), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "LidCont", pos = Vector(-0.51, -8.903, -4.573), angle = Angle(0, 0, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "LidCont", pos = Vector(-0.181, -4.047, 0.69), angle = Angle(0, 180, 0), size = Vector(0.4, 0.4, 0.4)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "Weapon", pos = Vector(0.138, 6.619, 0.601), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), bodygroup = {[1] = 1}},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "LidCont", pos = Vector(-0.515, -9.205, -4.549), angle = Angle(0, -90, 0), size = Vector(0.899, 0.899, 0.899)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "Weapon", pos = Vector(10.583, 5.614, -0.951), angle = Angle(0, -90, 0), size = Vector(0.699, 0.699, 0.699)}
	}

	SWEP.ForeGripHoldPos = {
		["L Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(13.88, 90.466, 18.638) },
		["l_upperarm"] = {pos = Vector(0, 0, 0), angle = Angle(18.875, 0, 0) },
		["L Finger12"] = {pos = Vector(0, 0, 0), angle = Angle(0, 28.931, 0) },
		["L Clavicle"] = {pos = Vector(0, 4.344, 0), angle = Angle(-49.645, 0, -11.665) },
		["L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(16.122, 18.378, 43.624) },
		["L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(0.972, 44.411, 13.453) },
		["L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 26.996, 0) },
		["L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(11.201, -6.533, -19.001) },
		["L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 78.379, 0) },
		["L UpperArm"] = {pos = Vector(-12.985, -0.987, -0.308), angle = Angle(0, 31.971, 6.557) },
		["L Finger22"] = {pos = Vector(0, 0, 0), angle = Angle(0, 43.025, 0) },
		["L Finger41"] = {pos = Vector(0, 0, 0), angle = Angle(0, -20.861, 0) },
		["L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 73.864, 0) },
		["L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(-8.929, 26.59, 0) },
		["L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 53.505, 0) },
		["L Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(3, 69.235, 21.884) },
		["L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(0, -20.979, 0) },
		["L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, -19.306, 0) }
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1, roll = 1, forward = 1, pitch = 1}
	
	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.OverallMouseSens = 0.7
end

SWEP.MuzzleVelocity = 915

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true

SWEP.Trivia = {text = "A US army's light machine gun of choice, the M249 has seen combat in a plethora of conflicts.", x = -300, y = -450}

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -300},  atts = {"md_microt1", "md_aimpoint", "md_schmidt_shortdot", "md_acog"}},
	[2] = {header = "Muzzle", offset = {-500, -300}, atts = {"md_saker"}},
	[3] = {header = "Handguard", offset = {-500, 150}, atts = {"md_foregrip", "md_bipod"}},
	["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
	reload_empty = "reload2",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0.1, sound = "CW_FOLEY_LIGHT"},
	{time = 0.65, sound = "CW_M249_OFFICIAL_BOLTBACK"},
	{time = 0.82, sound = "CW_M249_OFFICIAL_BOLTRELEASE"}},

	reload = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 0.85, sound = "CW_M249_OFFICIAL_COVEROPEN"},
	{time = 1.8, sound = "CW_M249_OFFICIAL_MAGOUT"},
	{time = 2.1, sound = "CW_FOLEY_LIGHT"},
	{time = 2.62, sound = "CW_M249_OFFICIAL_MAGDRAW"},
	{time = 4, sound = "CW_M249_OFFICIAL_MAGIN"},
	{time = 4.2, sound = "CW_FOLEY_LIGHT"},
	{time = 4.65, sound = "CW_M249_OFFICIAL_BULLETIN"},
	{time = 5.2, sound = "CW_FOLEY_LIGHT"},
	{time = 5.9, sound = "CW_M249_OFFICIAL_COVERCLOSE"},
	{time = 6.7, sound = "CW_FOLEY_LIGHT"}},
	
	reload2 = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 0.8, sound = "CW_M249_OFFICIAL_BOLTBACK"},
	{time = 1, sound = "CW_M249_OFFICIAL_BOLTRELEASE"},
	{time = 2.53, sound = "CW_M249_OFFICIAL_COVEROPEN"},
	{time = 3.58, sound = "CW_M249_OFFICIAL_MAGOUT"},
	{time = 3.9, sound = "CW_FOLEY_LIGHT"},
	{time = 4.3, sound = "CW_M249_OFFICIAL_MAGDRAW"},
	{time = 5.9, sound = "CW_M249_OFFICIAL_MAGIN"},
	{time = 6.2, sound = "CW_FOLEY_LIGHT"},
	{time = 6.52, sound = "CW_M249_OFFICIAL_BULLETIN"},
	{time = 7.6, sound = "CW_M249_OFFICIAL_COVERCLOSE"},
	{time = 8.3, sound = "CW_FOLEY_LIGHT"}}}

SWEP.SpeedDec = 50

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Machine Guns"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/machineguns/m249.mdl"
SWEP.WorldModel		= "models/weapons/cw2_0_mach_para.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 200
SWEP.Primary.DefaultClip	= 420
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60 / 850
SWEP.FireSound = "CW_M249_OFFICIAL_FIRE"
SWEP.FireSoundSuppressed = "CW_M249_OFFICIAL_FIRE_SUPPRESSED"
SWEP.Recoil = 0.5

SWEP.HipSpread = 0.14
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 30
SWEP.DeployTime = 2

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 5
SWEP.ReloadTime_Empty = 6.2
SWEP.ReloadHalt = 7.3
SWEP.ReloadHalt_Empty = 8.9
SWEP.NearWallDistance = 35

SWEP.Chamberable = false

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 60 * 39.37
self.DamageFallOff = .1
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

if CLIENT then
	SWEP.RoundBeltBoneNames = {
		"SAW_BULLET_MAIN",
		"SAW_BULLET_00",
		"SAW_BULLET_02",
		"SAW_BULLET_03",
		"SAW_BULLET_04",
		"SAW_BULLET_05",
		"SAW_BULLET_06",
		"SAW_BULLET_07",
		"SAW_BULLET_08",
		"SAW_BULLET_09",
		"SAW_BULLET_10",
		"SAW_BULLET_11",
		"SAW_BULLET_12",
		"SAW_BULLET_13",
		"SAW_BULLET_14",
		"SAW_BULLET_15"
	}
	
	local function removeRoundMeshes(wep) -- we hide all rounds left in the belt on a non-empty reload because if we don't we're left with ghost meshes moving around (bullets with no link to the mag get moved back to it)
		wep:adjustVisibleRounds(0)
	end
	
	local function adjustMeshByMaxAmmo(wep)
		wep:adjustVisibleRounds(wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1())
	end
	
	SWEP.animCallbacks = {
		reload = removeRoundMeshes
	}
	
	SWEP.Sounds.reload[5].callback = adjustMeshByMaxAmmo
	SWEP.Sounds.reload2[7].callback = adjustMeshByMaxAmmo
end

function SWEP:IndividualInitialize()
	if CLIENT then
		self:initBeltBones()
	end
end

function SWEP:initBeltBones()
	local vm = self.CW_VM
	self.roundBeltBones = {}

	for key, boneName in ipairs(self.RoundBeltBoneNames) do
		local bone = vm:LookupBone(boneName)
		self.roundBeltBones[key] = bone
	end
end

function SWEP:postPrimaryAttack()
	if CLIENT then
		self:adjustVisibleRounds()
	end
end

function SWEP:beginReload()
	self.BaseClass.beginReload(self)
	
	if CLIENT then
		self:adjustVisibleRounds(0)
	end
end

local fullSize = Vector(1, 1, 1)
local invisible = Vector(0, 0, 0)

function SWEP:adjustVisibleRounds(curMag)
	if not self.roundBeltBones then
		self:initBeltBones()
	end
	
	local curMag = curMag or self:Clip1()
	local boneCount = #self.roundBeltBones
	local vm = self.CW_VM
	
	for i = 1, boneCount do
		local roundID = boneCount - (i - 1)
		local element = self.roundBeltBones[roundID]
		
		local scale = curMag >= roundID and fullSize or invisible
		vm:ManipulateBoneScale(element, scale)
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
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo(".300BL", ".300BL", 5, 56)


if CLIENT then
	SWEP.UseHands = true
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Honey Badger"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/entities/cwr_mwii_chimera")
	killicon.Add( "cwr_mwii_chimera", "vgui/entities/cwr_mwii_chimera", Color(255, 0, 0, 0))
	
	SWEP.EffectiveRange_Orig = 35 * 39.37
	SWEP.DamageFallOff_Orig = .6

	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	
	SWEP.IronsightPos = Vector(-3.881, -6.697, 0.57)
	SWEP.IronsightAng = Vector(-0.071, 0, 0)
	
	SWEP.SprintPos = Vector(-0.12, 0, -0.281)
	SWEP.SprintAng = Vector(-32.262, 23.718, -19.75)
	
	SWEP.AlternativePos = Vector(-1.2, -1, -1)
	SWEP.AlternativeAng = Vector(0, 0, -3.2)
	

	SWEP.ForegripOverride = false
	
	
	
	--grip pos temp


	SWEP.ForeGripHoldPos ={

	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -91.394, -9.188) },
	["ValveBiped.Bip01_L_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 31.198, 0) },
	["ValveBiped.Bip01_L_Wrist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(1.042, 2.273, 47.979) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 54.008, 0) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.848, 17.878, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(20.016, 0, 0) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-0.23, -0.151, 0.072), angle = Angle(-7.982, 0, 17.104) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10.685, -90.082, 0.114) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-27.088, -9.834, 23.35) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 35.722, 12.411) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(11.065, -30.548, 3.279) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.602, 2.115, 0.771), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(55.506, 26.379, 56.518) }

	}

	SWEP.ForegripOverridePos = {

		["default"] = {},

		["bruentiltgrip_r"] = {

			["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.779, -99.022, 0) },
	["ValveBiped.Bip01_L_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.178, 21.745, 0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(26.627, 31.347, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(22.989, 0, 0) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 11.553, 0) },
	["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.506, 12.52, -5.115) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12.603, -1.793, -16.84) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(12.43, -83.348, 0) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(22.438, -33.075, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.323, 1.94, -1.473), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-36.724, 13.725, 28.129) },
		}, 


		
    ["ftactiger_r"] = {

		["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-15.707, 14.685, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-4.345, -2.052, 22.045) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(12.138, 16.212, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.445, 1.741, 0.386), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-3.083, -16.312, 0) }

	},

    

	}


	

	
	SWEP.AttachmentModelsVM = {
		["corioenforcer"] = { type = "Model", model = "models/shared/optics/r_corio_enforcer.mdl", bone = "weapon", rel = "", pos = Vector(0.095, -2.302, 0.372), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", rel = "", pos = Vector(0, 1.3, -4.159), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "weapon", rel = "", pos = Vector(0, -1.7, 18.5), angle = Angle(90, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ftacgrimline"] = { type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.757, 6.651), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["saphoenix"] = { type = "Model", model = "models/shared/wparts/chimera/cw_reshed_att_saphoenix.mdl", bone = "weapon", rel = "", pos = Vector(3.854, -4.335, -13.978), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["xrkonpoint"] = { type = "Model", model = "models/shared/optics/r_xrkonpoint.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.741, 1.863), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["cronenzerop"] = { type = "Model", model = "models/shared/optics/r_cronenzerop.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.741, 1.863), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["szbattleoptic"] = { type = "Model", model = "models/shared/optics/r_sz_battleoptic.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.741, 1.863), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.583, 7.691), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "weapon", rel = "", pos = Vector(0, -0.498, 8.218), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(0.013, -2.981, 1.794), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(-0.306, 3.473, -5.574), angle = Angle(0, 0, -90), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(0.388, 1.842, 19.357), angle = Angle(180, 0, -90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		
	}


	SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
	SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.AngelPosAdjust = Vector(-1, 0, 1)
	SWEP.AngelAngAdjust = Angle(0, 0, 0)
	
	-- Sight Pos Optic

	SWEP.ZEROPos = Vector(-3.881, -7.206, 0.239)
    SWEP.ZEROAng = Vector(0, 0, 0)


	SWEP.BATPos = Vector(-3.881, -7.206, 0.119)
    SWEP.BATAng = Vector(0, 0, 0)

    SWEP.POINTPos = Vector(-3.881, -6.551, 0.8)
    SWEP.POINTAng = Vector(0, 0, 0)

	SWEP.ANGELPos = Vector(-3.881, -6.378, 0.2)
    SWEP.ANGELAng = Vector(0, 0, 0)

	SWEP.ENFORPos = Vector(-3.881, -6.145, 0.439)
	SWEP.ENFORAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-3.881, -7.094, 0.402)
	SWEP.MicroT1Ang = Vector(0,0,0)


	SWEP.AimpointPos = Vector(-3.892, -6, 0.379)
	SWEP.AimpointAng = Vector(0,0,0)

	SWEP.BackupSights = {
	["md_microt1"] = {[1] = Vector(-5.841, 0, -0.04), [2] = Vector(0,0, -30)},
	["xrkonpoint"] = {[1] = Vector(-5.841, 0, -0.04), [2] = Vector(0,0, -30)},
	["md_aimpoint"] = {[1] = Vector(-5.841, 0, -0.04), [2] = Vector(0,0, -30)},
	["szbattleoptic"] = {[1] = Vector(-5.841, 0, -0.04), [2] = Vector(0,0, -30)},
	["corioenforcer"] = {[1] = Vector(-5.841, 0, -0.04), [2] = Vector(0,0, -30)},
	["cronenzerop"] = {[1] = Vector(-5.841, 0, -0.04), [2] = Vector(0,0, -30)}
	}

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.SightBGs = {main = 5 , on = 0 , none = 1}
SWEP.BarrelBGs = {main = 3 , regular = 0 , none = 1}
SWEP.StockBGs = {main = 2 , regular = 0 , none = 1}
SWEP.FrontBGs = {main = 6 , fs = 0 , none = 3}





SWEP.Attachments = {
	

	{header = "Optic", offset = {950 , -600},  atts = {"md_microt1","xrkonpoint","md_aimpoint","szbattleoptic","corioenforcer","cronenzerop"}},
	{header = "Tac - Top", offset = {320 , -200},  atts = {"ftacgrimline",}, exclusions = {shroudhg = true}},
	{header = "Muzzle", offset = {-450 , -400},  atts = {"md_saker","hard20"}, dependencies = {saphoenix = true}},
	{header = "Bottom Rail", offset = {-650 , 100},  atts = {"bruentiltgrip_r", "ftactiger_r","md_foregrip"}},
	{header = "Handguard", offset = {220 , 250},  atts = {"saphoenix"}},
	{header = "Frontsights", offset = {-100 , 450},  atts = {"nofs2"}},
	{header = "Magazine", offset = {970, 400},  atts = {"md_uecw_emag"}},
	["+reload"] = {header = "Ammo", offset = {900, -100}, atts = {"am_magnum", "am_matchgrade",}}

}

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0.1, roll = 0.1, forward = 0.1, pitch = -0.1}

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

SWEP.Animations = {

	fire = "fire",
	inspect_30 = "inspect_30",
	fire_aim = "fire_iron",
	fire_last = "fire_empty",
	fire_last_aim = "fire_empty",
	reload = "reload_30",
	reload_empty = "reload_empty",
	draw = "draw",
}
	
SWEP.Sounds = {

	reload_30 = {
		{time = 0, sound = "weapons/r_mw/chimera/raise.wav"},
		{time = 0.55, sound = "weapons/r_mw/chimera/magout.wav"},
		{time = 0.85, sound = "weapons/r_mw/chimera/magin.wav"},
		{time = 1.3, sound = "weapons/r_mw/chimera/drop.wav"},
	},

	reload_empty = {
		{time = 0, sound = "weapons/r_mw/chimera/raise.wav"},
		{time = 0.22, sound = "weapons/r_mw/chimera/magout_empty.wav"},
		{time = 1.38, sound = "weapons/r_mw/chimera/magin_empty.wav"},
		{time = 1.9, sound = "weapons/r_mw/chimera/boltcatch.wav"},
	},

	inspect_30 = {
		{time = 0, sound = "weapons/r_mw/chimera/drop.wav"},
		{time = 1.8, sound = "weapons/r_mw/chimera/inspect_magout.wav"},
		{time = 3.65, sound = "weapons/r_mw/chimera/inspect_magin.wav"},
		{time = 4.25, sound = "weapons/r_mw/chimera/raise.wav"},

	}
}

SWEP.SpeedDec = 20

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Assault Rifles/Carbines"

SWEP.Author			= "reshed"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.AimViewModelFOV = 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw_r_mw/cw_reshed_chimera.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 5000
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ".300BL"

SWEP.FireDelay = 60 / 800
SWEP.FireSound = "MWII_CHIMERA_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "MWII_CHIMERA_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05


--awebo

SWEP.AimMobilitySpreadMod = 0.1
SWEP.VelocitySensitivity = 0.45

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.005
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 35
SWEP.DeployTime = 0.6
SWEP.OverallMouseSens = 1.25

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadHalt = 2.3
SWEP.ReloadTime_Empty = 2.65
SWEP.ReloadHalt_Empty = 2.65

SWEP.SnapToIdlePostReload = false

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()
self.EffectiveRange = 35 * 39.37
self.DamageFallOff = .6
end

SWEP.InspectAnim = "inspect_30" -- Needs to be in self.Animations
SWEP.InspectTime = 0
DEFINE_BASECLASS( "cw_base" )

function SWEP:Think()
    BaseClass.Think( self )
    if CLIENT and self:GetOwner():KeyDown( IN_USE ) and self:GetOwner():KeyDown( IN_WALK ) and self.InspectTime < CurTime() then
        local prevForegrip = self.ForegripParent
        self.ForegripParent = "default"
        self:playAnim( self.InspectAnim )

        local _, sequenceTime = self.CW_VM:LookupSequence( self.Animations[self.InspectAnim] )
        self.InspectTime = CurTime() + sequenceTime

		timer.Simple(self:SequenceDuration(self:LookupSequence(self.InspectAnim)) - 1.9, function()
			self.ForegripParent = prevForegrip
		  end)
    end

	if self.dt.State == CW_AIMING then
		self.LuaVMRecoilAxisMod = {vert = 0, hor = 0.125, roll = 0.1, forward = -0.1, pitch = -0.1}
		self.ViewModelMovementScale = 15
	else
		self.LuaVMRecoilAxisMod = {vert = 0.1, hor = 0.1, roll = 0.1, forward = 0.5, pitch = 0.5}
		self.ViewModelMovementScale = 1
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

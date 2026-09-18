if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "smgMag"
		CustomizableWeaponry.shells:addNew("khr9x19", "models/khrcw2/doipack/shells/45acp.mdl", "CW_SHELL_SMALL")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Sten Gun"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_sten_mk2")
	killicon.Add( "doi_atow_sten", "vgui/inventory/killicons/weapon_sten_mk2", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_suppressed"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.715
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.775
	
	SWEP.EffectiveRange_Orig = 40 * 39.37
	SWEP.DamageFallOff_Orig = .55
	
	SWEP.Shell = "khr9x19"
	SWEP.ShellScale = 1.25
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2.25, y = -1, z = 0}

	SWEP.IronsightPos = Vector(-2.615, -1.25, 2.03)
	SWEP.IronsightAng = Vector(-0.4089, -0.0389, 9)
	
	SWEP.AltIronPos = Vector(-2.6145, -1, 2.0422)
	SWEP.AltIronAng = Vector(-0.3089, -0.0389, 9)

	SWEP.FrankIronPos = Vector(-3.8, 0.5, 1.5)
	SWEP.FrankIronAng = Vector(0, 0, -43)

	SWEP.FrankReflexPos = Vector(-2.459, 0.5, 1.063)
	SWEP.FrankReflexAng = Vector(0, 0, 2.2)

	SWEP.ReflexPos = Vector(-2.4, -3, 0.65)
    SWEP.ReflexAng = Vector(-0.4089, -0.0389, 9)
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-15.478, 20.96, -15)
	
	SWEP.CustomizePos = Vector(10, -4, -2)
	SWEP.CustomizeAng = Vector(20, 45, 12)

	SWEP.AlternativePos = Vector(-0.5682, .5, .3)
	SWEP.AlternativeAng = Vector(-0.4089, -0.0389, 8)
	
    SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-30.8947, 33.0455, -10.2273)
	
    SWEP.GrimlinePosAdjust = Vector(1, 0, 0)
    SWEP.GrimlineAngAdjust = Angle(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(3.4, 21, -2.2)
	SWEP.LaserAngAdjust = Angle(0, 0, 0)

	SWEP.PronePos = Vector(0, 0, -2.1579)
	SWEP.ProneAng = Vector(-2, 12.7368, -8.9474)

	SWEP.StockBoneName = "A_Stock"
	SWEP.BoltBoneName = "Bolt"

	SWEP.BackupSights = {
		["md_reflex"] = {[1] = Vector(-4, -2, 1), [2] = Vector(0,0,-45)},
	}
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.0165 --  0.02
	
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = .3, forward = .2, pitch = 0}

	SWEP.AttachmentModelsVM = {
		--sights
		["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "weapon", pos = Vector(-3.825, 1, 2), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "weapon", rel = "", pos = Vector(-3.6, 3, 4.1), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 0)},
		--laser 
		["ins2_atow_clamplaser"] = {model = "models/khrcw2/ins2pack/attachments/lasers/laserrifle.mdl", pos = Vector(-5.85, -9.5, 4.55), angle = Angle(0, -90, 90), size = Vector(1,1,1), bone = "weapon"},
		["md_anpeq15"] = { 
			models = {
				{type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", rel = "", pos = Vector(-3.4, 7 ,3.1), angle = Angle(0,-90,0), adjustment = {min = 4.147, max = 6.956, axis = "x", inverse = true}, size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
				{type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "weapon", rel = "", pos = Vector(-3.2, 7.5, 0.4), angle = Angle(0, 90, 0), size = Vector(0.9, 1.53, 1.53), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}}}
			},
		["ftacgrimline"] = { 
			models = {
				{type = "Model", model = "models/shared/lasers/r_ftacgrimline.mdl", bone = "weapon", rel = "", pos = Vector(-3.6, 7.5, 3.2), angle = Angle(0, -90, 0), adjustment = {min = 4.215, max = 5.932, axis = "x", inverse = true}, size = Vector(1.116, 1.116, 1.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
				{type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "weapon", rel = "", pos = Vector(-3.2, 7.5, 0.4), angle = Angle(0, 90, 0), size = Vector(0.9, 1.53, 1.53), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}}}
			},
		--muzzle
		["hard20"] = { type = "Model", model = "models/shared/muzzles/r_harbinger20.mdl", bone = "weapon", rel = "", pos = Vector(-3.6, 17, 2.27), angle = Angle(180, 90, -90), size = Vector(1, 0.75, 0.75)},
		["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(-3.5, 12.5, 2.3), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), bone = "weapon"},
		--foregrip
		["ftactiger_r"] = { type = "Model", model = "models/shared/grips/r_ftactiger.mdl", bone = "weapon", rel = "", pos = Vector(-3.5, 7, 2.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
        ["bruentiltgrip_r"] = { type = "Model", model = "models/shared/grips/r_bruentiltgrip.mdl", bone = "weapon", rel = "", pos = Vector(-3.5, 7, 2), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
        --["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", rel = "", pos = Vector(-4, -4, 0.5), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699)},
		--Do you think she thinks about me sometimes
		["doi_atow_frankensten"] = { 
			models = {
					{type = "Model", model = "models/cw2/rifles/ar15.mdl", bone = "weapon", rel = "", pos = Vector(-1.382, -5.798, 4.81), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
					{type = "Model", model = "models/cw2/smgs/mp5.mdl", bone = "weapon", rel = "", pos = Vector(-8.26, -7.7, -3.97), angle = Angle(0, -90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
			}
	}}
end
end

SWEP.Attachments = {[5] = {header = "Signature Attachment", offset = {300, -500}, atts = {"doi_atow_frankensten", "doi_atow_stenmk5"}, exclusions =  {bruentiltgrip_r = true, ftactiger_r = true}},
[4] = {header = "Accessory", offset = {-700, -500}, atts = {"doi_atow_sling"}},
[2] = {header = "Fire Control", offset = {-150, -500}, atts = {"doi_atow_burstconv","doi_atow_heavybolt"}},
[3] = {header = "Muzzle", offset = {-700, 300}, atts = {"doi_atow_stensuppressor", "doi_atow_unisuppressor","hard20"}, exclusions = {doi_atow_frankensten = true}},
[1] = {header = "Sight", offset = {-700, -150}, atts = {"doi_atow_altsightmk5", "md_reflex"}},
[6] = {header = "Laser", offset = {200, -125}, atts = {"ins2_atow_clamplaser", "md_anpeq15", "ftacgrimline" }, exclusions = {doi_atow_frankensten = true}},
[7] = {header = "Foregrip", offset = {950, 0}, atts = {"ftactiger_r", "bruentiltgrip_r", 
--"md_foregrip"
}, exclusions = {doi_atow_frankensten = true}},

["+reload"] = {header = "Ammo", offset = {200, 300}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.AttachmentExclusions = {
	["doi_atow_altsightmk5"] = {"doi_atow_stenmk5"},
	["doi_atow_altsightmk5"] = {"doi_atow_frankensten"},
}

SWEP.AttachmentPosDependency = {
	["ins2_atow_clamplaser"] = {["doi_atow_stenmk5"] = Vector(-5.85, -10.5, 4.65), ["doi_atow_altsightmk5"] = Vector(-5.85, -10.5, 4.65), ["doi_atow_stensuppressor"] = Vector(-5.85, -8.5, 4.25),},
	["md_reflex"] = {["doi_atow_frankensten"] = Vector(-3.6, 4.928, 3.546)},
	["md_anpeq15"] = {["doi_atow_frankensten"] = Vector(-3.6, 5.91, 3.617)},
}

SWEP.ForegripOverridePos = {
	["grip"] = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(25.555, 47.777, 7.777) },
	["L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 14.444, 0) },
	["L Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 27.777, 0) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.601, 0.284, -0.857), angle = Angle(0, 0, 0) },
	["L Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, -1.111, 10) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(30, -1.111, 0) },
	["L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10, 72.222, 3.332) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.444, 76.666, 0) },
	["L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 18.888, 16.666) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(18.888, 32.222, 23.333) },
	["L ForeTwist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 25.555) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 18.888, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(1.11, -12.557, 61.111) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, 0.3), angle = Angle(0, 0, 0) },
	["R Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-4.259, 2.778, -0.186), angle = Angle(-38.889, 0, 0) }},

	["frank"] = {
	["R Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-4.135, 5.780, 5.271), angle = Angle(0, 0, 0) },
	["R Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15, 0, 0) },
	["R Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-17.673, 0, -15) },},
	
	["2"] = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2, -3, 1) },
	["L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 5, 0) },
	["L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, 0), angle = Angle(0, 0, 0) },
	["R Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["3"] = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2, 5, 0) },
	["L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2, -10, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, 0), angle = Angle(0, 0, 0) },
	["R Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["none"] = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-.75, .0, 0), angle = Angle(0, 0, 0) },
	["R Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
}

SWEP.MuzzleVelocity = 360

SWEP.BodyBGs = {main = 1, off = 0, on = 1}
SWEP.SightBGs = {main = 2, off = 0, on = 1}
SWEP.SuppressorBGs = {main = 3, off = 0, on = 1}
SWEP.SlingBGs = {main = 4, off = 0, on = 1}
SWEP.IronBGs = {main = 5, off = 0, on = 1}
SWEP.MagBGs = {main = 6, off = 0, on = 1}

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true
--SWEP.AimBreathingIntensity = .75

SWEP.Animations = {fire = {"base_fire_1","base_fire_2"},
	fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 15

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_base"
SWEP.Category = "TCW - Submachine Guns"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 75 // 65
SWEP.AimViewModelFOV = 65
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/sten.mdl"
SWEP.WorldModel		= "models/weapons/w_smg_tmp.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false //
SWEP.RVBPitchMod = .4
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 128
SWEP.Primary.Automatic		= true
SWEP.Chamberable			= false

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "SMG1"
else
SWEP.Primary.Ammo			= "9x19MM"
end

SWEP.FireDelay = 60/560
SWEP.FireSound = "DOISTEN_FIRE"
SWEP.FireSoundSuppressed = "DOISTEN_SUPPRESSED"
SWEP.Recoil = 1.6
 -- = .54

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = .3
SWEP.MaxSpreadInc = 0.1
SWEP.SpreadPerShot = 0.0002
SWEP.SpreadCooldown = 0.0005
SWEP.Shots = 1
SWEP.Damage = 52
SWEP.DeployTime = .4
SWEP.HolsterTime = .5
SWEP.ADSFireAnim = true

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 2.5
SWEP.ReloadHalt = 3.6
SWEP.ReloadTime_Empty = 3.4
SWEP.ReloadHalt_Empty = 4.6	

function SWEP:adjustViewmodelPosition(pos, ang)
    if self.FrankenstenPos then
        pos = pos + self.FrankenstenPos
        ang = ang + self.FrankenstenAng
    end

    return pos, ang
end

function SWEP:adjustAttachmentAimPosition(att)
	if self.ActiveAttachments.doi_atow_frankensten and att.name == "md_reflex" then
		self.AimPos = self.FrankReflexPos
		self.AimAng = self.FrankReflexAng
	end
end

function SWEP:IndividualThink()
	
	if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end
	
	local hasFrankensten = self.ActiveAttachments.doi_atow_frankensten
	local hasCustomGrip = self.ActiveAttachments.doi_atow_stenmk5 or self.ActiveAttachments.bruentiltgrip_r

	if hasFrankensten then
		self.ForegripOverride = true
		self.ForegripParent = "frank"
	elseif not hasCustomGrip then
		self.ForegripOverride = true
		self.ForegripParent = "2"
	else
		self.ForegripOverride = true
		self.ForegripParent = "grip"
	end
	
	self.EffectiveRange = 25 * 39.37
	self.DamageFallOff = .55
	
	if self.ActiveAttachments.doi_atow_frankensten then
		self.DamageFallOff = self.DamageFallOff + 0.23
		self.BackupSights = {["md_reflex"] = {[1] = Vector(-3.8, 0.5, 1.5), [2] = Vector(0, 0, -43)}}
	else
		self.BackupSights = {["md_reflex"] = {[1] = Vector(-4, -2, 1), [2] = Vector(0,0,-45)}}
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

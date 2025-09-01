

    AddCSLuaFile()
    AddCSLuaFile("sh_sounds.lua")
    include("sh_sounds.lua")

    if CLIENT then
        SWEP.DrawCrosshair = false
        SWEP.PrintName = "UMP-45"
        SWEP.UseHands = true
        SWEP.CSMuzzleFlashes = true
        SWEP.ViewModelMovementScale = 1.15

        SWEP.IconLetter = "w"
        killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))

        SWEP.EffectiveRange_Orig = 40 * 39.37
        SWEP.DamageFallOff_Orig = .4

        SWEP.MuzzleEffect = "muzzleflash_smg"
        SWEP.PosBasedMuz = true
        SWEP.SnapToGrip = true
        SWEP.Shell = "smallshell"
        SWEP.ShellScale = 0.7
        SWEP.ShellOffsetMul = 1
        SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
        SWEP.ForeGripOffsetCycle_Draw = 0
        SWEP.ForeGripOffsetCycle_Reload = 0.88
        SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

        SWEP.IronsightPos = Vector(-2.757, -0.06, 0.519)
        SWEP.IronsightAng = Vector(0, 0, 0)

        SWEP.EXPSPos = Vector(-2.721, 0, -0.24)
        SWEP.EXPSAng = Vector(0, 0, 0)

        SWEP.MRSPos = Vector(-2.72, 0, -0.20)
        SWEP.MRSAng = Vector(0, 0, 0)


        SWEP.AimpointPos = Vector(-2.721, -0.06, 0.039)
        SWEP.AimpointAng = Vector(0, 0, 0)

        SWEP.MicroT1Pos = Vector(-2.76, -0.06, 0.2)
        SWEP.MicroT1Ang = Vector(0, 0, 0)

        SWEP.ACOGPos = Vector(-2.8, 2, -0.281)
        SWEP.ACOGAng = Vector(0, 0, 0)

        SWEP.ForegripOverridePos = {}

        SWEP.ForeGripHoldPos = {
            ["ValveBiped.Bip01_L_Finger1"] = {scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-13.457, -44.149, 0)},
            ["ValveBiped.Bip01_L_Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(-1.686, 1.009, -0.315), angle = Angle(-2.731, 0, 0)},
            ["ValveBiped.Bip01_L_Finger4"] = {scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 23.971, 0)},
            ["ValveBiped.Bip01_L_Finger0"] = {scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-14.457, 32.279, -21.941)},
            ["ValveBiped.Bip01_L_Finger2"] = {scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -27.6, 0)},
            ["ValveBiped.Bip01_L_Finger3"] = {scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -2.945, 0)},
            ["ValveBiped.Bip01_L_Finger01"] = {scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(30.844, 50.502, -3.846)},
            ["ValveBiped.Bip01_L_Hand"] = {scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-36.473, 4.559, 38.269)}
        }

        SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
        SWEP.AlternativeAng = Vector(0, 0, 0)

        SWEP.AttachmentModelsVM = {
            ["md_saker"] = {type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "weapon", pos = Vector(0, -1.997, 2.828), angle = Angle(0, 180, -90), size = Vector(0.5, 0.5, 0.5)},
            ["md_foregrip"] = {type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "weapon", pos = Vector(-0.406, 2.694, -2.169), angle = Angle(0, 0, -90), size = Vector(0.699, 0.699, 0.699)},
            ["md_anpeq15"] = {type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", pos = Vector(-0.64, -0.16, 9.208), angle = Angle(-90, 0, 180), size = Vector(0.8, 0.8, 0.8)},
            ["md_microt1"] = {type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", pos = Vector(0, -2.408, 1.44), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5)},
            ["md_aimpoint"] = {type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", pos = Vector(-0.24, 3.256, -5.935), angle = Angle(0, 0, -90), size = Vector(1, 1, 1)},
            ["too_reflex_exps"] = { type = "Model", model = "models/eftatts/eft_scope_exps.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.306, 1.741), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
            ["too_reflex_mrs"] = { type = "Model", model = "models/eftatts/eft_scope_mrs.mdl", bone = "weapon", rel = "", pos = Vector(0, -2.306, 1.741), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
            ["md_acog"] = {type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", pos = Vector(-0.401, 3.262, -5.408), angle = Angle(0, 0, -90), size = Vector(1, 1, 1)}}

        SWEP.LaserPosAdjust = Vector(1, 0, 1)
        SWEP.LaserAngAdjust = Angle(0, 180, 0)
    end

    SWEP.LuaViewmodelRecoil = false
    SWEP.CustomizationMenuScale = 0.012

    SWEP.Attachments = { 
        [1] = {header = "Sight", offset = {200, -500}, atts = {"md_microt1","too_reflex_mrs","too_reflex_exps", "md_aimpoint", "md_acog"}},
        [2] = {header = "Barrel extension", offset = {-300, -500}, atts = {"md_saker"}},
        [3] = {header = "Rail", offset = {-250, -50}, atts = {"md_anpeq15"}},
        [4] = {header = "Handguard", offset = {-850, -250}, atts = {"md_foregrip"}},
        ["+use"] = {header = "Optic Type", offset = {200, -850}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
        ["+reload"] = {header = "Ammo", offset = {-300, 400}, atts = {"am_magnum", "am_matchgrade"}}
    }

    SWEP.AttachmentDependencies = {
		["md_microt1"] = {"too_optic_category_reflex"},
		["too_reflex_exps"] = {"too_optic_category_reflex"},
        ["too_reflex_mrs"] = {"too_optic_category_reflex"},
		["md_aimpoint"] = {"too_optic_category_reflex"},
		["md_acog"] = {"too_optic_category_magnified"},
	}

    SWEP.Animations = {
        fire         = "fire",
        fire_last    = "fire_empty",
        fire_aim     = "fire_iron",
        fire_last_aim = "fire_empty",
        reload       = "reload",
        reload_empty = "reload_empty",
        idle         = "idle",
        draw         = "draw"
    }

    SWEP.Sounds = {
        draw = {
            {time = 0, sound = "CW_FOLEY_MEDIUM"}
        },

        reload = {
            {time = 0.51, sound = "CW_TOO_UMP45_MAGOUT"},
            {time = 1.25, sound = "CW_TOO_UMP45_MAGIN"}
        },

        reload_empty = {
            {time = 0.30, sound = "CW_TOO_UMP45_MAGOUT_EMPTY"},
            {time = 1.48, sound = "CW_TOO_UMP45_MAGHIT_EMPTY"},
            {time = 1.58, sound = "CW_TOO_UMP45_MAGIN_EMPTY"},
            {time = 2.35, sound = "CW_TOO_UMP45_BOLT"}
        }
    }

    SWEP.SpeedDec = 30
    SWEP.Slot = 3
    SWEP.SlotPos = 0
    SWEP.NormalHoldType = "ar2"
    SWEP.RunHoldType = "passive"
    SWEP.FireModes = {"auto", "2burst", "semi"}
    SWEP.Base = "cw_base"
    SWEP.Category = "CW 2.0 - Theater Customs"
    SWEP.SubCategory = "Submachine Guns"

    SWEP.Author = "reshed"

    SWEP.ViewModelFOV = 90
    SWEP.ViewModelFlip = false
    SWEP.ViewModel = "models/weapons/rfas/sm/cw2_theater_rfas_ump45.mdl"
    SWEP.WorldModel = "models/weapons/w_smg_ump45.mdl"

    SWEP.Spawnable = true
    SWEP.AdminSpawnable = true

    SWEP.Primary.ClipSize = 25
    SWEP.Primary.DefaultClip = 25
    SWEP.Primary.Automatic = true
    SWEP.Primary.Ammo = ".45 ACP"

    SWEP.FireDelay = 60 / 600
    SWEP.FireSound = "CW_TOO_UMP45_FIRE"
    SWEP.FireSoundSuppressed = "CW_TOO_UMP45_FIRE_SUPPRESSED"
    SWEP.Recoil = 1.05

    SWEP.HipSpread = 0.045
    SWEP.AimSpread = 0.003
    SWEP.VelocitySensitivity = 1.8
    SWEP.MaxSpreadInc = 0.04
    SWEP.SpreadPerShot = 0.007
    SWEP.SpreadCooldown = 0.13
    SWEP.Shots = 1
    SWEP.Damage = 48
    SWEP.DeployTime = 1

    SWEP.ReloadSpeed = 1
    SWEP.ReloadTime = 2.20
    SWEP.ReloadTime_Empty = 3.1
    SWEP.ReloadHalt = 2.20
    SWEP.ReloadHalt_Empty = 3.3
    SWEP.SnapToIdlePostReload = false

    SWEP.SprintPos = Vector(0, 0, -2.639)
    SWEP.SprintAng = Vector(-11.612, 19.459, -38.855)

    SWEP.CustomizePos = Vector(1, -3, -0.611)
    SWEP.CustomizeAng = Vector(1.194, 21.681, -8.62)

    SWEP.ADSFireAnim = true

 function SWEP:fireAnimFunc()
    local clip = self:Clip1()
    local cycle = 0
    local rate = 1
    local prefix = ""
    local suffix = ""

    if clip == 1 then
        suffix = suffix .. "_last"
    end

    if self:isAiming() then
        suffix = suffix .. "_aim"
        cycle = self.ironFireAnimStartCycle
    end

    self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end

function SWEP:IndividualThink()
    if IsValid(self.Owner) then
        self.Owner.ViewAff = 0
    end

    self.EffectiveRange = 50 * 39.37
    self.DamageFallOff = 0.4
end


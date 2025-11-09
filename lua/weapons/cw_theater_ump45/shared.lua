

    AddCSLuaFile()
    AddCSLuaFile("sh_sounds.lua")
    include("sh_sounds.lua")

    if CLIENT then
        SWEP.DrawCrosshair = false
        SWEP.PrintName = "UMP45"
        SWEP.UseHands = true
        SWEP.CSMuzzleFlashes = true
        SWEP.ViewModelMovementScale = 1.15

        SWEP.SelectIcon = surface.GetTextureID("vgui/ump45")
        killicon.Add("cw_theater_ump45", "vgui/killicons/ump45", Color(255, 120, 40, 0))

        SWEP.EffectiveRange_Orig = 40 * 39.37
        SWEP.DamageFallOff_Orig = .4

        SWEP.MuzzleEffect = "muzzleflash_suppressed"
        SWEP.PosBasedMuz = true
        SWEP.SnapToGrip = true
        SWEP.Shell = "smallshell"
        SWEP.ShellScale = 1.03
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

        SWEP.BackupSights = {
        ["md_microt1"] = {[1] = Vector(-4, 9, 0), [2] = Vector(0,0,-30)},
        ["too_reflex_mrs"] = {[1] = Vector(-4, 3, 0), [2] = Vector(0,0,-30)},
        ["too_reflex_exps"] = {[1] = Vector(-4, 5, 0), [2] = Vector(0,0,-30)},
        ["md_aimpoint"] = {[1] = Vector(-4, 7, 0), [2] = Vector(0,0,-30)},
        ["md_acog"] = {[1] = Vector(-2.79, 10, -1.4), [2] = Vector(-0.1, 0, 0)}
        }

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

    SWEP.Trivia = {text = "This submachine gun was made as a lighter, cheaper alternative to the MP5, making heavy use of polymers.", x = -550, y = -700}

    SWEP.Attachments = { 
        [1] = {header = "Sight", offset = {500, -500}, atts = {"md_microt1","too_reflex_mrs","too_reflex_exps", "md_aimpoint", "md_acog"}},
        [2] = {header = "Muzzle", offset = {-300, -500}, atts = {"md_saker"}},
        [3] = {header = "Laser", offset = {-250, -50}, atts = {"md_anpeq15"}},
        [4] = {header = "Handguard", offset = {-850, -250}, atts = {"md_foregrip"}},
        ["+use"] = {header = "Optic Type", offset = {700, 0}, atts = {"too_optic_category_reflex", "too_optic_category_magnified"}},
        ["+reload"] = {header = "Ammo", offset = {-300, 400}, atts = {"am_magnum", "am_matchgrade", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}
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
    SWEP.Slot = 2
    SWEP.SlotPos = 0
    SWEP.NormalHoldType = "ar2"
    SWEP.RunHoldType = "passive"
    SWEP.FireModes = {"auto", "2burst", "semi"}
    SWEP.Base = "cw_base"
    SWEP.Category = "TCW - Theater Customs"
    SWEP.SubCategory = "Submachine Guns"

    SWEP.Author = "reshed"

    SWEP.ViewModelFOV = 90
    SWEP.ViewModelFlip = false
    SWEP.ViewModel = "models/weapons/rfas/sm/cw2_theater_rfas_ump45.mdl"
    SWEP.WorldModel = "models/weapons/w_smg_ump45.mdl"

    SWEP.Spawnable = true
    SWEP.AdminSpawnable = true

    SWEP.Primary.ClipSize = 25
    SWEP.Primary.DefaultClip = 100
    SWEP.Primary.Automatic = true
    SWEP.Primary.Ammo = ".45 ACP"

    SWEP.FireDelay = 60 / 600
    SWEP.FireSound = "CW_TOO_UMP45_FIRE"
    SWEP.FireSoundSuppressed = "CW_TOO_UMP45_FIRE_SUPPRESSED"
    SWEP.Recoil = 0.75

    SWEP.HipSpread = 0.04
    SWEP.AimSpread = 0.005
    SWEP.VelocitySensitivity = 0.3
    SWEP.MaxSpreadInc = 0.1
    SWEP.SpreadPerShot = 0.0002
    SWEP.SpreadCooldown = 0.0005
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
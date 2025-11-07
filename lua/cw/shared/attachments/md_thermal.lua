local att = {}
att.name = "md_thermal"
att.displayName = "ELCAN SpecterIR"
att.displayNameShort = "Thermal"
att.aimPos = {"ThermalPos", "ThermalAng"}
att.FOVModifier = 40
att.isSight = true
att.SpeedDec = 5

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("cw20_extras/icons/upgr_elcan")
	att.description = {[1] = {t = "Provides 3.4x magnification.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Narrow scope reduces awareness.", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Can be disorienting at close range.", c = CustomizableWeaponry.textColors.NEGATIVE}}

	local IR_SETTINGS = 
	{
		[ "$pp_colour_addr" ] 		= 0,
		[ "$pp_colour_addg" ] 		= 0,
		[ "$pp_colour_addb" ] 		= 0,
		[ "$pp_colour_brightness" ] = 0.01,
		[ "$pp_colour_contrast" ]	= 1,
		[ "$pp_colour_colour" ] 	= 0,
		[ "$pp_colour_mulr" ] 		= 0,
		[ "$pp_colour_mulg" ] 		= 0,
		[ "$pp_colour_mulb" ] 		= 0
	}

	local highlights_material = Material("cw2/effects/white")

	local function IRFX()
		local ply = LocalPlayer()
		local wep = ply:GetActiveWeapon()
		
		if not IsValid(wep) or not wep.CW20Weapon then
			return
		end
		
		UCT = UnPredictedCurTime()
		if not (wep.ThermalAcquired and UCT > wep.AimTime and wep.dt.State == CW_AIMING) then
			return
		end
				
	--	render.SuppressEngineLighting(true)

		-- get all entities that are to be drawn 'white hot'
		-- note that getting only player, npc and vehicle may or may not be faster than getting all
		local highlight_ents -- = ents.GetAll()
		highlight_ents = ents.FindByClass("player")
		highlight_ents = table.Add(highlight_ents, ents.FindByClass("npc_*"))
		highlight_ents = table.Add(highlight_ents, ents.FindByClass("*vehicle_*"))

		-- go through all entities
		for _, ent in pairs(highlight_ents) do
			if ent:IsNPC() or ent:IsPlayer() or ent:IsVehicle() then
				if not ent:IsEffectActive(EF_NODRAW) then
					render.MaterialOverride( highlights_material )
					render.SetBlend( 1 )
					ent:DrawModel()
					render.SetBlend( 0 )
					render.MaterialOverride( nil )
				end
			end
		end
		
	--	render.SuppressEngineLighting(false)
	end

	local function IRFX_SSE()
		local ply = LocalPlayer()
		local wep = ply:GetActiveWeapon()
		
		if not IsValid(wep) or not wep.CW20Weapon then
			return
		end
		
		UCT = UnPredictedCurTime()
		if not (wep.ThermalAcquired and UCT > wep.AimTime and wep.dt.State == CW_AIMING) then
			return
		end
		
		DrawColorModify( IR_SETTINGS )
		DrawBloom( 0.65, 2.5, 10, 10, 1, 1, 1, 1, 1 )
	end

	function att:attachFunc()
		self.AimOverlay = surface.GetTextureID("reticles/zoom/CronenP_Reticle")
		self.AttachmentEquipped = true
		--self.OverrideAimMouseSens = 0.75
		self.AimViewModelFOV = 50
		self.BlurOnAim = false
		self.MoveWepAwayWhenAiming = true
		self.DrawBlackBarsOnAim = true
		self.OverrideAimMouseSens = 0.9
		self.ThermalAcquired = true

		hook.Add("PostDrawOpaqueRenderables", "IRFX", IRFX)
		hook.Add("RenderScreenspaceEffects", "IRFX_SSE",IRFX_SSE)
	end

	function att:detachFunc()
		self.AimOverlay = nil
		self.AttachmentEquipped = nil
		-- self.OverrideAimMouseSens = 1
		-- self.SimpleTelescopicsFOV = nil
		self.AimViewModelFOV = self.AimViewModelFOV_Orig
		self.BlurOnAim = false
		self.MoveWepAwayWhenAiming = false
		self.DrawBlackBarsOnAim = false
		self.ThermalAcquired = false

		hook.Remove("PostDrawOpaqueRenderables", "IRFX")
		hook.Remove("RenderScreenspaceEffects", "IRFX_SSE")
	end
end

CustomizableWeaponry:registerAttachment(att)
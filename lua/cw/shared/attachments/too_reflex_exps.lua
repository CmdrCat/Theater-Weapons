local att = {} 
att.name = "too_reflex_exps" 
att.displayName = "EoTech XPS-3"
att.displayNameShort = "XPS-3"
att.aimPos = {"EXPSPos", "EXPSAng"}
att.FOVModifier = 15
att.isSight = true
att.SpeedDec = 1

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts_new/att_eft_xps3")
	att.description = {[1] = {t = "Provides a bright reticle to ease aiming.", c = CustomizableWeaponry.textColors.POSITIVE}}
	
	att.reticle = "vgui/atts_new/ret/exps_reticle"
	att._reticleSize = 5

	function att:drawReticle()
		if not self:isAiming() or not self:isReticleActive() then
			return
		end
		
		diff = self:getDifferenceToAimPos(self.EXPSPos, self.EXPSAng, att._reticleSize)
		
		-- draw the reticle only when it's close to center of the aiming position
		if diff > 0.9 and diff < 1.1 then
			cam.IgnoreZ(true)
				render.SetMaterial(att._reticle)
				dist = math.Clamp(math.Distance(1, 1, diff, diff), 0, 0.13)
				
				local EA = self:getReticleAngles()
				
				
				local pos = EyePos() + EA:Forward() * 100
				
				for i = 1, 2 do
					render.DrawSprite(pos, att._reticleSize, att._reticleSize, renderColor)
				end
			cam.IgnoreZ(false)
		end
	end
end

CustomizableWeaponry:registerAttachment(att)
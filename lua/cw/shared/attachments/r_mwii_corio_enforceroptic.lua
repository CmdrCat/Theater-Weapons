local att = {}
att.name = "corioenforcer"
att.displayName = "Corio Enforcer Optic"
att.displayNameShort = "Enforcer"
att.aimPos = {"ENFORPos", "ENFORAng"}
att.FOVModifier = 5
att.isSight = true


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_corioenforcer")
	att.description = {[1] = {t = "A bulky reliable sight.", c = CustomizableWeaponry.textColors.POSITIVE}}
	
	att.reticle = "reticles/zoom/corioenforcer_reticle"
	att._reticleSize = 5
	
	function att:drawReticle()
		if not self:isAiming() or not self:isReticleActive() then
			return
		end
		
		diff = self:getDifferenceToAimPos(self.ENFORPos, self.ENFORAng, 1)
		
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
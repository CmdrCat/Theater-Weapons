local att = {}
att.name = "xrkonpoint"
att.displayName = "XRK On-Point Reflex"
att.displayNameShort = "On-Point"
att.aimPos = {"POINTPos", "POINTAng"}
att.FOVModifier = 15
att.isSight = true


if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_xrkonpoint")
	att.description = {[1] = {t = "A compact, reliable sight.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Can Tac Stance. Double-tap use key to toggle.", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Slightly increases aim zoom.", c = CustomizableWeaponry.textColors.POSITIVE}}
	
	att.reticle = "reticles/zoom/XTENAngel_reticle"
	att._reticleSize = 4
	
	function att:drawReticle()
		if not self:isAiming() or not self:isReticleActive() then
			return
		end
		
		diff = self:getDifferenceToAimPos(self.POINTPos, self.POINTAng, 1)
		
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
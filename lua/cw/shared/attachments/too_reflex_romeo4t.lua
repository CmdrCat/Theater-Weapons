local att = {}
att.name = "too_reflex_romeo4t"
att.displayName = "SiG Romeo 4T"
att.displayNameShort = "Romeo 4"
att.aimPos = {"ROMEO4TPos", "ROMEO4TAng"}
att.FOVModifier = 5
att.isSight = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts_new/att_eft_mrs")
	att.description = {[1] = {t = "Provides a bright reticle to ease aiming.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Slightly increases aim zoom.", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Narrow scope may decrease awareness.", c = CustomizableWeaponry.textColors.NEGATIVE}}
	
	att.reticle = "vgui/atts_new/ret/scope_all_walther_mrs_mark_000"
	att._reticleSize = 5
	
	function att:drawReticle()
		if not self:isAiming() or not self:isReticleActive() then
			return
		end
		
		diff = self:getDifferenceToAimPos(self.ROMEO4TPos, self.ROMEO4TAng, 1)
		
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
local att = {}
att.name = "ftacgrimline"
att.displayName = "FTac GrimLine"
att.displayNameShort = "Grim"
att.laserRange = 4096
att.laserBeamRange = 75
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_BEAM

att.LaserPosAdjust = Vector(0.75, 0, 0)

att.statModifiers = {VelocitySensitivityMult = -0.2,
HipSpreadMult = -0.2,
DrawSpeedMult = -0.1,
MaxSpreadIncMult = -0.25,
ReloadSpeedMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/atts/r_ftacgrimline")
	att.description = {}
	local beam = Material("sprites/physbeam")
	local laserDot = Material("sprites/glow04_noz")
	
	att.reticle = "cw2/reticles/aim_reticule"
	local td = {}
	
	function att:elementRender()
		local model = self.AttachmentModelsVM.ftacgrimline.ent
		local pos = model:GetPos()
		local ang = self:getLaserAngles(model)
		local angs = nil
		
		if not self.freeAimOn then
			if self.dt.State == CW_AIMING then
				angs = self.GrimlineAngAdjustAim
			end
		end
		
		angs = angs or self.GrimlineAngAdjust
		
		-- rotate and prepare the position
		ang:RotateAroundAxis(ang:Right(), angs.p)
		ang:RotateAroundAxis(ang:Up(), angs.y)
		ang:RotateAroundAxis(ang:Forward(), angs.r)
		
		local dir = ang * 1
		
		if not self.freeAimOn then
			if self.dt.State == CW_AIMING then
				local vp = self.Owner:GetViewPunchAngles()
				dir.p = self.Owner:EyeAngles().p + vp.p
			end
		end
		
		local fw = dir:Forward()

		local lpa = att.LaserPosAdjust or self.LaserPosAdjust or Vector(0, 0, 0)
		local laserPos = pos + ang:Right() * lpa.x + ang:Forward() * lpa.y + ang:Up() * lpa.z

		td.start = laserPos
		td.endpos = td.start + fw * att.laserRange
		td.filter = self.Owner
		
		local tr = util.TraceLine(td)
		
		if not self.lastLaserPos then
			self.lastLaserPos = tr.HitPos
		end
		
		local dist = math.Clamp(att.laserRange * tr.Fraction, 0, att.laserBeamRange)
		local uv = math.max(dist / 32, 1)
		
		if util.PointContents(tr.HitPos) != CONTENTS_SOLID and not self.NearWall then
			local renderColor = self:getSightColor(att.name)
			local laserHQ = GetConVarNumber("cw_laser_quality") > 1
			
			-- draw the beam
			render.SetBlend(1)
			renderColor.a = 255
			render.SetMaterial(beam)
			
			render.DrawBeam(laserPos + fw, tr.HitPos, 1, 1, 5000, renderColor) --5000 bc material cutoff stuff
			render.DrawBeam(laserPos + fw, tr.HitPos, 1, 0, uv, renderColor)
			
			if laserHQ then
				renderColor.a = 255
				render.DrawBeam(laserPos + fw, tr.HitPos, 1, 0, uv, renderColor)
				
				renderColor.a = 255
				render.DrawBeam(laserPos + fw, tr.HitPos, 1, 0, uv, renderColor)
			end
			
			-- draw the dot if the model is not out of world bounds
			renderColor.a = 255
			
			render.SetMaterial(laserDot)
			
			if GetConVarNumber("cw_laser_blur") >= 1 then
				render.DrawBeam(self.lastLaserPos, tr.HitPos, 1.5, 0, 0.99, renderColor)
				
				local dist = math.Clamp(self.lastLaserPos:Distance(tr.HitPos), 0, 2)

				dist = 1 - (dist / 2)
				
				if dist < 2 then
					renderColor.a = 255 * dist
					render.DrawSprite(tr.HitPos, 1.5, 1.5, renderColor)
					
					if laserHQ then
						renderColor.a = 33 * dist
						render.DrawSprite(tr.HitPos, 3, 3, renderColor)
					end
				end
			else
				render.DrawSprite(tr.HitPos, 1.5, 1.5, renderColor)
				
				if laserHQ then
					renderColor.a = 33
					render.DrawSprite(tr.HitPos, 3, 3, renderColor)
				end
			end
			
			self.lastLaserPos = tr.HitPos
		end
	end
end

CustomizableWeaponry:registerAttachment(att)
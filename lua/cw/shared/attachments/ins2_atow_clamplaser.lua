local att = {}
att.name = "ins2_atow_clamplaser"
att.displayName = "Clamp-on Laser"
att.displayNameShort = "Laser"
att.laserRange = 4096
att.laserBeamRange = 75
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_BEAM

att.statModifiers = {VelocitySensitivityMult = -0.2,
HipSpreadMult = -0.2,
MaxSpreadIncMult = -0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/anpeq15")
	att.description = {}
	local beam = Material("effects/laser1")
	local laserDot = Material("sprites/glow04_noz")
	
	att.reticle = "cw2/reticles/aim_reticule"
	local td = {}
	
	function att:elementRender()
		local model = self.AttachmentModelsVM.ins2_atow_clamplaser.ent
		local pos = model:GetPos()
		local ang = self:getLaserAngles(model)
		local angs = nil
		
		if not self.freeAimOn then
			if self.dt.State == CW_AIMING then
				angs = self.LaserAngAdjustAim
			end
		end
		
		angs = angs or self.LaserAngAdjust
		
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
		
		local laserPos = pos + ang:Right() * self.LaserPosAdjust.x + ang:Forward() * self.LaserPosAdjust.y + ang:Up() * self.LaserPosAdjust.z
		
		td.start = laserPos
		td.endpos = td.start + fw * att.laserRange
		td.filter = self.Owner
		
		local tr = util.TraceLine(td)
		
		if not self.lastLaserPos then
			self.lastLaserPos = tr.HitPos
		end
		
		local dist = att.laserRange * tr.Fraction
			local uv = math.max(dist / 32, 1)
			
			if util.PointContents(tr.HitPos) != CONTENTS_SOLID and not self.NearWall then
			local renderColor = self:getSightColor(att.name)
			local laserHQ = GetConVarNumber("cw_laser_quality") > 1
			
			render.SetBlend(1)
			renderColor.a = 255
			render.SetMaterial(beam)
			
			render.DrawBeam(laserPos + fw, tr.HitPos, 1, 1, 0, renderColor)

			if laserHQ then
				renderColor.a = 50
				render.DrawBeam(laserPos + fw, laserPos + fw * dist, 0.6, 0, 0.99, renderColor)
				
				renderColor.a = 25
				render.DrawBeam(laserPos + fw, laserPos + fw * dist, 1, 0, 0.99, renderColor)
			end
			render.SetBlend(1)
			
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
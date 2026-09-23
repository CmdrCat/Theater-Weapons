SWEP.NormalTraceMask = bit.bor(CONTENTS_SOLID, CONTENTS_OPAQUE, CONTENTS_MOVEABLE, CONTENTS_DEBRIS, CONTENTS_MONSTER, CONTENTS_HITBOX, 402653442, CONTENTS_WATER)
SWEP.WallTraceMask = bit.bor(CONTENTS_TESTFOGVOLUME, CONTENTS_EMPTY, CONTENTS_MONSTER, CONTENTS_HITBOX)

SWEP.NoPenetration = {[MAT_SLOSH] = true}
SWEP.NoRicochet = {[MAT_FLESH] = true, [MAT_ANTLION] = true, [MAT_BLOODYFLESH] = true, [MAT_DIRT] = true, [MAT_SAND] = true, [MAT_GLASS] = true, [MAT_ALIENFLESH] = true, [MAT_GRASS] = true}
SWEP.PenetrationMaterialInteraction = {[MAT_SAND] = 0.5, [MAT_DIRT] = 0.8, [MAT_METAL] = 1.1, [MAT_TILE] = 0.9, [MAT_WOOD] = 1.2}
local zeroVec = Vector(0, 0, 0)

local reg = debug.getregistry()
local GetShootPos = reg.Player.GetShootPos

-- Optional API only: the separate HitReg addon owns all recovery traces and
-- damage dispatch. Without it, CW2 uses its normal Source bullet callback.
SWEP.TCWHitRegBridgeVersion = 1

SWEP.bulletCallback = function(ply, traceResult, dmgInfo) 
	CustomizableWeaponry.callbacks.processCategory(ply:GetActiveWeapon(), "bulletCallback", ply, traceResult, dmgInfo)
end

function SWEP:canPenetrate(traceData, direction)
	local dot = nil
	
	if not self.NoPenetration[traceData.MatType] then
		dot = self:getSurfaceReflectionDotProduct(traceData, direction)
		local ent = traceData.Entity
	
		if not ent:IsNPC() and not ent:IsPlayer() and not ent:IsNextBot() then
			if dot > 0.26 and self.CanPenetrate then
				return true, dot
			end
		end
	end
	
	return false, dot
end

function SWEP:getSurfaceReflectionDotProduct(traceData, dir)
	return -dir:DotProduct(traceData.HitNormal)
end

function SWEP:canRicochet(traceData, penetrativeRange)
	penetrativeRange = penetrativeRange or self.PenetrativeRange

	if self.CanRicochet and not self.NoRicochet[traceData.MatType] and penetrativeRange * traceData.Fraction < penetrativeRange then
		return true
	end
	
	return false
end

function SWEP:FireBullet(damage, cone, clumpSpread, bullets)
	-- Shot-local state also survives a callback firing a different weapon.
	local bul, tr = {}, {}
	local trace, dot
	local sp = GetShootPos(self.Owner)
	local commandNumber = self.Owner:GetCurrentCommand():CommandNumber()
	
	if self.Owner:Crouching() then
		cone = cone * 0.85
	end
	
	local Dir = (self.Owner:EyeAngles() + self.Owner:GetViewPunchAngles() + Angle(
		util.SharedRandom("TCW.Spread.Pitch", -cone, cone, commandNumber),
		util.SharedRandom("TCW.Spread.Yaw", -cone, cone, commandNumber), 0) * 25):Forward()
	clumpSpread = clumpSpread or self.ClumpSpread
	bul.Attacker = self.Owner
	bul.AmmoType = self.Primary.Ammo
	bul.wep = self

	local originalCallback = self.bulletCallback
	local function shotCallback(attacker, hitTrace, dmgInfo)
		local hitreg = SERVER and TheaterPlayerHitReg
		if hitreg and isfunction(hitreg.ProcessCW2Bullet) then
			return hitreg:ProcessCW2Bullet(self, attacker, hitTrace, dmgInfo, originalCallback)
		end
		if originalCallback then return originalCallback(attacker, hitTrace, dmgInfo) end
	end
	
	CustomizableWeaponry.callbacks.processCategory(self, "adjustBulletStructure", bul)
	
	for i = 1, bullets do
		local Dir2 = Dir
		
		if clumpSpread and clumpSpread > 0 then
			Dir2 = Dir + Vector(
				util.SharedRandom("TCW.Pellet.X", -1, 1, commandNumber + i),
				util.SharedRandom("TCW.Pellet.Y", -1, 1, commandNumber + i),
				util.SharedRandom("TCW.Pellet.Z", -1, 1, commandNumber + i)) * clumpSpread
		end
		
		if not CustomizableWeaponry.callbacks.processCategory(self, "suppressDefaultBullet", sp, Dir2, commandNumber) then
			bul.Num = 1
			bul.Src = sp
			bul.Dir = Dir2
			bul.Spread 	= zeroVec --Vector(0, 0, 0)
			bul.Tracer = self.TracerFrequency ~= nil and self.TracerFrequency or 3
			bul.TracerName = self.TracerName
			bul.Force	= damage * 0.3
			bul.Damage = math.Round(damage)
			bul.Callback = shotCallback
			bul.wep = self
			
			self.Owner:FireBullets(bul)
			
			tr.start = sp
			tr.endpos = tr.start + Dir2 * self.PenetrativeRange
			tr.filter = self.Owner
			tr.mask = self.NormalTraceMask
			
			trace = util.TraceLine(tr)
				
			if trace.Hit and not trace.HitSky then
				local canPenetrate, dot = self:canPenetrate(trace, Dir2)
				
				if canPenetrate and dot > 0.26 then
					tr.start = trace.HitPos
					tr.endpos = tr.start + Dir2 * self.PenStr * (self.PenetrationMaterialInteraction[trace.MatType] and self.PenetrationMaterialInteraction[trace.MatType] or 1) * self.PenMod
					tr.filter = self.Owner
					tr.mask = self.WallTraceMask
					
					trace = util.TraceLine(tr)
					
					tr.start = trace.HitPos
					tr.endpos = tr.start + Dir2 * 0.1
					tr.filter = self.Owner
					tr.mask = self.NormalTraceMask
					
					trace = util.TraceLine(tr) -- run ANOTHER trace to check whether we've penetrated a surface or not
					
					if not trace.Hit then
						bul.Num = 1
						bul.Src = trace.HitPos
						bul.Dir = Dir2
						bul.Spread 	= zeroVec
						bul.Tracer	= 4
						bul.Force	= damage * 0.15
						bul.Damage = bul.Damage * 0.5
						
						self.Owner:FireBullets(bul)
					end
				else
					if self:canRicochet(trace) then
						dot = dot or self:getSurfaceReflectionDotProduct(trace, Dir2)
						Dir2 = Dir2 + (trace.HitNormal * dot) * 3
						Dir2 = Dir2 + Vector(
							util.SharedRandom("TCW.Ricochet.X", -0.06, 0.06, commandNumber + i),
							util.SharedRandom("TCW.Ricochet.Y", -0.06, 0.06, commandNumber + i),
							util.SharedRandom("TCW.Ricochet.Z", -0.06, 0.06, commandNumber + i))
						
						bul.Num = 1
						bul.Src = trace.HitPos
						bul.Dir = Dir2
						bul.Spread 	= zeroVec
						bul.Tracer	= 0
						bul.Force	= damage * 0.225
						bul.Damage = bul.Damage * 0.75
						
						self.Owner:FireBullets(bul)
					end
				end
			end
		end
	end
		
	tr.mask = self.NormalTraceMask
end

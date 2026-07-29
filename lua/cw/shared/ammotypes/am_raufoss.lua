local att = {}
att.name = "am_raufoss"
att.displayName = "Raufoss Mk 211 Rounds"
att.displayNameShort = "HEAT"

att.statModifiers = {
	DamageMult = -34 / 39
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/apammo")
	att.description = {[1] = {t = "High-explosive .50 BMG rounds that do more damage to vehicles.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	if SERVER then
		if not self._CW20RaufossOldBulletCallback then
			self._CW20RaufossOldBulletCallback = self.bulletCallback
		end

		self.bulletCallback = function(ply, traceResult, dmgInfo)
			if self._CW20RaufossOldBulletCallback then
				self._CW20RaufossOldBulletCallback(ply, traceResult, dmgInfo)
			end

			if not self.ActiveAttachments or not self.ActiveAttachments.am_raufoss then
				return
			end

			if traceResult.HitSky or not traceResult.Hit then
				return
			end

			local hitPos = traceResult.HitPos
			local effect = EffectData()
			effect:SetOrigin(hitPos)
			effect:SetMagnitude(0.1)
			effect:SetScale(0)
			util.Effect("cball_explode", effect, true, true)
			util.Effect("Explosion", effect, true, true)

			local blastDamage = 175
			util.BlastDamage(self, ply, hitPos, 89.2388451444, blastDamage)
		end
	end
end

function att:detachFunc()
	if SERVER and self._CW20RaufossOldBulletCallback then
		self.bulletCallback = self._CW20RaufossOldBulletCallback
		self._CW20RaufossOldBulletCallback = nil
	end
end

if SERVER then
	CustomizableWeaponry.callbacks:addNew("bulletCallback", "CW20_raufossExplosive", function(self, ply, traceResult, dmgInfo)
		if not self.ActiveAttachments or not self.ActiveAttachments.am_raufoss then
			return
		end

		if traceResult.HitSky or not traceResult.Hit then
			return
		end

		local hitPos = traceResult.HitPos
		local effect = EffectData()
		effect:SetOrigin(hitPos)
		util.Effect("cball_explode", effect, true, true)
		util.Effect("Explosion", effect, true, true)

		local blastDamage = 175
		util.BlastDamage(self, ply, hitPos, 89.2388451444, blastDamage)

	end)
end

CustomizableWeaponry:registerAttachment(att)
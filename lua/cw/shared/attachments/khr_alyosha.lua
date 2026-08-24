local att = {}
att.name = "khr_alyosha"
att.displayName = "Thunderbolt Strike"
att.displayNameShort = "Thunder"
att.MarkDuration = 3
att.MarkColor = Color(95, 80, 245, 255)
att.MarkDamageScale = 1.14

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Applies the Hunter's Mark effect to hit opponents for 3 seconds.", c = CustomizableWeaponry.textColors.SPECIAL},
					   [2] = {t = "Marked opponents are highlighted and take 14% more damage.", c = CustomizableWeaponry.textColors.SPECIAL},
					   [3] = {t = "Scattershot / single-bullet mode while hipfiring / aiming down sights.", c = CustomizableWeaponry.textColors.SPECIAL},
					   [4] = {t = "Sets damage to 28×6 / 95", c = CustomizableWeaponry.textColors.COSMETIC},
					   [5] = {t = "Sets effective range to 25 M while in scattershot mode", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [6] = {t = "Sets damage fall off to 60% while in scattershot mode", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

local function triggerAlyoshaMarkedReactiveEffect(target, source)
	if not IsValid(target) or not (target:IsPlayer() or target:IsNPC()) then return end
	if not CustomizableWeaponry or not CustomizableWeaponry.markedPlayers then return end

	local mark = CustomizableWeaponry.markedPlayers[target]
	if not mark then return end
	if CurTime() >= (mark.expires or 0) then
		CustomizableWeaponry:clearMarkedPlayer(target)
		return
	end

	local now = CurTime()
	if (mark.lastReactive or 0) > now - 0.75 then
		return
	end
	mark.lastReactive = now

	CustomizableWeaponry:clearMarkedPlayer(target)

	if target:IsOnFire() then
		local effect = EffectData()
		effect:SetOrigin(target:WorldSpaceCenter())
		effect:SetScale(1)
		effect:SetMagnitude(1)
		util.Effect("Explosion", effect, true, true)
		local blastDamage = 166
		util.BlastDamage(source or target, target, target:WorldSpaceCenter(), 5 * 39.37, blastDamage)
	end

	if target:WaterLevel() > 0 then
		local effect = EffectData()
		effect:SetOrigin(target:WorldSpaceCenter())
		effect:SetScale(1)
		effect:SetMagnitude(1)
		util.Effect("TeslaZap", effect, true, true)
		local blastDamage = 95
		util.BlastDamage(source or target, target, target:WorldSpaceCenter(), 5 * 39.37, blastDamage)
	end
end

function att:attachFunc()

	self.Trivia = {text = "Whether a weapon is scavenged, stolen, or bought, it can be the only thing standing between you and certain death.", x = -500, y = -500}

	self.CrosshairParts = {left = false, right = false, upper = false, lower = false}

	self.TracerFrequency = 1
	self.TracerName = "blastertracer"
	self.TracerColor = Color(95, 80, 245, 255)

	if SERVER then
		if not self.AlyoshaMarkHook then
			hook.Add("EntityTakeDamage", "CW20_khr_alyosha_mark", function(target, dmginfo)
				if not IsValid(target) or not (target:IsPlayer() or target:IsNPC()) then return end
				local attacker = IsValid(dmginfo) and dmginfo:GetAttacker() or NULL
				if IsValid(attacker) and attacker == target then return end

				local wep = IsValid(attacker) and attacker.GetActiveWeapon and attacker:GetActiveWeapon() or NULL
				if not IsValid(wep) or not wep.CW20Weapon then return end
				if not wep.ActiveAttachments or not wep.ActiveAttachments.khr_alyosha then return end

				CustomizableWeaponry:markPlayerFor(target, att.MarkDuration, att.MarkColor, att.MarkDamageScale)
				if target:IsOnFire() or target:WaterLevel() > 0 then
					triggerAlyoshaMarkedReactiveEffect(target, attacker or target)
				end
			end)

			hook.Add("EntityIgnite", "CW20_khr_alyosha_mark_ignite", function(target, attacker)
				if not IsValid(target) or not (target:IsPlayer() or target:IsNPC()) then return end
				if not CustomizableWeaponry or not CustomizableWeaponry.markedPlayers or not CustomizableWeaponry.markedPlayers[target] then return end
				triggerAlyoshaMarkedReactiveEffect(target, attacker or target)
			end)

			hook.Add("Think", "CW20_khr_alyosha_mark_reactive", function()
				if not CustomizableWeaponry or not CustomizableWeaponry.markedPlayers then return end
				for target, mark in pairs(CustomizableWeaponry.markedPlayers) do
					if IsValid(target) then
						if CurTime() < (mark.expires or 0) then
							if target:IsOnFire() or target:WaterLevel() > 0 then
								triggerAlyoshaMarkedReactiveEffect(target, target)
							end
						end
					end
				end
			end)
			self.AlyoshaMarkHook = true
		end
	end

	if SERVER then
		return
	end

	if not IsValid(self.CW_VM) then
		return
	end

	self.CW_VM:SetSubMaterial(0, "")

    for i, index in ipairs(self.MaterialIndexAlyosha) do
		wep.CW_VM:SetSubMaterial(index, "metal2a")
	end
end

function att:detachFunc()

	self.Trivia = {text = "Originally developed in the 1890s for the Russian Empire, the Mosin-Nagant became one of the most mass-produced bolt-action rifles in history.", x = -500, y = -500}

	self.TracerFrequency = 3
	self.TracerName = nil
	self.TracerColor = Color(255, 255, 255, 255)

	self.CrosshairParts = {left = true, right = true, upper = true, lower = true}

	self.Shots = 1

	if SERVER and self.AlyoshaMarkHook then
		hook.Remove("EntityTakeDamage", "CW20_khr_alyosha_mark")
		hook.Remove("EntityIgnite", "CW20_khr_alyosha_mark_ignite")
		hook.Remove("Think", "CW20_khr_alyosha_mark_reactive")
		self.AlyoshaMarkHook = nil
	end

	if SERVER then
		return
	end

	for i, index in ipairs(self.MaterialIndexAlyosha) do
		wep.CW_VM:SetSubMaterial(index, "")
	end
    wep.CW_VM:SetSubMaterial(0, "")
end

CustomizableWeaponry:registerAttachment(att)
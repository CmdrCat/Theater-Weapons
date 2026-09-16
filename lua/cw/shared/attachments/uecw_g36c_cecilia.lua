local att = {}
att.name = "uecw_g36c_cecilia"
att.displayName = "Snotra Conversion"
att.displayNameShort = "Snotra"

att.statModifiers = {FireDelayMult = 122 / 253}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Eliminating a player charges Resilient Mind", c = CustomizableWeaponry.textColors.POSITIVE},
				  	   [2] = {t = "Resilient Mind: After reloading, gain 20 armor", c = CustomizableWeaponry.textColors.FIRE}}
end

function att:attachFunc()
	self.PrintName = "Snotra"
	self.FireSound = "CW_SCARL_FIRE"
	self.FireSoundSuppressed = "CW_SCARL_FIRE_SUPPRESSED"
	self.Trivia = {text = "Even the finest mediators and negotiators need security in the worst of times.", x = 0, y = -800}

	self.AbilityCharged = false
	self.CeciliaOriginalThink = self.IndividualThink

	self.IndividualThink = function(wep)
		if wep.CeciliaOriginalThink and wep.CeciliaOriginalThink ~= wep.IndividualThink then
            wep.CeciliaOriginalThink(wep)
        end
		local owner = wep.Owner

		if wep.ReloadDelay then
            wep.CeciliaReloading = true
            return
        end

        if wep.CeciliaReloading then
            wep.CeciliaReloading = false

            if owner:Armor() < 100 then
				if wep.AbilityCharged then
                	owner:SetArmor(math.min(owner:Armor() + 20, 100))
					wep.AbilityCharged = false
				end
            end
        end
	end

	if SERVER then
        self.CeciliaOnKilled = function(attacker, victim, inflictor)
            local wep = attacker:GetActiveWeapon()
            if not IsValid(wep) or wep ~= self then
                return
            end

            if attacker ~= owner then
                return
            end

            wep.AbilityCharged = true
        end

        hook.Add("PlayerDeath", "CeciliaKillTrack" .. self:GetClass(), function(victim, inflictor, attacker)
            if not IsValid(attacker) or not attacker:IsPlayer() then
                return
            end

            local wep = attacker:GetActiveWeapon()
            if IsValid(wep) and wep == self then
                wep.AbilityCharged = true
            end
        end)
    end

end

function att:detachFunc()
	self.PrintName = "G36C"
	self.FireSound = "CW_G36C_FIRE"
	self.FireSoundSuppressed = "CW_G36C_FIRE_SUPPRESSED"
	self.Trivia = {text = "A compact German assault rifle that sees widespread use in modern militaries.", x = 0, y = -800}

	if self.CeciliaOriginalThink then
        self.IndividualThink = self.CeciliaOriginalThink
    end

	self.CeciliaOriginalThink = nil
	self.CeciliaReloading = nil
end

CustomizableWeaponry:registerAttachment(att)
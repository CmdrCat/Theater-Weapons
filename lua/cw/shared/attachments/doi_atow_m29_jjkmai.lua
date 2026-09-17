local att = {}
att.name = "doi_atow_m29_jjkmai"
att.displayName = "Cursed Technique: Construction"
att.displayNameShort = "Cursed Technique"

att.statModifiers = {ReloadSpeedMult = 1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Completing a full reload replenishes your Cursed Energy", c = CustomizableWeaponry.textColors.POSITIVE},
				  	   [2] = {t = "Construction: Fire a bullet reinforced with Cursed Energy, dealing double damage", c = CustomizableWeaponry.textColors.CURSED},
                       [3] = {t = "Can only be fired when 0 bullets are in the cylinder and costs 50 HP", c = CustomizableWeaponry.textColors.CURSED}
                    }
end

function att:attachFunc()
	self.PrintName = "M629"
	self.Trivia = {text = "Mai Zenin's cursed technique allows her to create matter out of nothing at the cost of most of her cursed energy and severe backlash.", x = -850, y = -400}

	self.MaiOriginalThink = self.IndividualThink
    self.CursedDamage = self.Damage
    self.CursedRecoil = self.Recoil
    self.AbilityCharged = false
    self.MaiLastClip = self:Clip1() or 0
    self.SemiAutoTriggerBuffer = 0.5

	self.IndividualThink = function(wep)
		if wep.MaiOriginalThink and wep.MaiOriginalThink ~= wep.IndividualThink then
            wep.MaiOriginalThink(wep)
        end
		local owner = wep.Owner
        local clip = wep:Clip1() or 0
        local previousClip = wep.MaiLastClip or clip

        if clip == 0 then
            self.SemiAutoTriggerBuffer = 0
        else
            self.SemiAutoTriggerBuffer = 0.5
        end

        --Can fire extra reinforced bullet at the cost of health
        if wep.Owner:KeyPressed(IN_ATTACK) and CurTime() >= wep:GetNextPrimaryFire() and clip == 0 and previousClip == 0 and wep.AbilityCharged then
            local healthAfterCost = owner:Health() - 50
            wep.SemiAutoTriggerBuffer = 0
            wep:SetClip1(1)
            owner:SetHealth(math.max(healthAfterCost, 0))
            wep.Damage = wep.CursedDamage * 2  
            wep.Recoil = wep.CursedRecoil * 2
            wep.FireSound = "CW_BER_BULL_FIRE"
            wep.AbilityCharged = false -- Makes it so this can only happen once per reload
            wep:PrimaryAttack()

            if SERVER and healthAfterCost <= 0 then
                owner:Kill()
            end
        end
        wep.Damage = wep.CursedDamage -- Resets damage after firing the reinforced bullet
        wep.Recoil = wep.CursedRecoil -- Resets recoil after firing the reinforced bullet

        -- Once-per-reload logic
        if wep.ReloadDelay then
            if not wep.MaiReloading then
                wep.MaiReloadStartedEmpty = (clip == 0) or wep.WasEmpty == true
            end
            wep.MaiReloading = true
            return
        end

        if wep.MaiReloading then
            wep.MaiReloading = false
            if wep.MaiReloadStartedEmpty and clip >= wep.Primary.ClipSize then
                wep.AbilityCharged = true
            end
            wep.MaiReloadStartedEmpty = nil
        end

        wep.MaiLastClip = clip
	end

end

function att:detachFunc()
	self.PrintName = "M29"
	self.Trivia = {text = "Fire quickly for double-action or slower for single-action.", x = -350, y = -400}

	if self.MaiOriginalThink then
        self.IndividualThink = self.MaiOriginalThink
    end

	self.MaiOriginalThink = nil
	self.MaiReloading = nil
    self.MaiReloadStartedEmpty = nil
    self.MaiLastClip = nil
end

CustomizableWeaponry:registerAttachment(att)
local att = {}
att.name = "too_dungeon_eagle"
att.displayName = "Dungeon Eagle Conversion"
att.displayNameShort = "Dungeon"

att.statModifiers = {DamageMult = 6 / 79,
	FireDelayMult = 53 / 300,
	ReloadSpeedMult = 0.57}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Something something charged shot lol", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self.PrintName = "Dungeon Eagle"

	self.Primary.ClipSize = 9
	self.Primary.ClipSize_Orig = 9
	self:loadWeapon()

    if self.ChargeFire then
        return
    end

	--Test charge shot code!
    self.ChargeFire = true
	self.ChargeStart = nil
	self.ChargeDamage = self.Damage
	self.ChargeOriginalThink = self.IndividualThink
    self.ChargeOriginalPrimaryAttack = self.PrimaryAttack

    self.PrimaryAttack = function(weapon)
        if weapon.ChargeStart then
            return
        end

        if not weapon:canFireWeapon(1) then
            return
        end

        weapon.ChargeStart = CurTime()
            weapon.ChargeSoundPlayed = false
        weapon:SetNextPrimaryFire(CurTime() + 0.05)
    end

    self.IndividualThink = function(weapon)
        if weapon.ChargeOriginalThink and weapon.ChargeOriginalThink ~= weapon.IndividualThink then
            weapon.ChargeOriginalThink(weapon)
        end

        if not weapon.ChargeStart then
            return
        end

        local chargeTime = CurTime() - weapon.ChargeStart

        if weapon.Owner:KeyDown(IN_ATTACK) then
            if not weapon.ChargeSoundPlayed and chargeTime >= 0.7 then
                weapon:EmitSound("weapons/pinpull.wav", 75, 100, 1, CHAN_WEAPON)
                weapon.ChargeSoundPlayed = true
            end

            return
        end

        weapon.ChargeStart = nil

        if chargeTime >= 0.7 then
            weapon.Damage = weapon.ChargeDamage * 2
			weapon.FireSound = "CW_DEAGLE_FIRE"
			weapon.FireSoundSuppressed = "CW_DEAGLE_FIRE_SUPPRESSED"
		else
			weapon.FireSound = "CW_USP_FIRE"
			weapon.FireSoundSuppressed = "CW_GLOCK17_FIRE_SUPPRESSED"
        end

        if weapon.Owner:KeyReleased(IN_ATTACK) then
            weapon.ChargeOriginalPrimaryAttack(weapon)
        end

        weapon.Damage = weapon.ChargeDamage
    end
end

function att:detachFunc()
	self.PrintName = "Dungeon Eagle"

	local clip = self:Clip1() or 0

	if clip >= 9 then
		self:SetClip1(self.Primary.ClipSize_ORIG_REAL + clip - 9)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self:loadWeapon()

    self.FireSound = "CW_DEAGLE_FIRE"
    self.FireSoundSuppressed = "CW_DEAGLE_FIRE_SUPPRESSED"

    self.ChargeFire = nil
    self.ChargeStart = nil

    if self.ChargeOriginalThink then
        self.IndividualThink = self.ChargeOriginalThink
    end

    if self.ChargeOriginalPrimaryAttack then
        self.PrimaryAttack = self.ChargeOriginalPrimaryAttack
    end

    self.ChargeOriginalThink = nil
    self.ChargeOriginalPrimaryAttack = nil
end

CustomizableWeaponry:registerAttachment(att)
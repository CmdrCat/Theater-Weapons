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
        weapon:SetNextPrimaryFire(CurTime() + 0.05)
    end

    self.IndividualThink = function(weapon)
        if weapon.ChargeOriginalThink and weapon.ChargeOriginalThink ~= weapon.IndividualThink then
            weapon.ChargeOriginalThink(weapon)
        end

        if not weapon.ChargeStart then
            return
        end

        if weapon.Owner:KeyDown(IN_ATTACK) then
            return
        end

        local chargeTime = CurTime() - weapon.ChargeStart
        weapon.ChargeStart = nil

        weapon.Damage = weapon.ChargeDamage

        if chargeTime >= 0.7 then
            weapon.Damage = 85 * 2
			weapon.FireSound = "CW_DEAGLE_FIRE"
			weapon.FireSoundSuppressed = "CW_DEAGLE_FIRE_SUPPRESSED"
		else
			weapon.Damage = 85
			weapon.FireSound = "CW_USP_FIRE"
			weapon.FireSoundSuppressed = "CW_GLOCK17_FIRE_SUPPRESSED"
        end

        weapon.ChargeOriginalPrimaryAttack(weapon)
        weapon.Damage = 85
    end

    if SERVER then
		return
	end

    wep.CW_VM:SetSubMaterial(0, "")

    for i, index in ipairs(self.MaterialIndexSecondary) do
		wep.CW_VM:SetSubMaterial(index, "metal2a")
	end
end

function att:detachFunc()
	self.PrintName = "Dungeon Eagle"

	self.Primary.ClipSize = 7
	self.Primary.ClipSize_Orig = 7
	self:unloadWeaponPartially()

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

    if SERVER then
		return
	end

	for i, index in ipairs(self.MaterialIndexSecondary) do
		wep.CW_VM:SetSubMaterial(index, "")
	end
	wep.CW_VM:SetSubMaterial(0, "")
end

CustomizableWeaponry:registerAttachment(att)
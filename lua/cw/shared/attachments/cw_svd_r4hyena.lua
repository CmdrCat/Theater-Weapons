local att = {}
att.name = "cw_svd_r4hyena"
att.displayName = "R-4 Hyena Conversion"
att.displayNameShort = "Hyena"
att.SpeedDec = 100

att.statModifiers = {DamageMult = 3 / 70,
FireDelayMult = 47 / 38,
RecoilMult = 1.92,
HipSpreadMult = 0.11,
MaxSpreadIncMult = 0.75,
VelocitySensitivityMult = 0.76}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Fires armor-piercing rounds coated in a high-ignition thermite compound to ignite targets", c = CustomizableWeaponry.textColors.VPOSITIVE},
					   [2] = {t = "Decreases capacity to 8 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [5] = {t = "Decreases damage fall off by 5%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.Primary.Ammo = "9x70MM"
	if IsValid(self.Owner) and self.Owner.GiveAmmo then
		self.Owner:GiveAmmo(16, "9x70MM", true)
	end
	self.Primary.ClipSize = 8
	self.Primary.ClipSize_Orig = 8
	self:unloadWeaponPartially()
	self.PrintName = "R-4 Hyena"
	self.Trivia = {text = "A heavy, large-caliber marksman rifle bridging the gap between precision and sheer stopping power.", x = -200, y = -450}
	self.FireSound = "K82.FIRE"
	self.Shell = "mainshell"
	self.ShellScale = 1.18

	if SERVER then
		if not self.HyenaIgniteHook then
			hook.Add("EntityTakeDamage", "CW20_HyenaIgnite", function(target, dmginfo)
				if not IsValid(target) or not (target:IsPlayer() or target:IsNPC()) then return end
				if not IsValid(dmginfo) then return end

				local attacker = dmginfo:GetAttacker()
				if not IsValid(attacker) or attacker == target then return end

				local wep = NULL
				if attacker and attacker.GetActiveWeapon then
					wep = attacker:GetActiveWeapon()
				end
				if not IsValid(wep) or not wep.CW20Weapon then return end
				if not wep.ActiveAttachments or not wep.ActiveAttachments.cw_svd_r4hyena then return end

				target:Ignite(3, 0)
			end)
			self.HyenaIgniteHook = true
		end
	end

	if CLIENT then
		for i, index in ipairs(self.MaterialIndexPrimary) do
			wep.CW_VM:SetSubMaterial(index, "models/wystan/attachments/heavy_muzzle_brake/body")
		end
	end
end

function att:detachFunc()
	local clip = self:Clip1() or 0

	if clip >= 8 then
		self:SetClip1(10 + clip - 8)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.PrintName = "SVD"
	self.Trivia = {text = "Developed in the Soviet Union, this marksman rifle is used by militaries and insurgencies alike.", x = -200, y = -450}
	self.FireSound = "CW_SVD_OFFICIAL_FIRE"
	self.Primary.Ammo = "7.62x54MMR"
	self.Shell = "sfkm762r"
	self.ShellScale = 1

	if SERVER and self.HyenaIgniteHook then
		hook.Remove("EntityTakeDamage", "CW20_HyenaIgnite")
		self.HyenaIgniteHook = nil
	end

	if CLIENT then
		for i, index in ipairs(self.MaterialIndexPrimary) do
			wep.CW_VM:SetSubMaterial(index, "")
		end
		wep.CW_VM:SetSubMaterial(0, "")
	end
end

CustomizableWeaponry:registerAttachment(att)

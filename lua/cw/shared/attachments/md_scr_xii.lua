local att = {}
att.name = "md_scr_xii"
att.displayName = "SCR XII"
att.displayNameShort = "SCR XII"
att.SpeedDec = -15

att.statModifiers = {DamageMult = -17 / 21,
					 FireDelayMult = 159 / 466,
					 HipSpreadMult = -1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/scrxii")
	att.description = {[1] = {t = "Converts to a semi-automatic, 12 Gauge shotgun", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Decreases capacity to 5 rounds", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [3] = {t = "Decreases effective range by 33 M", c = CustomizableWeaponry.textColors.NEGATIVE},
					   [4] = {t = "Increases damage fall off by 35%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()

	self.ClumpSpread = 0.035
	self.Shots = 12

	self.CrosshairParts = {left = false, right = false, upper = false, lower = false}
	self.Shell = "shotshell"
	self.ShellScale = 0.7
	self.shellTable = CustomizableWeaponry.shells:getShell(self.Shell)

	self.MuzzleEffect = "muzzleflash_suppressed"

	self.FireSound = "CW_SERBU_SHORTY_FIRE"
	self.FireSoundSuppressed = "CW_SAIGA12K_FIRE_SUPPRESSED"

	self.Primary.Ammo = "12 Gauge"
	if IsValid(self.Owner) and self.Owner.GiveAmmo then
		self.Owner:GiveAmmo(60, "12 Gauge", true)
	end
	self.Primary.ClipSize = 5
	self.Primary.ClipSize_Orig = 5
	self:unloadWeaponPartially()

	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
	end
	if self.BulletBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletBoneName), Vector(0.009, 0.009, 0.009))
	end

	if self.BulletBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletBoneName), Vector(0.009, 0.009, 0.009))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.md_scr_xii then
		local ent = self.AttachmentModelsVM.md_scr_xii.ent
		if not IsValid(ent) then return end

		local magBone = ent:LookupBone("Saiga_magazine")
		local boneCount = ent:GetBoneCount()

		for i = 0, boneCount - 1 do
			local bone = ent:GetBoneName(i)
			local id = ent:LookupBone(bone)

			if id and bone ~= "Saiga_magazine" then
				ent:ManipulateBoneScale(id, Vector(0.001, 0.001, 0.001))
				--ent:ManipulateBoneAngles(id, Angle(0, 90, 0))
				ent:ManipulateBonePosition(id, Vector(0, 0, -100))
			end
		end

		if magBone then
			ent:ManipulateBoneScale(magBone, Vector(1, 1, 1))
			--ent:ManipulateBoneAngles(magBone, Angle(0, -90, 0))
			--ent:ManipulateBonePosition(magBone, Vector(-0.53, 0.45, 0))
			ent:ManipulateBonePosition(magBone, Vector(0, 0, 0))
		end
	end
end

function att:detachFunc()

	self.ClumpSpread = nil
	self.Shots = 1

	self.CrosshairParts = {left = true, right = true, upper = true, lower = true}
	self.Shell = "mainshell"
	self.ShellScale = 0.69
	self.shellTable = CustomizableWeaponry.shells:getShell(self.Shell)

	self.MuzzleEffect = "muzzleflash_suppressed"

	self.FireSound = "CW_SCARH_FIRE"
	self.FireSoundSuppressed = "CW_TOO_G3A3_FIRE_SUPPRESSED"

	self.Primary.Ammo = "7.62x51MM"

	local clip = self:Clip1() or 0

	if clip >= 5 then
		self:SetClip1(20 + clip - 5)
	end

	self:CycleFiremodes()
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL


	if self.MagBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
	end
	if self.BulletBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BulletBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
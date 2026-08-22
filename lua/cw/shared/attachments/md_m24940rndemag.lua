local att = {}
att.name = "md_m24940rndemag"
att.displayName = "40-Round E-Magazine"
att.displayNameShort = "40 RND"
att.isBG = true
att.SpeedDec = -15

att.statModifiers = {ReloadSpeedMult = 1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/emag/upgr_emag")
	att.description = {[1] = {t = "Decreases capacity to 40 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Primary.ClipSize = 40
	self.Primary.ClipSize_Orig = 40
	
	self:unloadWeaponPartially()
	
	self.Sounds = {draw = {{time = 0.1, sound = "CW_FOLEY_LIGHT"},
	{time = 0.65, sound = "CW_M249_OFFICIAL_BOLTBACK"},
	{time = 0.82, sound = "CW_M249_OFFICIAL_BOLTRELEASE"}},

	reload = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 1.8, sound = "CW_M249_STANAG_MAGOUT"},
	{time = 2.1, sound = "CW_FOLEY_LIGHT"},
	{time = 3.1, sound = "CW_FOLEY_LIGHT"},
	{time = 4.5, sound = "CW_M249_STANAG_MAGIN"},
	{time = 6.7, sound = "CW_FOLEY_LIGHT"}},
	
	reload2 = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 0.8, sound = "CW_M249_OFFICIAL_BOLTBACK"},
	{time = 1.3, sound = "CW_M249_OFFICIAL_BOLTRELEASE"},
	{time = 1.7, sound = "CW_FOLEY_LIGHT"},
	{time = 3.3, sound = "CW_M249_STANAG_MAGOUT"},
	{time = 3.6, sound = "CW_FOLEY_LIGHT"},
	{time = 4.6, sound = "CW_FOLEY_LIGHT"},
	{time = 6, sound = "CW_M249_STANAG_MAGIN"},
	{time = 8.3, sound = "CW_FOLEY_LIGHT"}}}

	-- Allows this attachment to enable solo reload-down VM movement
	if CLIENT then
		--Enables weapon VM to go offscreen to hide reload
		self.allowSoloReloadDown = true

		--NO BULLET BELT
		self.forceRemoveRounds = true

		self.IndividualThink = function(wep, ...)
			if wep._orig_IndividualThink then
				wep._orig_IndividualThink(wep, ...)
			end

			if wep.forceRemoveRounds and wep.adjustVisibleRounds then
				wep:adjustVisibleRounds(0)
			end
		end
	end

	if CLIENT and self.CW_VM and IsValid(self.CW_VM) then
		if self.MagBoneName then
			self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(0.009, 0.009, 0.009))
		end

		if self.RoundBeltBoneNames then
			for i, bullet in ipairs(self.RoundBeltBoneNames) do
				local b = self.CW_VM:LookupBone(bullet)
				if type(b) == "number" and b ~= -1 then
					self.CW_VM:ManipulateBoneScale(b, Vector(0.009, 0.009, 0.009))
				end
			end
		end
	end
end

function att:detachFunc()
	local clip = self:Clip1() or 0

	if clip == 40 then
		self:SetClip1(200)
	end 

	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	self.Sounds = {draw = {{time = 0.1, sound = "CW_FOLEY_LIGHT"},
	{time = 0.65, sound = "CW_M249_OFFICIAL_BOLTBACK"},
	{time = 0.82, sound = "CW_M249_OFFICIAL_BOLTRELEASE"}},

	reload = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 0.85, sound = "CW_M249_OFFICIAL_COVEROPEN"},
	{time = 1.8, sound = "CW_M249_OFFICIAL_MAGOUT"},
	{time = 2.1, sound = "CW_FOLEY_LIGHT"},
	{time = 2.62, sound = "CW_M249_OFFICIAL_MAGDRAW"},
	{time = 4, sound = "CW_M249_OFFICIAL_MAGIN"},
	{time = 4.2, sound = "CW_FOLEY_LIGHT"},
	{time = 4.65, sound = "CW_M249_OFFICIAL_BULLETIN"},
	{time = 5.2, sound = "CW_FOLEY_LIGHT"},
	{time = 5.9, sound = "CW_M249_OFFICIAL_COVERCLOSE"},
	{time = 6.7, sound = "CW_FOLEY_LIGHT"}},
	
	reload2 = {{time = 0.2, sound = "CW_FOLEY_LIGHT"},
	{time = 0.8, sound = "CW_M249_OFFICIAL_BOLTBACK"},
	{time = 1, sound = "CW_M249_OFFICIAL_BOLTRELEASE"},
	{time = 2.53, sound = "CW_M249_OFFICIAL_COVEROPEN"},
	{time = 3.58, sound = "CW_M249_OFFICIAL_MAGOUT"},
	{time = 3.9, sound = "CW_FOLEY_LIGHT"},
	{time = 4.3, sound = "CW_M249_OFFICIAL_MAGDRAW"},
	{time = 5.9, sound = "CW_M249_OFFICIAL_MAGIN"},
	{time = 6.2, sound = "CW_FOLEY_LIGHT"},
	{time = 6.52, sound = "CW_M249_OFFICIAL_BULLETIN"},
	{time = 7.6, sound = "CW_M249_OFFICIAL_COVERCLOSE"},
	{time = 8.3, sound = "CW_FOLEY_LIGHT"}}}

	--Disables offscreen reload
	if CLIENT then
		self.allowSoloReloadDown = nil
	end

	if CLIENT and self.CW_VM and IsValid(self.CW_VM) then
		if self.MagBoneName then
			self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.MagBoneName), Vector(1, 1, 1))
		end

		if self.RoundBeltBoneNames then
			for i, bullet in ipairs(self.RoundBeltBoneNames) do
				local b = self.CW_VM:LookupBone(bullet)
				if type(b) == "number" and b ~= -1 then
					self.CW_VM:ManipulateBoneScale(b, Vector(1, 1, 1))
				end
			end
		end
	end

	--HELLO BOOLETS
	self.forceRemoveRounds = false

	if CLIENT and IsValid(self) and self.adjustVisibleRounds then
		if self.initBeltBones then
			self:initBeltBones()
		end

		local reserve = 0
		if IsValid(self.Owner) then
			reserve = self.Owner:GetAmmoCount(self.Primary.Ammo) or 0
		end

		local clip = 0
		if self.Clip1 then
			clip = self:Clip1() or 0
		end

		self:adjustVisibleRounds(reserve + clip)
	end

	-- reattach sound callbacks so reload triggers adjustVisibleRounds again
	if CLIENT and self.Sounds and self.Sounds.reload and self.Sounds.reload[5] then
		self.Sounds.reload[5].callback = function()
			if IsValid(self) and self.adjustVisibleRounds then
				local r = 0
				if IsValid(self.Owner) then r = self.Owner:GetAmmoCount(self.Primary.Ammo) or 0 end
				local c = self:Clip1() or 0
				self:adjustVisibleRounds(r + c)
			end
		end
	end

	if CLIENT and self.Sounds and self.Sounds.reload2 and self.Sounds.reload2[7] then
		self.Sounds.reload2[7].callback = function()
			if IsValid(self) and self.adjustVisibleRounds then
				local r = 0
				if IsValid(self.Owner) then r = self.Owner:GetAmmoCount(self.Primary.Ammo) or 0 end
				local c = self:Clip1() or 0
				self:adjustVisibleRounds(r + c)
			end
		end
	end
end

CustomizableWeaponry:registerAttachment(att)
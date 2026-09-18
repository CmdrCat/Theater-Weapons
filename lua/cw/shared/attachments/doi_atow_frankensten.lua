local att = {}
att.name = "doi_atow_frankensten"
att.displayName = "FrankenSTEN-SD"
att.displayNameShort = "Frank"
att.isSuppressor = true

att.statModifiers = {FireDelayMult = -29 / 85,
					 DamageMult = -3 / 26,
					 RecoilMult = 0.25,
					 VelocitySensitivityMult = -0.5}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp5_sdbarrel")
	att.description = {[1] = {t = "AR receiver and integrated suppressor allows for a higher fire rate at the cost of lethality.", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Increases damage fall off by 23%", c = CustomizableWeaponry.textColors.NEGATIVE}
					  }
end

function att:attachFunc()

	self.SightWithRail = false
	self.FrankenstenPos = Vector(0, -4, 0)
	self.FrankenstenAng = Vector(0, 0, 7)
	self.ForegripOverride = true
    self.ForegripParent = "frank"
	self:setupCurrentIronsights(self.FrankIronPos, self.FrankIronAng)
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("FrankIron")
	else
		self:updateIronsights("FrankReflex")
	end
	self.dt.Suppressed = true
	self.Chamberable = true

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(0.001, 0.001, 0.001))
	end
	if self.BoltBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BoltBoneName), Vector(0.001, 0.001, 0.001))
	end

	if CLIENT and self.AttachmentModelsVM and self.AttachmentModelsVM.doi_atow_frankensten then
		local models = self.AttachmentModelsVM.doi_atow_frankensten.models

		local ar15 = models[1] and models[1].ent
		local mp5 = models[2] and models[2].ent

		if IsValid(ar15) then
			ar15:SetBodygroup(1, 1)
			ar15:SetBodygroup(3, 5)
			ar15:SetBodygroup(4, 2)
			ar15:SetBodygroup(5, 2)
		end

		if IsValid(mp5) then
			mp5:SetBodygroup(2, 1)
			local handguardBone = mp5:LookupBone("mp5ssdhandguard")
			local boneCount = mp5:GetBoneCount()

			for i = 0, boneCount - 1 do
				local bone = mp5:GetBoneName(i)
				local id = mp5:LookupBone(bone)

				if id and bone ~= "mp5ssdhandguard" then
					mp5:ManipulateBoneScale(id, Vector(0.001, 0.001, 0.001))
					mp5:ManipulateBoneAngles(id, Angle(-90, 0, 0))
					--mp5:ManipulateBonePosition(id, Vector(0, 0, -1000))
				end
			end

			if handguardBone then
				mp5:ManipulateBoneScale(handguardBone, Vector(1, 1, 1))
				mp5:ManipulateBoneAngles(handguardBone, Angle(180, 0, 0))
				--mp5:ManipulateBonePosition(handguardBone, Vector(-0.53, 0.45, 0))
				--mp5:ManipulateBonePosition(handguardBone, Vector(0, 0, 1000))
			end
		end
	end
end

function att:detachFunc()

	self.SightWithRail = true
	self.FrankenstenPos = nil
    self.FrankenstenAng = nil
	self.ForegripOverride = true
    self.ForegripParent = "none"
	self:resetSuppressorStatus()
	self:revertToOriginalIronsights()
	self.Chamberable = false

	local clip = self:Clip1() or 0

	if self.StockBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.StockBoneName), Vector(1, 1, 1))
	end
	if self.BoltBoneName then
		self.CW_VM:ManipulateBoneScale(self.CW_VM:LookupBone(self.BoltBoneName), Vector(1, 1, 1))
	end
end

CustomizableWeaponry:registerAttachment(att)
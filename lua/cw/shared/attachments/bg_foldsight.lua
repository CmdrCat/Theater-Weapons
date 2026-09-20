local att = {}
att.name = "bg_foldsight"
att.displayName = "Folding Rear Sight"
att.displayNameShort = "Folding"
att.isBG = true
att.isSight = true
att.aimPos = {"FoldSightPos", "FoldSightAng"}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/foldsight")
	att.description = {[1] = {t = "A folding variant of regular ironsights.", c = CustomizableWeaponry.textColors.COSMETIC},
					   [2] = {t = "Can Tac Stance. Double-tap use key to toggle.", c = CustomizableWeaponry.textColors.POSITIVE}}
	
	function att:attachFunc()
		self:setBodygroup(self.SightBGs.main, self.SightBGs.foldsight)
	end
end

CustomizableWeaponry:registerAttachment(att)
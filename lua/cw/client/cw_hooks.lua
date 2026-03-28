function CustomizableWeaponry.InitPostEntity()
	local ply = LocalPlayer()

	CustomizableWeaponry.initCWVariables(ply)
end

hook.Add("InitPostEntity", "CustomizableWeaponry.InitPostEntity", CustomizableWeaponry.InitPostEntity)

hook.Add("EntityTakeDamage", "AnotherDamageMultiplier", function(target, dmginfo)
	if dmginfo:IsDamageType(DMG_POISON) then
		local PoisonCrab = (dmginfo:GetAttacker():GetClass() == "npc_headcrab_black" || dmginfo:GetAttacker():GetClass() == "npc_headcrab_poison")
		if PoisonCrab then
			if target:IsPlayer() and Player_PoisonCrabMul:GetFloat() >= 0 then
				dmginfo:SetDamage(target:GetMaxHealth() * Player_PoisonCrabMul:GetFloat())
			elseif target:IsNPC() and NPC_PoisonCrabMul:GetFloat() >= 0 then
				dmginfo:SetDamage(target:GetMaxHealth() * NPC_PoisonCrabMul:GetFloat())
			end
		end
	elseif dmginfo:IsExplosionDamage() then
		if target:IsPlayer() and Player_ExplosionMul:GetFloat() >= 0 then
			dmginfo:ScaleDamage(Player_ExplosionMul:GetFloat())
		elseif target:IsNPC() and NPC_ExplosionMul:GetFloat() >= 0 then
			dmginfo:ScaleDamage(NPC_ExplosionMul:GetFloat())
		end
	end
end)
function PlayerDMGMult(self, ply, hitgroup, dmginfo)
	local PlayerDamageMul = 1
	if (hitgroup == HITGROUP_HEAD) then
		PlayerDamageMul = PlayerDamageMul * 1.2
	end
	if (hitgroup == HITGROUP_LEFTLEG || hitgroup == HITGROUP_RIGHTLEG) then
		PlayerDamageMul = PlayerDamageMul * 0.75
	end
	dmginfo:ScaleDamage(PlayerDamageMul)
end

function NPCDMGMult(self, npc, hitgroup, dmginfo)
	NPCDamageMul = 0.25
	if (hitgroup == HITGROUP_HEAD) then
		NPCDamageMul = NPCDamageMul * 12
	end
	if (hitgroup == HITGROUP_LEFTLEG || hitgroup == HITGROUP_RIGHTLEG) then
		NPCDamageMul = NPCDamageMul * 0.75
	end
	dmginfo:ScaleDamage(NPCDamageMul)
end

function ReplaceHook() -- Bypasses base game's multipliers
	if GAMEMODE.ScalePlayerDamage == gamemode.Get("base").ScalePlayerDamage then
		GAMEMODE.ScalePlayerDamage = PlayerDMGMult
	end
	if GAMEMODE.ScaleNPCDamage == gamemode.Get("base").ScaleNPCDamage then
		GAMEMODE.ScaleNPCDamage = NPCDMGMult
	end
end

hook.Add("PostGamemodeLoaded", "limb_damage_multiplier", ReplaceHook)
hook.Add("OnReloaded", "limb_damage_multiplier", function()
	timer.Simple(0, ReplaceHook)
end)
hook.Add( "PreRegisterSWEP", "cw_mult", function( swep )
    if swep.Base ~= "cw_base" then return end

    swep.bulletCallback = function( att, tr, dmg )
        if tr.HitGroup == HITGROUP_HEAD then
            dmg:ScaleDamage( 0.75 ) -- Default headshot damage multiplier is 2, so we're multiplying 2 by the value here (0.75) to get 1.5
        end
		if (tr.HitGroup == HITGROUP_LEFTARM || tr.HitGroup == HITGROUP_RIGHTARM) then
			dmg:ScaleDamage( 4 ) -- Default arm damage multiplier is 0.25, so we're multiplying 0.25 by the value here (4) to get 1
		end
		if (tr.HitGroup == HITGROUP_LEFTLEG || tr.HitGroup == HITGROUP_RIGHTLEG) then
			dmg:ScaleDamage( 3 ) -- Default leg damage multiplier is 0.25, so we're multiplying 0.25 by the value here (3) to get 0.75
		end
    end
end )

/*
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
*/
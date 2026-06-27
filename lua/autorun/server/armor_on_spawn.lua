local MaxArmor = 100 -- Thanks, Julie
hook.Add("PlayerSpawn", "armor_on_spawn", function(ply)
    timer.Simple(0.1, function()
        if IsValid(ply) then
            ply:SetMaxArmor(100)
            ply:SetArmor(100)
        end
    end)
end)
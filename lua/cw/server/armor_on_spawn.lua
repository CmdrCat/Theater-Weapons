local MaxArmor = 100 -- Thanks, Julie
hook.Add("PlayerLoadout", "ArmorOnSpawn", function(ply)
    timer.Simple(0, function()
        ply:SetMaxArmor(MaxArmor)
        ply:SetArmor(MaxArmor)
    end)
end)
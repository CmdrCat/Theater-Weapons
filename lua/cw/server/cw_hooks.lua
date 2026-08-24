function CustomizableWeaponry.PlayerInitialSpawn(ply)
	timer.Simple(3, function()
		CustomizableWeaponry.postSpawn(ply)
	end)
end

hook.Add("PlayerInitialSpawn", "CustomizableWeaponry.PlayerInitialSpawn", CustomizableWeaponry.PlayerInitialSpawn)

function CustomizableWeaponry.PlayerSpawn(ply)
	CustomizableWeaponry.postSpawn(ply)
end

hook.Add("PlayerSpawn", "CustomizableWeaponry.PlayerSpawn", CustomizableWeaponry.PlayerSpawn)
ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "84MM HE Round"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

function ENT:SetupDataTables()
	self:DTVar("Bool", 0, "Misfire")
end
ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "12 Gauge Explosive Slug"
ENT.Author = "CatGopher98"
ENT.Information = "A hollow 12 gauge slug filled with explosives."
ENT.Spawnable = false
ENT.AdminSpawnable = false 

function ENT:SetupDataTables()
	self:DTVar("Bool", 0, "Misfire")
end
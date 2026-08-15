AddCSLuaFile()

CustomizableWeaponry.callbacks = {}
CustomizableWeaponry.callbacks.categories = {}
CustomizableWeaponry.markedPlayers = CustomizableWeaponry.markedPlayers or {}
CustomizableWeaponry.MarkGlowSize = CustomizableWeaponry.MarkGlowSize or 2

if SERVER then
	util.AddNetworkString("CW20_MARKED_PLAYER")
	util.AddNetworkString("CW20_CLEAR_MARKED_PLAYER")
end

function CustomizableWeaponry:clearMarkedPlayer(target)
	if not IsValid(target) or not (target:IsPlayer() or target:IsNPC()) then
		return
	end

	if SERVER then
		CustomizableWeaponry.markedPlayers[target] = nil
		net.Start("CW20_CLEAR_MARKED_PLAYER")
			net.WriteEntity(target)
		net.Broadcast()
		return
	end

	CustomizableWeaponry.markedPlayers = CustomizableWeaponry.markedPlayers or {}
	CustomizableWeaponry.markedPlayers[target] = nil
end

function CustomizableWeaponry:markPlayerFor(target, duration, color, damageScale)
	if not IsValid(target) or not (target:IsPlayer() or target:IsNPC()) then
		return
	end

	duration = tonumber(duration) or 0
	color = color or Color(255, 0, 0, 255)
	damageScale = tonumber(damageScale) or 1

	if SERVER then
		CustomizableWeaponry.markedPlayers = CustomizableWeaponry.markedPlayers or {}
		CustomizableWeaponry.markedPlayers[target] = {
			expires = CurTime() + duration,
			color = color,
			damageScale = damageScale
		}

		net.Start("CW20_MARKED_PLAYER")
			net.WriteEntity(target)
			net.WriteFloat(duration)
			net.WriteColor(color)
			net.WriteFloat(damageScale)
		net.Broadcast()
		return
	end

	self.markedPlayers = self.markedPlayers or {}
	self.markedPlayers[target] = {
		expires = CurTime() + duration,
		color = color,
		damageScale = damageScale
	}
end

if SERVER then
	hook.Add("PlayerDeath", "CW20_marked_players_cleanup", function(victim)
		if IsValid(victim) then
			CustomizableWeaponry:clearMarkedPlayer(victim)
		end
	end)

	hook.Add("OnNPCKilled", "CW20_marked_npcs_cleanup", function(victim)
		if IsValid(victim) then
			CustomizableWeaponry:clearMarkedPlayer(victim)
		end
	end)

	hook.Add("EntityTakeDamage", "CW20_marked_players_damage", function(target, dmginfo)
		if not IsValid(target) or not (target:IsPlayer() or target:IsNPC()) then return end
		if not CustomizableWeaponry.markedPlayers then return end

		local mark = CustomizableWeaponry.markedPlayers[target]
		if not mark then return end
		if CurTime() >= (mark.expires or 0) then
			CustomizableWeaponry:clearMarkedPlayer(target)
			return
		end

		local damageScale = tonumber(mark.damageScale) or 1
		dmginfo:ScaleDamage(damageScale)
	end)
end

if CLIENT then
	CustomizableWeaponry.markedPlayers = CustomizableWeaponry.markedPlayers or {}

	net.Receive("CW20_MARKED_PLAYER", function()
		local target = net.ReadEntity()
		local duration = net.ReadFloat()
		local color = net.ReadColor()
		local damageScale = net.ReadFloat()

		if IsValid(target) then
			CustomizableWeaponry.markedPlayers[target] = {
				expires = CurTime() + duration,
				color = color,
				damageScale = damageScale
			}
		end
	end)

	net.Receive("CW20_CLEAR_MARKED_PLAYER", function()
		local target = net.ReadEntity()
		if IsValid(target) then
			CustomizableWeaponry.markedPlayers[target] = nil
		end
	end)

	hook.Add("PlayerDeath", "CW20_marked_players_cleanup_client", function(victim)
		if IsValid(victim) then
			CustomizableWeaponry.markedPlayers[victim] = nil
		end
	end)

	hook.Add("PreDrawHalos", "CW20_marked_players", function()
		local targets = {}
		local haloColor = Color(255, 0, 0, 255)

		for ply, data in pairs(CustomizableWeaponry.markedPlayers) do
			if IsValid(ply) then
				if CurTime() < (data.expires or 0) then
					targets[#targets + 1] = ply
					haloColor = data.color or haloColor
				else
					CustomizableWeaponry.markedPlayers[ply] = nil
				end
			else
				CustomizableWeaponry.markedPlayers[ply] = nil
			end
		end

		if #targets > 0 then
			halo.Add(targets, haloColor, CustomizableWeaponry.MarkGlowSize, CustomizableWeaponry.MarkGlowSize, 5, true, true)
		end
	end)
end

-- adds a new callback function to an EXISTING callback category
function CustomizableWeaponry.callbacks:addNew(category, callbackName, func)
	-- don't add nil callbacks to a category, silly!
	if not func then
		return
	end
	
	if not self.categories[category] then
		self.categories[category] = {}
	end
	
	local cat = self.categories[category]
	
	if cat then
		cat[callbackName] = func
		--table.insert(cat, func)
	end
end

-- processes all callback functions within a certain category
-- allows to pass on a maximum of 4 args
function CustomizableWeaponry.callbacks:processCategory(category, a1, a2, a3, a4, a5)
	local cat = CustomizableWeaponry.callbacks.categories[category]
	
	local res1, res2, res3, res4, res5 = nil, nil, nil, nil, nil
	
	if cat then
		for callbackName, func in pairs(cat) do
			local r1, r2, r3, r4, r5 = func(self, a1, a2, a3, a4, a5)
			
			res1 = res1 or r1
			res2 = res2 or r2
			res3 = res3 or r3
			res4 = res4 or r4
			res5 = res5 or r5
		end
	end
	
	return res1, res2, res3, res4, res5
end
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
	CustomizableWeaponry.markedRevealPopup = CustomizableWeaponry.markedRevealPopup or {
		time = 0,
		text = "REVEALED"
	}
	CustomizableWeaponry.wetPopup = CustomizableWeaponry.wetPopup or {
		text = "WET",
		visible = false,
		inWater = false,
		start = 0,
		fadeOutStart = 0
	}

	surface.CreateFont("TheaterLockStateHUD", {
		font = "Roboto Condensed",
		size = math.Clamp(math.floor(ScrH() * 0.038), 34, 48),
		weight = 700,
		antialias = true,
		extended = true,
	})

	surface.CreateFont("TheaterLockStateHUDSmall", {
		font = "Roboto Condensed",
		size = math.Clamp(math.floor(ScrH() * 0.026), 24, 34),
		weight = 600,
		antialias = true,
		extended = true,
	})

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

			if target == LocalPlayer() then
				CustomizableWeaponry.markedRevealPopup.time = CurTime() + 2.0
				CustomizableWeaponry.markedRevealPopup.text = "REVEALED"
			end
		end
	end)

	hook.Add("HUDPaint", "CW20_marked_reveal_popup", function()
		local popup = CustomizableWeaponry.markedRevealPopup
		if not popup or popup.time <= CurTime() then return end

		local elapsed = math.max(0, popup.time - CurTime())
		local fadeIn = math.Clamp((2.0 - elapsed) / 0.3, 0, 1)
		local fadeOut = math.Clamp(elapsed / 0.3, 0, 1)
		local alpha = math.floor(255 * math.min(fadeIn, fadeOut))

		local accent = Color(95, 80, 245, alpha)
		local width = math.Clamp(math.floor(ScrW() * 0.26), 380, 500)
		local height = math.Clamp(math.floor(ScrH() * 0.06), 56, 72)
		local x = math.floor((ScrW() - width) * 0.5)
		local y = math.max(42, math.floor(ScrH() * 0.085))

		surface.SetDrawColor(7, 10, 13, math.floor(195 * (alpha / 255)))
		surface.DrawRect(x, y, width, height)

		surface.SetDrawColor(accent.r, accent.g, accent.b, alpha)
		surface.DrawOutlinedRect(x, y, width, height, 1)
		surface.DrawRect(x, y, 3, height)
		surface.DrawRect(x + width - 3, y, 3, height)

		draw.SimpleText(
			"  >>>",
			"TheaterLockStateHUDSmall",
			x + 14,
			y + height * 0.5,
			accent,
			TEXT_ALIGN_LEFT,
			TEXT_ALIGN_CENTER
		)

		draw.SimpleText(
			popup.text,
			"TheaterLockStateHUD",
			x + width * 0.5,
			y + height * 0.5,
			accent,
			TEXT_ALIGN_CENTER,
			TEXT_ALIGN_CENTER
		)

		draw.SimpleText(
			"<<<  ",
			"TheaterLockStateHUDSmall",
			x + width - 14,
			y + height * 0.5,
			accent,
			TEXT_ALIGN_RIGHT,
			TEXT_ALIGN_CENTER
		)
	end)

	hook.Add("HUDPaint", "CW20_wet_popup", function()
		local popup = CustomizableWeaponry.wetPopup
		if not popup or not popup.visible then return end

		local now = CurTime()
		local alpha = 255
		if popup.inWater then
			alpha = math.floor(255 * math.Clamp((now - popup.start) / 0.18, 0, 1))
		else
			alpha = math.floor(255 * math.max(0, 1 - ((now - popup.fadeOutStart) / 0.18)))
		end

		local accent = Color(60, 135, 255, alpha)
		local width = math.Clamp(math.floor(ScrW() * 0.26), 380, 500)
		local height = math.Clamp(math.floor(ScrH() * 0.06), 56, 72)
		local x = math.floor((ScrW() - width) * 0.5)
		local y = math.max(42, math.floor(ScrH() * 0.155))

		surface.SetDrawColor(7, 10, 13, math.floor(195 * (alpha / 255)))
		surface.DrawRect(x, y, width, height)

		surface.SetDrawColor(accent.r, accent.g, accent.b, alpha)
		surface.DrawOutlinedRect(x, y, width, height, 1)
		surface.DrawRect(x, y, 3, height)
		surface.DrawRect(x + width - 3, y, 3, height)

		draw.SimpleText(
			"  >>>",
			"TheaterLockStateHUDSmall",
			x + 14,
			y + height * 0.5,
			accent,
			TEXT_ALIGN_LEFT,
			TEXT_ALIGN_CENTER
		)

		draw.SimpleText(
			"WET",
			"TheaterLockStateHUD",
			x + width * 0.5,
			y + height * 0.5,
			accent,
			TEXT_ALIGN_CENTER,
			TEXT_ALIGN_CENTER
		)

		draw.SimpleText(
			"<<<  ",
			"TheaterLockStateHUDSmall",
			x + width - 14,
			y + height * 0.5,
			accent,
			TEXT_ALIGN_RIGHT,
			TEXT_ALIGN_CENTER
		)
	end)

	hook.Add("Think", "CW20_wet_popup_reset", function()
		local ply = LocalPlayer()
		local popup = CustomizableWeaponry.wetPopup
		if not popup or not IsValid(ply) then return end

		local inWater = ply:WaterLevel() > 0
		if inWater and not popup.inWater then
			popup.visible = true
			popup.inWater = true
			popup.start = CurTime()
			popup.fadeOutStart = 0
		elseif not inWater and popup.inWater then
			popup.inWater = false
			popup.fadeOutStart = CurTime()
		elseif not inWater and popup.visible and CurTime() - popup.fadeOutStart >= 0.18 then
			popup.visible = false
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
BF6HitmarkersInstalled = true

local flags = {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED}

local hmoverride = CreateConVar("bf6_override_enabled", "0", flags, "Override Profiteers UI settings.", 0, 1)
local hmsv = CreateConVar("bf6_override_hitmarker_enable", "1", flags, "Override bf6 Hitmarker. 0 disabled, 1 audiovisual, 2 visual only, 3 audio only.", 0, 3)
local hmscalesv = CreateConVar("bf6_override_hitmarker_scale", "1", flags, "Override Longshot indicators. 1 for all hits, 2 for kills only.", 0.25, 2.5)
local textscalesv = CreateConVar("bf6_override_hitmarker_textscale", "1", flags, "Text size", 0.25, 2.5)
local damagelogenablesv = CreateConVar("bf6_override_hitmarker_log", "1", flags, "dmg log enabled", 0, 1)
local hmpossv = CreateConVar("bf6_override_hitmarker_dynamic", "1", flags, "Override dynamic ''real'' position for hit markers.", 0, 1)

if SERVER then
    util.AddNetworkString("bf6_hitmark")

    local npcheadshotted = false -- fuck you garry

    local function hitmark(ent, dmginfo, took)
        local attacker, inflictor = dmginfo:GetAttacker(), dmginfo:GetInflictor()
        if attacker:IsVehicle() and IsValid(attacker:GetDriver()) then attacker = attacker:GetDriver() end
        local attply, vicply = attacker:IsPlayer(), ent:IsPlayer()
        if (!attply and !vicply) then return end
        if inflictor == ent or attacker == ent then return end
        local vichp = ent:Health()
        local ct = CurTime()
        if ent.phm_lastHealth and ent.phm_lastHealth == vichp and (!took and (vichp <= 0 or attacker.phm_lastMarker and attacker.phm_lastMarker > ct) or dmginfo:GetDamage() == 0 or took) then return end
        local vicnpc = ent:IsNextBot() or ent:IsNPC()

        if IsValid(ent) and IsValid(attacker) and attply then
            attacker.phm_lastMarker = ct + 0.5 -- stop fucking shooting shit you cant hurt
            local distance = ent:GetPos():Distance(attacker:GetPos())
            if dmginfo:GetDamage() == 0 then return end
            local dmg = math.Clamp(math.ceil(ent.phm_lastHealth and ent.phm_lastHealth - vichp or dmginfo:GetDamage() * 0.025), 0, 1023)
            local sentient = vicply or vicnpc
            local hitdata = 0
            if sentient then hitdata = hitdata + 1 end
            -- if (ent.LastHitGroup and ent:LastHitGroup() == HITGROUP_HEAD or npcheadshotted) then
            --     hitdata = hitdata + 4
                -- if ent.SetLastHitGroup then ent:SetLastHitGroup(HITGROUP_GENERIC) end
            -- end

            -- if you making some gamemode you can add here check for distance and give more points/moneys for long kills
            net.Start("bf6_hitmark")
            net.WriteUInt(dmg or 0, 10) -- Damage
            net.WriteBool(sentient) -- Sentient (Player or npc) or prop
            net.WriteBool(isfunction(ent.LastHitGroup) and ent:LastHitGroup() == HITGROUP_HEAD or npcheadshotted or false) -- Headshot
            net.WriteBool(bit.band(dmginfo:GetDamageType(), DMG_BURN+DMG_DIRECT) == DMG_BURN+DMG_DIRECT or false) -- Burned, done on client
            net.WriteBool((sentient and vichp <= 0) or (ent:GetNWInt("PFPropHealth", 1) <= 0) or false) -- Was killed
            net.WriteEntity(ent) -- Who
            net.Send(attacker)
            npcheadshotted = false
        end
    end

    -- fuck you garry
    hook.Add("ScaleNPCDamage", "bf6_hitmarkers_npcheadshots", function(ent, hitgroup, dmginfo)
        npcheadshotted = IsValid(ent) and IsValid(dmginfo:GetAttacker()) and dmginfo:GetAttacker():IsPlayer() and hitgroup == HITGROUP_HEAD
    end)

    hook.Add("EntityTakeDamage", "profiteers_hitmarkers", function(target, dmginfo)
        -- largely copied idea from hit numbers
        if !target:IsValid() or dmginfo:GetDamage() <= 0 then return end
        if dmginfo:GetAttacker():IsPlayer() and dmginfo:IsDamageType(DMG_BURN+DMG_SLOWBURN) then target.phm_lastAttacker = dmginfo:GetAttacker() end
        if target.phm_lastAttacker and dmginfo:IsDamageType(DMG_BURN+DMG_SLOWBURN) then
            dmginfo:SetAttacker(target.phm_lastAttacker)
        end
        target.phm_lastHealth = target:Health() or 0
    end)

    hook.Add("PostEntityTakeDamage", "bf6_hitmarkers", hitmark)
end

if CLIENT then
    local hmauth = false 
    local hm = CreateClientConVar("bf6_hitmarker_enable", "1", true, true, "Enable bf6 Hitmarker. 0 disabled, 1 audiovisual, 2 visual only, 3 audio only.", 0, 3)
    local hmscale = CreateClientConVar("bf6_hitmarker_scale", "1", true, true, "Scale", 0.25, 2.5)
    local logsize = CreateClientConVar("bf6_hitmarker_logsize", "5", true, true, "Size of damage log", 1, 20)
    local ttextscale = CreateClientConVar("bf6_hitmarker_textscale", "1", true, true, "Text size", 0.25, 2.5)
    local damagelogenable = CreateClientConVar("bf6_hitmarker_log", "1", true, true, "dmg log enabled", 0, 1)
    local hmpos = CreateClientConVar("bf6_hitmarker_dynamic", "1", true, true, "Use dynamic ''real'' position for hit markers.", 0, 1)
    
    local hmmat = Material("hitmarkers/bf6_hm_basic.png", "noclamp smooth")
    local hmmathead = Material("hitmarkers/bf6_hm_head.png", "noclamp smooth")
    local hmmatprop = Material("hitmarkers/bf6_hm_prop.png", "noclamp smooth")
    local hmmatkill = Material("hitmarkers/bf6_hm_kill.png", "noclamp smooth")
    local hmmatkillhead = Material("hitmarkers/bf6_hm_killhead.png", "noclamp smooth")
    -- local hmmatkill_additive = Material("hitmarkers/bf_hm_kill2.png", "noclamp")
    -- hmmatkill_additive:SetInt("$flags", bit.bor(hmmatkill_additive:GetInt("$flags"), 128)) -- additive

    local lasthm = 0
    local lasthmhead = false
    local lasthmprop = false
    local hmnotfirstone = false
    local lasthmtbl = {x = ScrW() * 0.5, y = ScrH() * 0.5, visible = false}
    local lastent = nil

    local lastkhm = 0

    local dmghistory = {}
    local hx, hy = 1920/2, 1080/2

    -- hush
    local function DoSize(size, scale) -- scale is 2 bit operator, first bit dimension, second indicator or hitmarker
        scale = scale or 0
        local iscale, hscale = (hmauth and indicatorscalesv or indicatorscale), (hmauth and hmscalesv or hmscale)
        return size * (bit.band(scale, 1) == 1 and (ScrH() / 480) or (ScrW() / 640)) * (bit.band(scale, 2) == 2 and iscale:GetFloat() or hscale:GetFloat())
    end

    local function generatefonts()
        surface.CreateFont("BF6_Hitmark_shadow", { font = "BF_TEXT", size = DoSize(6) * (hmauth and textscalesv or ttextscale):GetFloat(), weight = 550, blursize = 1.4, antialias = true, extended = true, shadow = false })
        surface.CreateFont("BF6_Hitmark", { font = "BF_TEXT", size = DoSize(6) * (hmauth and textscalesv or ttextscale):GetFloat(), weight = 550, blursize = 0, antialias = true, extended = true, shadow = false })
    end
    
    generatefonts()
    cvars.AddChangeCallback("bf6_hitmarker_scale", function(convar_name, value_old, value_new) generatefonts() end)
    cvars.AddChangeCallback("bf6_override_hitmarker_scale", function(convar_name, value_old, value_new) generatefonts() end)
    cvars.AddChangeCallback("bf6_hitmarker_textscale", function(convar_name, value_old, value_new) generatefonts() end)
    cvars.AddChangeCallback("bf6_override_hitmarker_textscale", function(convar_name, value_old, value_new) generatefonts() end)

    local function removefromtableshiftid(tbl, key)
        local id = tbl[key].id
        tbl[key] = nil
        for k, v in pairs(tbl) do
            if v.id > id then 
                v.id = v.id - 1
                if v.id > 0 then v.tempmove = (v.tempmove or 0) + 1 end
            end
        end
    end

    local function moveveryid(tbl)
        for k, v in pairs(tbl) do
            v.id = v.id + 1
        end
    end


    hook.Add("HUDPaint", "bf6_hitmarkers", function()
        local modee = (hmauth and hmsv:GetInt() or hm:GetInt())
        local novisual = modee == 0 or modee == 3
        local logss = (hmauth and damagelogenablesv or damagelogenable):GetBool()

        if novisual and !logss then return end

        local ct = CurTime()
        local lp = LocalPlayer()
        if !IsValid(lp) then return end
        local scrw, scrh = ScrW(), ScrH()

        if (hmauth and hmpossv or hmpos):GetBool() then
            local realx, realy = scrw / 2, scrh / 2
            local sp, sa = lp:GetShootPos(), lp:EyeAngles()
            local endpos = sp + (sa:Forward() * 9000)
            local toscreen = endpos:ToScreen()
            realx, realy = toscreen.x, toscreen.y
            
            hx = Lerp(0.5, hx, realx)
            hy = Lerp(0.5, hy, realy)
        else
            hx = scrw / 2
            hy = scrh / 2
        end
        
        -- damage log first
        if logss then
            for k, v in pairs(dmghistory) do
                local order = v.id
                if ct - v.time > v.length then removefromtableshiftid(dmghistory, k) continue end
                if order > logsize:GetInt() * 0.8 and !v.shrinked then v.length = v.length / 2 v.shrinked = true end
                if order > logsize:GetInt() * 1.5 then removefromtableshiftid(dmghistory, k) continue end
                local state = math.ease.OutExpo(math.min(v.length - (ct - v.time), 1))
                local alpha = 255 * state
                
                local text = "" .. v.dmg
                if v.dmg > 1000 then text = ">999" end
                surface.SetFont("BF6_Hitmark")
                local tw, th = surface.GetTextSize(text)
                local tx, ty = hx - DoSize(16.5) - tw/2, hy - DoSize(8.5) + (th + DoSize(0.25)) * order + (v.tempmove or 0) * (th + DoSize(0.25))
                
                v.tempmove = math.Approach(v.tempmove or 0, 0, FrameTime() * 10)

                surface.SetFont("BF6_Hitmark_shadow")
                surface.SetTextColor(0, 0, 0, alpha)
                surface.SetTextPos(tx, ty)
                surface.DrawText(text)

                surface.SetFont("BF6_Hitmark")
                surface.SetTextColor(255, v.killed and 100 or 255, v.killed and 100 or 255, alpha)
                surface.SetTextPos(tx, ty)
                surface.DrawText(text)
            end
        end

        if !novisual then
            local fuckregularmarkers = 1

            -- local x, y = 0 < lasthmtbl.x and lasthmtbl.x < scrw and lasthmtbl.x or scrw * 0.5, 0 < lasthmtbl.y and lasthmtbl.y < scrh and lasthmtbl.y or scrh * 0.5

            if lastkhm > ct then -- kill hitmarkers
                local alpha = 144
                local state = (lastkhm - ct) - 0.5
                local state2 = 0.5 - state

                local anim_size = math.Clamp(math.ease.InBack((state2 - 0.5) * 4 + 0.9) + 3, 0.5, 6)
                local anim_alpha = math.min(state2 * 8, 1)
                -- fuckregularmarkers = (state + 0.5) / 20

                if state2 < 0.3 then
                    fuckregularmarkers = (state + 0.5) / 20
                    if fuckregularmarkers < 0.3 then lasthm = 0 end
                end

                if state2 > 0.1 then
                    anim_alpha = math.max((state + (lasthmhead and 0.78 or 0.7)) * 3, 0) - 2
                end

                surface.SetMaterial(lasthmhead and hmmatkillhead or hmmatkill)
                surface.SetDrawColor(255, 255, 255, alpha * anim_alpha)

                local ls = DoSize(5) -- localsize
                local lo = -8 -- local offset
                
                ls = ls + DoSize(3) * anim_size
                lo = lo + DoSize(1) * anim_size * 2

                -- for i = 1, 2 do
                    -- if i == 2 then surface.SetMaterial(hmmatkill_additive) 
                        -- surface.SetDrawColor(255, 255, 255, 255 * anim_alpha) end
                    surface.DrawTexturedRectUV( hx - ls - lo, hy - ls - lo, ls, ls, 0, 0, 1, 1 )
                    surface.DrawTexturedRectUV( hx - ls - lo, hy + lo, ls, ls, 0, 1, 1, 0 )
                    surface.DrawTexturedRectUV( hx + lo, hy - ls - lo, ls, ls, 1, 0, 0, 1 )
                    surface.DrawTexturedRectUV( hx + lo, hy + lo, ls, ls, 1, 1, 0, 0 )
                -- end
            end

            if lasthm > ct then -- any hitmarkers
                local alpha = 255 * fuckregularmarkers
                local state = (lasthm - ct)
                state = math.ease.InQuad(state)
                local state2 = 1 - state

                local anim_size = hmnotfirstone and math.max((state - 0.8) * 8, 1) or math.min(state2 * 8, 1)
                local anim_alpha = math.min(state2 * 30, 1)

                if state2 > 0.333 then
                    anim_alpha = math.max((state) * 5, 0) - 0.75
                    anim_size = math.min(state * 4.5, 1)
                end

                surface.SetMaterial(lasthmhead and hmmathead or hmmat)
                if lasthmprop then surface.SetMaterial(hmmatprop) end
                surface.SetDrawColor(255, 255, 255, alpha * anim_alpha)

                local ls = DoSize(5) -- localsize
                local lo = 0 -- local offset

                -- surface.DrawRect(hx-1, hy-1, 2, 2)
                
                ls = ls + DoSize(2) * anim_size
                lo = lo + DoSize(1.5) * anim_size

                surface.DrawTexturedRectUV( hx - ls - lo, hy - ls - lo, ls, ls, 0, 0, 1, 1 )
                surface.DrawTexturedRectUV( hx - ls - lo, hy + lo, ls, ls, 0, 1, 1, 0 )
                surface.DrawTexturedRectUV( hx + lo, hy - ls - lo, ls, ls, 1, 0, 0, 1 )
                surface.DrawTexturedRectUV( hx + lo, hy + lo, ls, ls, 1, 1, 0, 0 )
            end
        end
    end)
    
    local function hitmarker(...)
        local sv = hmoverride:GetBool()
        local mode = sv and hmsv:GetInt() or hm:GetInt()
        if mode <= 0 and !(sv and damagelogenablesv:GetBool() or damagelogenable:GetBool()) then return end

        local dmg = net.ReadUInt(10)
        local isliving = net.ReadBool()
        local head = net.ReadBool()
        local onfire = net.ReadBool()
        local killed = net.ReadBool()
        local who = net.ReadEntity()

        if dmg <= 0 and !isliving then return end
        local lp = LocalPlayer()
        local ct = CurTime()
        
        if !IsValid(who) then who = lastent or "???" end
        
        lastent = who
        hmauth = sv
        lasthmhead = head
        lasthmprop = !isliving

        if !killed then
            hmnotfirstone = lasthm - CurTime() > 0.9
            lasthm = CurTime() + 1

            if (mode == 1 or mode == 3) and dmg > 2 then
                timer.Simple(0.055, function()
                    surface.PlaySound(head and "hitmarkers/head.wav" or "hitmarkers/hit" .. math.random(1, 2) .. ".wav")
                end)
            end
        else
            lastkhm = CurTime() + 1

            if mode == 1 or mode == 3 then
                timer.Simple(0.055, function()
                    surface.PlaySound(head and "hitmarkers/killhead.wav" or "hitmarkers/kill.wav")
                end)
            end
        end
        
        if dmg > 0 then
            local isontable = dmghistory[who]
            if !isontable then moveveryid(dmghistory) end
            local id = isontable and isontable.id or 1
            local prevdmg = isontable and isontable.dmg or 0
            dmghistory[who] = {id = id, dmg = prevdmg + dmg, time = CurTime(), head = head, killed = killed, length = killed and 2.5 or 2, isliving = isliving}
        end
    end

    net.Receive("bf6_hitmark", hitmarker)
end


-- Command registered server side below:
RegisterCommand(main.fanCommand, function(source, args, rawCommand)
    if (source > 0) then
        if args[1] == nil or (tostring(args[1]) ~= translations.setup and tostring(args[1]) ~= translations.remove) then
            TriggerClientEvent("Client:rtcNotification", source, "~r~Error~w~: Use /fan  setup or /fan remove")
            return 
        end
        local setup = false
        if tostring(args[1]) == translations.setup then setup = true end
        if tostring(args[1]) == translations.remove then setup = false end

        -- Add your permission check here, send event if they have permission

        TriggerClientEvent("Client:toggleFan", source, setup)
    end
end, main.enableAcePermissions)

-- Command registered server side below:
RegisterCommand(main.stabilisersCommand, function(source, args, rawCommand)
    if (source > 0) then
        if args[1] == nil or (tostring(args[1]) ~= translations.setup and tostring(args[1]) ~= translations.remove) then
            TriggerClientEvent("Client:rtcNotification", source, translations.stabilisersError)
            return 
        end
        local setup = false
        if tostring(args[1]) == translations.setup then setup = true end
        if tostring(args[1]) == translations.remove then setup = false end

        -- Add your permission check here, send event if they have permission

        TriggerClientEvent("Client:toggleStabilisers", source, setup)
    end
end, main.enableAcePermissions)

-- Command registered server side below:
RegisterCommand(main.spreadersCommand, function(source, args, rawCommand)
    if (source > 0) then

        -- Add your permission check here, send event if they have permission

        TriggerClientEvent("Client:toggleSpreaders", source)
    end
end, main.enableAcePermissions)

local stabilisers = {}
local fans = {}

RegisterServerEvent('Server:updateStabilisersTable')
AddEventHandler('Server:updateStabilisersTable', function(key, entry, remove)
    if remove then 
        stabilisers[key] = nil
        TriggerClientEvent("Client:updateStabilisersTable", -1, key, entry, remove)
        return 
    end
    stabilisers[key] = entry
    TriggerClientEvent("Client:updateStabilisersTable", -1, key, entry, remove)
end)

RegisterServerEvent('Server:updateFansTable')
AddEventHandler('Server:updateFansTable', function(key, entry, remove)
    if remove then 
        fans[key] = nil
        TriggerClientEvent("Client:updateFansTable", -1, key, entry, remove)
        return 
    end
    fans[key] = entry
    TriggerClientEvent("Client:updateFansTable", -1, key, entry, remove)
end)


RegisterServerEvent('Server:receiveStabilisersTable')
AddEventHandler('Server:receiveStabilisersTable', function()
    TriggerClientEvent("Client:receiveStabilisersTable", source, stabilisers)
end)

RegisterServerEvent('Server:rtcOpenDoor')
AddEventHandler('Server:rtcOpenDoor', function(vehicleNet, bone, coords, breakDoor)
    TriggerClientEvent("Client:rtcOpenDoor", -1, vehicleNet, bone, coords, breakDoor)
    TriggerClientEvent("Client:spreadersSound", -1, coords)
end)

RegisterServerEvent('Server:receiveFanTable')
AddEventHandler('Server:receiveFanTable', function()
    TriggerClientEvent("Client:receiveFanTable", source, fans)
end)

RegisterServerEvent('Server:stopRtcParticles')
AddEventHandler('Server:stopRtcParticles', function(coords)
    TriggerClientEvent("Client:stopRtcParticles", -1, coords)
end)
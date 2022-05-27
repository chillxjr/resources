local CoreName = nil
local CoreName2 = nil
ESX = nil
local locale = nil

if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
    CoreName = Config['QBCoreSettings']["Export"]
    CoreName2 = Config['QBCoreSettings']["Name"]
elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
    TriggerEvent(Config['ESXSettings']["Trigger"], function(obj) ESX = obj end)
end

RegisterNetEvent('rebel-trucking:server:checkifowntruck', function(vehplate, lasttruck)
    local src = source
    local player = nil
    local citizenid = nil

    if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
        player = CoreName.Functions.GetPlayer(src)
        citizenid = player.PlayerData.citizenid
    elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
        player = ESX.GetPlayerFromId(src)
    end


    local owntruck = false
    local istruck = false
    local isusingowntruck = false

    if Config.RequireTruck then
        if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
            for k,v in pairs(Config.AllowedVehicles) do
                if (Config.SqlWrapper == "mysql-async") or (Config.SqlWrapper == "oxmysql") then
                    MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ?', {citizenid, v}, function(result)
                        if result then
                            owntruck = true
                            for k,v in pairs(result) do
                                if v.plate == vehplate then
                                    istruck = true
                                end
                            end
                        end
                    end)
                elseif Config.SqlWrapper == "ghmattimysql" then
                    exports.ghmattimysql:execute('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ?', {citizenid, v}, function(result)
                        if result then
                            owntruck = true
                            for k,v in pairs(result) do
                                if v.plate == vehplate then
                                    istruck = true
                                end
                            end
                        end
                    end)
                end
            end
        elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
            for k,v in pairs(Config.AllowedVehicles) do
                local vehhash = v
                if (Config.SqlWrapper == "mysql-async") or (Config.SqlWrapper == "oxmysql") then
                    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = ?', {player.identifier}, function(result)
                        if result then
                            for k,v in pairs(result) do
                                local vehicle = json.decode(v.vehicle)
                                if vehicle.model == GetHashKey(vehhash) then
                                    owntruck = true
                                    str = vehplate:gsub("%s+", "")
                                    str2 = v.plate:gsub("%s+", "")
                                    if str == str2 then
                                        istruck = true
                                    end
                                end
                            end
                        end
                    end)
                elseif Config.SqlWrapper == "ghmattimysql" then
                    exports.ghmattimysql:execute('SELECT * FROM owned_vehicles WHERE owner = ?', {player.identifier}, function(result)
                        if result then
                            for k,v in pairs(result) do
                                local vehicle = json.decode(v.vehicle)
                                if vehicle.model == GetHashKey(vehhash) then
                                    owntruck = true
                                    str = vehplate:gsub("%s+", "")
                                    str2 = v.plate:gsub("%s+", "")
                                    if str == str2 then
                                        istruck = true
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end
    else

        --- check if own truck
        
        if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
            for k,v in pairs(Config.AllowedVehicles) do
                if (Config.SqlWrapper == "mysql-async") or (Config.SqlWrapper == "oxmysql") then
                    MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ?', {citizenid, v}, function(result)
                        if result then
                            for k,v in pairs(result) do
                                if v.plate == vehplate then
                                    isusingowntruck = true
                                end
                            end
                        end
                    end)
                elseif Config.SqlWrapper == "ghmattimysql" then
                    exports.ghmattimysql:execute('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ?', {citizenid, v}, function(result)
                        if result then
                            for k,v in pairs(result) do
                                if v.plate == vehplate then
                                    isusingowntruck = true
                                end
                            end
                        end
                    end)
                end
            end
        elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
            for k,v in pairs(Config.AllowedVehicles) do
                local vehhash = v
                if (Config.SqlWrapper == "mysql-async") or (Config.SqlWrapper == "oxmysql") then
                    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = ?', {player.identifier}, function(result)
                        if result then
                            for k,v in pairs(result) do
                                local vehicle = json.decode(v.vehicle)
                                if vehicle.model == GetHashKey(vehhash) then
                                    str = vehplate:gsub("%s+", "")
                                    str2 = v.plate:gsub("%s+", "")
                                    if str == str2 then
                                        isusingowntruck = true
                                    end
                                end
                            end
                        end
                    end)
                elseif Config.SqlWrapper == "ghmattimysql" then
                    exports.ghmattimysql:execute('SELECT * FROM owned_vehicles WHERE owner = ?', {player.identifier}, function(result)
                        if result then
                            for k,v in pairs(result) do
                                local vehicle = json.decode(v.vehicle)
                                if vehicle.model == GetHashKey(vehhash) then
                                    str = vehplate:gsub("%s+", "")
                                    str2 = v.plate:gsub("%s+", "")
                                    if str == str2 then
                                        isusingowntruck = true
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end
    end

    Citizen.Wait(10)

    if istruck or (not Config.RequireTruck) then
        TriggerClientEvent("rebel-trucking:client:opendeliverymenu", src, vehplate, lasttruck, isusingowntruck)
    elseif owntruck then
        if (Config.Framework == "qbcore") or (Config.Framework == "QBCORE") then
            TriggerClientEvent(CoreName2..":Notify", src, locale['delivery_owns_truck_but_not_using_notification'], "error", 3000)
        elseif (Config.Framework == "esx") or (Config.Framework == "ESX") then
            if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
                TriggerClientEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale['delivery_owns_truck_but_not_using_notification'].."</span>", "darkred", "error", 3000)
            elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
                TriggerClientEvent('t-notify:client:Custom', src, {
                    style = 'error',
                    message = locale['delivery_owns_truck_but_not_using_notification'],
                    duration = 3000
                })
            elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
                TriggerClientEvent("mythic_notify:client:SendAlert", 'error', locale['delivery_owns_truck_but_not_using_notification'], 3000)
            elseif Config['ESXSettings']["NotificationScript"] == "esx" then
                player.showNotification(locale['delivery_owns_truck_but_not_using_notification'])
            end
        end	
    else
        if (Config.Framework == "qbcore") or (Config.Framework == "QBCORE") then
            TriggerClientEvent(CoreName2..":Notify", src, locale['delivery_does_not_own_truck_notification'], "error", 3000)
        elseif (Config.Framework == "esx") or (Config.Framework == "ESX") then
            if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
                TriggerClientEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale['delivery_does_not_own_truck_notification'].."</span>", "darkred", "error", 3000)
            elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
                TriggerClientEvent('t-notify:client:Custom', src, {
                    style = 'error',
                    message = locale['delivery_does_not_own_truck_notification'],
                    duration = 3000
                })
            elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
                TriggerClientEvent("mythic_notify:client:SendAlert", 'error', locale['delivery_does_not_own_truck_notification'], 3000)
            elseif Config['ESXSettings']["NotificationScript"] == "esx" then
                player.showNotification(locale['delivery_does_not_own_truck_notification'])
            end
        end	
    end
end)

local function round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

RegisterNetEvent('rebel-trucking:server:depocheck', function(args)
	local src = source
    local Player = nil

    if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
        Player = CoreName.Functions.GetPlayer(src)
    elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
        Player = ESX.GetPlayerFromId(src)
    end

    local info = args.deliveryoptions

    local moneyPlayer = nil

    if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
        if info.DepositType == "cash" then
            moneyPlayer = tonumber(Player.PlayerData.money.cash)
        elseif info.DepositType == "bank" then
            moneyPlayer = tonumber(Player.PlayerData.money.bank)
        end
    elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
        if info.DepositType == "cash" then
            moneyPlayer = Player.getMoney()
        elseif info.DepositType == "bank" then
            moneyPlayer = Player.getAccount('bank').money
        end
    end

    if info.Deposit then

        if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
            if moneyPlayer >= info.DepositPrice then
                Player.Functions.RemoveMoney(info.DepositType, info.DepositPrice, "Truck Delivery start") 
                TriggerClientEvent("rebel-trucking:client:startdelivery", src, args)
            else
                if (Config.Framework == "qbcore") or (Config.Framework == "QBCORE") then
                    TriggerClientEvent(CoreName2..":Notify", src, locale['delivery_cant_afford_deposit'], "error", 3000)
                elseif (Config.Framework == "esx") or (Config.Framework == "ESX") then
                    if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
                        TriggerClientEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale['delivery_cant_afford_deposit'].."</span>", "darkred", "error", 3000)
                    elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
                        TriggerClientEvent('t-notify:client:Custom', src, {
                            style = 'error',
                            message = locale['delivery_cant_afford_deposit'],
                            duration = 3000
                        })
                    elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
                        TriggerClientEvent("mythic_notify:client:SendAlert", 'error', locale['delivery_cant_afford_deposit'], 3000)
                    elseif Config['ESXSettings']["NotificationScript"] == "esx" then
                        player.showNotification(locale['delivery_cant_afford_deposit'])
                    end
                end	
            end
        elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
            if moneyPlayer >= info.DepositPrice then
                if info.DepositType == "cash" then
                    Player.removeMoney(info.DepositPrice)
                elseif info.DepositType == "bank" then
                    Player.removeAccountMoney('bank', info.DepositPrice)
                end
                TriggerClientEvent("rebel-trucking:client:startdelivery", src, args)
            else
                if (Config.Framework == "qbcore") or (Config.Framework == "QBCORE") then
                    TriggerClientEvent(CoreName2..":Notify", src, locale['delivery_cant_afford_deposit'], "error", 3000)
                elseif (Config.Framework == "esx") or (Config.Framework == "ESX") then
                    if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
                        TriggerClientEvent("mosh_notify:notify", src, "ERROR", "<span class=\"text-white\">"..locale['delivery_cant_afford_deposit'].."</span>", "darkred", "error", 3000)
                    elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
                        TriggerClientEvent('t-notify:client:Custom', src, {
                            style = 'error',
                            message = locale['delivery_cant_afford_deposit'],
                            duration = 3000
                        })
                    elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
                        TriggerClientEvent("mythic_notify:client:SendAlert", src, 'error', locale['delivery_cant_afford_deposit'], 3000)
                    elseif Config['ESXSettings']["NotificationScript"] == "esx" then
                        player.showNotification(locale['delivery_cant_afford_deposit'])
                    end
                end
            end
        end
    else
        TriggerClientEvent("rebel-trucking:client:startdelivery", src, args)
    end
end)

RegisterNetEvent('rebel-trucking:server:givepayment239423492349', function(delicoords, deli, reward, isusingowntruck)
    local src = source
    local owntruck2 = false

    local Player = nil
    local citizenid = nil

    if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
        Player = CoreName.Functions.GetPlayer(src)
        citizenid = Player.PlayerData.citizenid
    elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
        Player = ESX.GetPlayerFromId(src)
    end
    
    if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
        for k,v in pairs(Config.AllowedVehicles) do
            if (Config.SqlWrapper == "mysql-async") or (Config.SqlWrapper == "oxmysql") then
                MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ?', {citizenid, v}, function(result)
                    if result then
                        owntruck2 = true
                    end
                end)
            elseif Config.SqlWrapper == "ghmattimysql" then
                exports.ghmattimysql:execute('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ?', {citizenid, v}, function(result)
                    if result then
                        owntruck2 = true
                    end
                end)
            end
        end
    elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
        for k,v in pairs(Config.AllowedVehicles) do
            if (Config.SqlWrapper == "mysql-async") or (Config.SqlWrapper == "oxmysql") then
                local vehhash = v
                MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = ?', {Player.identifier}, function(result)
                    if result then
                        for k,v in pairs(result) do
                            local vehicle = json.decode(v.vehicle)
                            if vehicle.model == GetHashKey(vehhash) then
                                owntruck2 = true
                            end
                        end
                    end
                end)
            elseif Config.SqlWrapper == "ghmattimysql" then
                local vehhash = v
                exports.ghmattimysql:execute('SELECT * FROM owned_vehicles WHERE owner = ?', {Player.identifier}, function(result)
                    if result then
                        for k,v in pairs(result) do
                            local vehicle = json.decode(v.vehicle)
                            if vehicle.model == GetHashKey(vehhash) then
                                owntruck2 = true
                            end
                        end
                    end
                end)
            end
        end
    end

    Citizen.Wait(10)

    local Ped = GetPlayerPed(src)
    local PedCoords = GetEntityCoords(Ped)

    local rewardp = reward

    if (not Config.RequireTruck) and deli.Deposit then
        if isusingowntruck then
            rewardp = reward + deli.DepositPrice
        else
            rewardp = reward
        end
    elseif Config.RequireTruck and deli.Deposit then
        rewardp = reward + deli.DepositPrice
    end

    if (Config.Framework == "qbcore") or (Config.Framework == "QBCORE") then
        TriggerClientEvent(CoreName2..":Notify", src, locale['delivery_finish_notification']..locale['currency']..round(rewardp, 0), "success", 5000)

        if not Config.RequireTruck then
            if not isusingowntruck then
                TriggerClientEvent(CoreName2..":Notify", src, locale['delivery_return_truck'], "success", 5000)
            end
        end
    elseif (Config.Framework == "esx") or (Config.Framework == "ESX") then
        if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
            TriggerClientEvent("mosh_notify:notify", src, "SUCCESS", "<span class=\"text-white\">"..locale['delivery_finish_notification']..locale['currency']..round(rewardp, 0).."</span>", "green", "success", 5000)
            if not Config.RequireTruck then
                if not isusingowntruck then
                    TriggerClientEvent("mosh_notify:notify", src, "SUCCESS", "<span class=\"text-white\">"..locale['delivery_return_truck'].."</span>", "green", "success", 5000)
                end
            end
        elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
            TriggerClientEvent('t-notify:client:Custom', src, {
                style = 'success',
                message = locale['delivery_finish_notification']..locale['currency']..round(rewardp, 0),
                duration = 5000
            })

            if not Config.RequireTruck then
                if not isusingowntruck then
                    TriggerClientEvent('t-notify:client:Custom', src, {
                        style = 'success',
                        message = locale['delivery_return_truck'],
                        duration = 5000
                    })
                end
            end
        elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
            TriggerClientEvent("mythic_notify:client:SendAlert", src, 'success', locale['delivery_finish_notification']..locale['currency']..round(rewardp, 0), 5000)
            if not Config.RequireTruck then
                if not isusingowntruck then
                    TriggerClientEvent("mythic_notify:client:SendAlert", src, 'success', locale['delivery_return_truck'], 5000)
                end
            end
        elseif Config['ESXSettings']["NotificationScript"] == "esx" then
            Player.showNotification(locale['delivery_finish_notification']..locale['currency']..round(rewardp, 0))
            if not Config.RequireTruck then
                if not isusingowntruck then
                    Player.showNotification(locale['delivery_return_truck'])
                end
            end
        end
    end

    if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
        Player.Functions.AddMoney(deli.rewardtype, round(rewardp, 0))
    elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
        if deli.rewardtype == "cash" then
            Player.addMoney(round(rewardp, 0))
        elseif deli.rewardtype == "bank" then
            Player.addAccountMoney('bank', round(rewardp, 0))
        end
    end
end)

RegisterNetEvent('rebel-trucking:server:returndeposit', function(RentedTrucks, v, deli)
    local src = source
    local Player = nil
    
    local isrealtruck = nil

    if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
        Player = CoreName.Functions.GetPlayer(src)
    elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
        Player = ESX.GetPlayerFromId(src)
    end

    for k,v in pairs(RentedTrucks) do
        if v.hash == v.hash then
            isrealtruck = true
        end
    end

    Wait(10)

    if isrealtruck then
        if deli.Deposit then
            if (Config.Framework == "QBCORE") or (Config.Framework == "qbcore") then
                if deli.DepositType == "bank" then
                    Player.Functions.AddMoney("bank", deli.DepositPrice, "Got trucking deposit back")
                elseif deli.DepositType == "cash" then
                    Player.Functions.AddMoney("cash", deli.DepositPrice, "Got trucking deposit back")
                end
            elseif (Config.Framework == "ESX") or (Config.Framework == "esx") then
                if deli.DepositType == "bank" then
                    Player.addAccountMoney('bank', deli.DepositPrice)
                elseif deli.DepositType == "cash" then
                    Player.addMoney(deli.DepositPrice)
                end
            end
        end
    end

end)

RegisterNetEvent('rebel-trucking:server:debugmessage', function(message)
    print("^1✗ Rebel Trucking Debug Mode | ERROR MESSAGE: "..message.."^7")
end)

-- Debug options

AddEventHandler('onResourceStart', function(resource)
     if resource == GetCurrentResourceName() then
        Wait(100)

        if Config.locale == "en" then
            locale = en.Translations
        elseif Config.locale == "sv" then
            locale = sv.Translations   
        elseif Config.locale == "fr" then
            locale = fr.Translations   
        elseif Config.locale == "nl" then
            locale = nl.Translations 
        elseif Config.locale == "custom" then
            locale = custom.Translations
        else
            TriggerEvent('rebel-trucking:server:debugmessage', 'The selected locale does not exist?')
        end

         if Config.DebugMode == true then
 
             if (Config.SortPrice ~= 1) and (Config.SortPrice ~= 2) then
                 TriggerEvent('rebel-trucking:server:debugmessage', 'Config.SortPrice is invalid. Please select either 1 or 2. System selected default value of 2')
             end

             if #Config.AllowedVehicles == 0 then
                 TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set allowed vehicles. Please set allowed vehicles in the config.')
             end
 
             if Config.RequestJobLocation == nil then
                 TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set request job location. Please add Config.RequestJobLocation = vector3(153.19, -3211.68, 5.91) to the config')
             end
 
             if #Config.DeliveryOptions == 0 then
                 TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set allowed vehicles. Please set allowed vehicles in the config.')
             else
                 for k,v in pairs(Config.DeliveryOptions) do
                     if v.label == nil then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set delivery label in the number '..k..' delivery option, It should look like this: label = "Food Delivery"')
                     end
 
                     if v.Deposit == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', 'The deposit option in the number '..k..' delivery option has not been set, It should look like this: Deposit = true')
                    elseif (v.Deposit ~= true) and (v.rewardtype ~= false) then
                        TriggerEvent('rebel-trucking:server:debugmessage', 'The deposit option in the number '..k..' delivery option is not a valid option. It should look like this: reward = true')
                    end

                    if v.DepositPrice == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set Deposit Price in the number '..k..' delivery option, It should look like this: DepositPrice = 2000')
                    elseif tonumber(v.DepositPrice) == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', 'The Deposit Price in the number '..k..' delivery option is not a valid option. It should look like this: DepositPrice = 2000')
                    end

                    if v.DepositType == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set deposit type in the number '..k..' delivery option, It should look like this: DepositType = "bank"')
                    elseif (v.DepositType ~= "bank") and (v.rewardtype ~= "cash") then
                        TriggerEvent('rebel-trucking:server:debugmessage', 'The deposit type in the number '..k..' delivery option is invalid, It should look like this: DepositType = "bank"')
                    end

                     if v.reward == nil then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set delivery reward in the number '..k..' delivery option, It should look like this: reward = 30')
                     elseif tonumber(v.reward) == nil then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'The delivery reward in the number '..k..' delivery option is not a valid option. It should look like this: reward = 30')
                     end
 
                     if v.rewardtype == nil then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set delivery reward in the number '..k..' delivery option, It should look like this: reward = "bank"')
                     elseif (v.rewardtype ~= "bank") and (v.rewardtype ~= "cash") then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'The delivery reward type in the number '..k..' delivery option is invalid, It should look like this: reward = "bank"')
                     end
 
                     if v.DeliveryLocations == nil then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set delivery location in the number '..k..' delivery option, It should look like this: DeliveryLocations = {vector3(-25.83, 6264.17, 31.2)}')
                     end
 
                     if v.TrailerLocations == nil then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set Trailer location in the number '..k..' delivery option, It should look like this: TrailerLocations = {vector3(-25.83, 6264.17, 31.2)}')
                     end
 
                     if v.Trailers == nil then
                         TriggerEvent('rebel-trucking:server:debugmessage', 'There is no set trailers in the number '..k..' delivery option, It should look like this: Trailers = {trailer, trailer2}')
                     end
                 end

                --------- lang options

                local langs = {english = {name = "English Translation", table = en.Translations}, swedish = {name = "Swedish Translation", table = sv.Translations}, custom = {name = "Custom Translation", table = custom.Translations}, fr = {name = "French Translation", table = fr.Translations}, nl = {name = "Dutch Translation", table = nl.Translations}}

                for k,v in pairs(langs) do
                    if v.table['currency'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["currency"] is missing in the '..v.name)
                    end

                    if v.table['deposit'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["deposit"] is missing in the '..v.name)
                    end

                    if v.table['delivery_cant_afford_deposit'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_cant_afford_deposit"] is missing in the '..v.name)
                    end

                    if v.table['delivery_menu_header'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_menu_header"] is missing in the '..v.name)
                    end

                    if v.table['delivery_menu_text'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_menu_text"] is missing in the '..v.name)
                    end

                    if v.table['delivery_menu_marker_text'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_menu_marker_text"] is missing in the '..v.name)
                    end

                    if v.table['delivery_returned_truck'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_returned_truck"] is missing in the '..v.name)
                    end

                    if v.table["delivery_return_truck"] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_return_truck"] is missing in the '..v.name)
                    end

                    if v.table["delivery_pick_up_trailer_and_truck_notification"] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_pick_up_trailer_and_truck_notification"] is missing in the '..v.name)
                    end

                    if v.table['delivery_menu_exit_text'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_menu_exit_text"] is missing in the '..v.name)
                    end

                    if v.table['delivery_drop_off_text'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_drop_off_text"] is missing in the '..v.name)
                    end

                    if v.table['delivery_drop_off_text_error'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_drop_off_text_error"] is missing in the '..v.name)
                    end

                    if v.table['delivery_active_notification'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_active_notification"] is missing in the '..v.name)
                    end

                    if v.table['delivery_pick_up_trailer_notification'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_pick_up_trailer_notification"] is missing in the '..v.name)
                    end

                    if v.table['delivery_goto_drop_off_location_notification'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_goto_drop_off_location_notification"] is missing in the '..v.name)
                    end

                    if v.table['delivery_finish_notification'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_finish_notification"] is missing in the '..v.name)
                    end

                    if v.table['delivery_owns_truck_but_not_using_notification'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_owns_truck_but_not_using_notification"] is missing in the '..v.name)
                    end

                    if v.table['delivery_does_not_own_truck_notification'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_does_not_own_truck_notification"] is missing in the '..v.name)
                    end

                    if v.table['delivery_reward_text'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_reward_text"] is missing in the '..v.name)
                    end

                    if v.table['delivery_something_in_the_way'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_something_in_the_way"] is missing in the '..v.name)
                    end

                    if v.table['delivery_mission_failed'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["delivery_mission_failed"] is missing in the '..v.name)
                    end

                    if v.table['anticheat_attempted_exploit'] == nil then
                        TriggerEvent('rebel-trucking:server:debugmessage', '["anticheat_attempted_exploit"] is missing in the '..v.name)
                    end

                end

             end
 
         end
     end
 end) 
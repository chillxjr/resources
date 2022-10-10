TriggerEvent('chat:addSuggestion', '/'..main.fanCommand, translations.fanSuggestion, {
    { name="setup/remove", help=translations.fanHelp },
})

TriggerEvent('chat:addSuggestion', '/'..main.stabilisersCommand, translations.stabilisersSuggestion, {
    { name="setup/remove", help=translations.stabilisersHelp },
})

TriggerEvent('chat:addSuggestion', '/'..main.spreadersCommand, translations.spreadersSuggestion)

RegisterNetEvent('Client:rtcNotification')
AddEventHandler('Client:rtcNotification', function(message)
    showNotification(message)
end)

function showNotification(message)
    message = message.."."
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(0,1)
end

function tableHas(table, key)
    for k, v in pairs(table) do
        if k == key and v ~= nil then
            return true
        end
    end
    return false
end

local stabilisers = {}
local fans = {}
local firstSpawn = false
local spreadersActive = false
local spreadersProp = 0

RegisterNetEvent('Client:updateStabilisersTable')
AddEventHandler('Client:updateStabilisersTable', function(key, entry, remove)
    if remove then 
        stabilisers[key] = nil
        return 
    end
    stabilisers[key] = entry
end)

RegisterNetEvent('Client:updateFansTable')
AddEventHandler('Client:updateFansTable', function(key, entry, remove)
    if remove then 
        fans[key] = nil
        return 
    end
    fans[key] = entry
end)

RegisterNetEvent('Client:receiveStabilisersTable')
AddEventHandler('Client:receiveStabilisersTable', function(table)
    stabilisers = table
end)

RegisterNetEvent('Client:receiveFanTable')
AddEventHandler('Client:receiveFanTable', function(table)
    fans = table
end)

RegisterNetEvent('Client:stopRtcParticles')
AddEventHandler('Client:stopRtcParticles', function(coords)
    Wait(main.delaySmokeRemoval * 1000)
    RemoveParticleFxInRange(coords.x, coords.y, coords.z, main.smokeRemovalRadius)
end)

AddEventHandler('playerSpawned', function()
    if not firstSpawn then
        TriggerServerEvent('Server:receiveStabilisersTable')
        TriggerServerEvent('Server:receiveFanTable')
        first_spawn = true
    end
end)

RegisterNetEvent('Client:toggleSpreaders')
AddEventHandler('Client:toggleSpreaders', function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= 0 then
        showNotification(translations.outsideVehicle)
        return
    end
    if not spreadersActive then
        RequestModel(main.spreadersModel)
        while not HasModelLoaded(main.spreadersModel) do Wait(0) end
        RequestAnimDict(main.animDict)
        while not HasAnimDictLoaded(main.animDict) do Wait(0) end
        TaskPlayAnim(ped, main.animDict, main.animName, -8.0, 8.0, -1, 50, 8.0, false, false, false)
        local coords = GetEntityCoords(ped)
        local prop = CreateObject(main.spreadersModel, coords.x, coords.y, coords.z, true, true, true)
        spreadersProp = prop
        local boneIndex = GetPedBoneIndex(ped, main.boneId)
        AttachEntityToEntity(prop, ped, boneIndex, 1.0, 0.4, 0.7, 0.0, 220.0, 200.0, true, true, true, true, 1, true)
        spreadersActive = true
        continueSpreaders()
    else
        spreadersActive = false
        if DoesEntityExist(spreadersProp) then
            DetachEntity(ped)
            DetachEntity(spreadersProp)
            DeleteEntity(spreadersProp)
            ClearPedTasks(ped)
        end
    end
end)

function raycast()
    local ped = PlayerPedId()
    local location = GetEntityCoords(ped)
    local offSet = GetOffsetFromEntityInWorldCoords(ped, 0.0, 8.0, 0.0)
    local shapeTest = StartShapeTestCapsule(location.x, location.y, location.z, offSet.x, offSet.y, offSet.z, 10.0, 2, ped, 0)
    --local shapeTest = StartShapeTestRay(location.x, location.y, location.z, offSet.x, offSet.y, offSet.z, 2, ped, 0);
    local retval, hit, endCoords, surfaceNormal, entityHit =
    GetShapeTestResult(shapeTest)
    return entityHit
end

function continueSpreaders()
    local frontDoorDriver = "door_dside_f"
    local rearDoorDriver = "door_dside_r"
    local frontDoorPassenger = "door_pside_f"
    local rearDoorPassenger = "door_pside_r"
    local boot = "boot"
    while spreadersActive do
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local vehicle = raycast()
        if vehicle ~= 0 and vehicle ~= nil then
            drawSubtitle(translations.vehicleFound)
            local bone1 = GetEntityBoneIndexByName(vehicle, frontDoorDriver)
            local bone2 = GetEntityBoneIndexByName(vehicle, rearDoorDriver)
            local bone3 = GetEntityBoneIndexByName(vehicle, frontDoorPassenger)
            local bone4 = GetEntityBoneIndexByName(vehicle, rearDoorPassenger)
            local bone5 = GetEntityBoneIndexByName(vehicle, boot)
            local bone = {}
            bone[1] = {GetWorldPositionOfEntityBone(vehicle, bone1)}
            bone[2] = {GetWorldPositionOfEntityBone(vehicle, bone2)}
            bone[3] = {GetWorldPositionOfEntityBone(vehicle, bone3)}
            bone[4] = {GetWorldPositionOfEntityBone(vehicle, bone4)}
            bone[5] = {GetWorldPositionOfEntityBone(vehicle, bone5)}
            bone[1][2] = 0
            bone[2][2] = 2
            bone[3][2] = 1
            bone[4][2] = 3
            bone[4][2] = 5     
            local closest = 1
            local closestDistance = 0.0
            for i=1, 5 do
                local distance = #(coords - bone[i][1])
                if closestDistance == 0.0 then
                    closestDistance = distance
                else
                    if distance < closestDistance then
                        closestDistance = distance
                        closest = i
                    end
                end
                i = i + 1
            end
            drawSubtitle(translations.vehicleDoorFound)
            local timeout = false
            Citizen.SetTimeout(5000, function()
                timeout = true
            end)
            showHelpNotification(translations.spreadersUsage)
            while not timeout do
                DisableControlAction(0, 191)
                DisableControlAction(0, 22)
                if IsDisabledControlJustPressed(0, 22) then
                    local vehicleNet = NetworkGetNetworkIdFromEntity(vehicle)
                    TriggerServerEvent("Server:rtcOpenDoor", vehicleNet, bone[closest][2], GetEntityCoords(ped), true)
                    timeout = true
                end
                if IsDisabledControlJustPressed(0, 191) then
                    local vehicleNet = NetworkGetNetworkIdFromEntity(vehicle)
                    TriggerServerEvent("Server:rtcOpenDoor", vehicleNet, bone[closest][2], GetEntityCoords(ped), false)
                    timeout = true
                end
                Wait(0)
            end
        else
            drawSubtitle(translations.vehicleNotFound)
        end
        Wait(100)
    end
end

function showHelpNotification(message)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(1, 0)
end

function drawSubtitle(text)
    SetTextEntry_2("STRING")
    AddTextComponentString(text)
    DrawSubtitleTimed(1000, 1)
end

RegisterNetEvent('Client:rtcOpenDoor')
AddEventHandler('Client:rtcOpenDoor', function(vehicleNet, bone, coords, breakDoor)
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, true) then
        local vehicle3 = GetVehiclePedIsIn(ped, false)
        local coordsV = GetEntityCoords(vehicle3)
        local distance = #(coordsV - coords)
        if distance < 9.0 then
            SetVehicleDoorOpen(vehicle3, bone, false, true)
            if breakDoor then
                SetVehicleDoorBroken(vehicle, bone, false)
            end
        end
    end
    local vehicle = NetworkGetEntityFromNetworkId(vehicleNet)
    if DoesEntityExist(vehicle) then
        requestControl(2000, vehicle)
        local ped = PlayerPedId()
        SetVehicleEngineOn(vehicle, false, true, true)
        SetVehicleDoorOpen(vehicle, bone, false, true)
        if NetworkHasControlOfEntity(vehicle) then
            local vehicle2 = GetVehiclePedIsIn(ped, false)
            if vehicle2 ~= 0 then
            end
        end
        if breakDoor then
            SetVehicleDoorBroken(vehicle, bone, false)
        end
    end
end)

RegisterNetEvent('Client:spreadersSound')
AddEventHandler('Client:spreadersSound', function(coords)
    local ped = PlayerPedId()
    local playerCoords = GetEntityCoords(ped)
    local distance = #(coords - playerCoords)
    if distance < main.spreadersSoundDistance then
        SendNUIMessage({
            submissionType     = 'rtcSounds',
            submissionFile     = 'spreader',
            submissionVolume   = main.spreadersSoundVolume
        })
    end
end)

RegisterNetEvent('Client:toggleStabilisers')
AddEventHandler('Client:toggleStabilisers', function(setup)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= 0 then
        showNotification(translations.outsideVehicle)
        return
    end
    local vehicle = raycast()
    if vehicle ~= 0 and vehicle ~= nil then
        local netId = NetworkGetNetworkIdFromEntity(vehicle)
        local tableIncludes = tableHas(stabilisers, netId)
        if setup then
            if tableIncludes then
                showNotification(translations.stabilisersSetupAlready)
            else
                FreezeEntityPosition(vehicle, true)
                RequestModel(main.stabilisersModel)
                while not HasModelLoaded(main.stabilisersModel) do Wait(0) end
                local coords = GetEntityCoords(vehicle)
                local coordsOne = GetOffsetFromEntityInWorldCoords(ped, -0.7, 1.0, 0.0)
                local prop = CreateObject(main.stabilisersModel, coordsOne.x, coordsOne.y, coordsOne.z, true, true, true)
                while not DoesEntityExist(prop) do Wait(0) end
                local coordsTwo = GetOffsetFromEntityInWorldCoords(ped, -0.7, 0.0, 0.0)
                local prop2 = CreateObject(main.stabilisersModel, coordsTwo.x, coordsTwo.y, coordsTwo.z, true, true, true)
                while not DoesEntityExist(prop) or not DoesEntityExist(prop2) do Wait(0) end
                local heading = GetEntityHeading(ped)
                SetEntityHeading(prop, heading)
                SetEntityHeading(prop2, heading)
                local coordsProp1 = GetEntityCoords(prop)
                local retval, groundZ = GetGroundZFor_3dCoord(coordsProp1.x, coordsProp1.y + 0.9, coordsProp1.z - 0.3, 0)
                SetEntityCoords(prop, coordsProp1.x, coordsProp1.y, groundZ, true, true, true, false)
                local coordsProp2 = GetEntityCoords(prop2)
                retval, groundZ = GetGroundZFor_3dCoord(coordsProp2.x, coordsProp2.y + 0.9, coordsProp2.z - 0.3, 0)
                SetEntityCoords(prop2, coordsProp2.x, coordsProp2.y, groundZ, true, true, true, false)
                PlaceObjectOnGroundProperly(prop)
                PlaceObjectOnGroundProperly(prop2)
                FreezeEntityPosition(prop, true)
                FreezeEntityPosition(prop2, true)
                local propNet = NetworkGetNetworkIdFromEntity(prop)
                local propNet2 = NetworkGetNetworkIdFromEntity(prop2)
                net(propNet)
                net(propNet2)
                stabilisers[netId] = {netId, propNet, propNet2}
                TriggerServerEvent('Server:updateStabilisersTable', netId, stabilisers[netId], false)
                SetModelAsNoLongerNeeded(stabiliersModel)
                showNotification("~g~Success~w~: Stabilisers setup")
            end
        else
            if tableIncludes then
                local prop = NetworkGetEntityFromNetworkId(stabilisers[netId][2])
                local prop2 = NetworkGetEntityFromNetworkId(stabilisers[netId][3])
                TriggerServerEvent('Server:updateStabilisersTable', netId, stabilisers[netId], true)
                if DoesEntityExist(prop) then
                    requestControl(2000, prop)
                    DeleteEntity(prop)
                end
                if DoesEntityExist(prop2) then
                    requestControl(2000, prop2)
                    DeleteEntity(prop2)
                end
                NetworkRequestControlOfEntity(vehicle)
                FreezeEntityPosition(vehicle, false)
                DetachEntity(vehicle)
                stabilisers[netId] = nil
                showNotification(translations.stabilisersRemoved)
            else
                showNotification(translations.noStabilisersFound) 
            end
        end
    else
        showNotification(translations.noVehicleFound)
    end
end)

RegisterNetEvent('Client:toggleFan')
AddEventHandler('Client:toggleFan', function(setup)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= 0 then
        showNotification(translations.outsideVehicle)
        return
    end
    local coords = GetEntityCoords(ped)
    if setup then
        RequestModel(main.fanModel)
        while not HasModelLoaded(main.fanModel) do Wait(0) end
        local offSet = GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.6, 0.0)
        local prop = CreateObject(main.fanModel, offSet.x, offSet.y, offSet.z, true, true, true)
        while not DoesEntityExist(prop) do Wait(0) end
        local propNet = NetworkGetNetworkIdFromEntity(prop)
        PlaceObjectOnGroundProperly(prop)
        FreezeEntityPosition(prop, true)
        net(propNet)
        fans[propNet] = {propNet, offSet}
        TriggerServerEvent('Server:updateFansTable', propNet, fans[propNet], false)
        SetModelAsNoLongerNeeded(stabiliersModel)
        showNotification(translations.fanSetup)
        TriggerServerEvent("Server:stopRtcParticles", coords)
    else
        local found = false
        local foundKey = 0
        for k, v in pairs(fans) do
            local distance = #(coords - v[2])
            if distance < 15.0 then
                foundKey = k
                found = true
                break
            end
        end
        if found then
            local prop = NetworkGetEntityFromNetworkId(fans[foundKey][1])
            TriggerServerEvent('Server:updateFansTable', foundKey, fans[foundKey], true)
            if DoesEntityExist(prop) then
                requestControl(2000, prop)
                DeleteEntity(prop)
            end
            fans[foundKey] = nil
            showNotification(translations.fanRemoved)
        else
            showNotification(translations.noFanFound)
        end
    end
end)

function getNearestVehicle(radius)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= 0 then return vehicle end
    local veh = GetClosestVehicle(coords.x+0.0001,coords.y+0.0001,coords.z+0.0001, radius+5.0001, 0, 8192+4096+4+2+1)
    if not IsEntityAVehicle(veh) then veh = GetClosestVehicle(coords.x+0.0001,coords.y+0.0001,coords.z+0.0001, radius+5.0001, 0, 4+2+1) end
    return veh
end

function net(id)
    SetNetworkIdExistsOnAllMachines(id, true)
    SetNetworkIdCanMigrate(id, false)
end

function requestControl(milliseconds, entity)
    local timeout = false
    Citizen.SetTimeout(milliseconds, function()
        timeout = true
    end)
    if not NetworkHasControlOfEntity(entity) then
        NetworkRequestControlOfEntity(entity)
        while not timeout do
            if NetworkHasControlOfEntity(entity) then 
                timeout = true
            end
            Wait(0)
        end
    end
end

local fanSoundActive = false
local fanId = 0
Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        if fanSoundActive then
            if fans[fanId] ~= nil and fans[fanId][2] ~= nil then
                local distance = #(coords - fans[fanId][2])
                if distance > main.fanSoundDistance then
                    fanSoundActive = false
                else
                    SendNUIMessage({
                        submissionType     = 'rtcSounds',
                        submissionFile     = 'fan',
                        submissionVolume   = main.fanSoundVolume
                    })
                    Wait(10000)
                end
            end
        else
            for k, v in pairs(fans) do
                local distance = #(coords - fans[k][2])
                if distance < main.fanSoundDistance then
                    fanSoundActive = true
                    fanId = k
                    SendNUIMessage({
                        submissionType     = 'rtcSounds',
                        submissionFile     = 'fan',
                        submissionVolume   = main.fanSoundVolume
                    })
                    Wait(10000)
                end
            end
        end
        Wait(2000)
    end
    
end)
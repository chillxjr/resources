## QB-Parking
This is a very awesome parking mod, that i specially made for [qb-core](https://github.com/qbcore-framework/qb-core) 
This is just how you park in real live 😁 so park anywhere you want 👊😁👍

## Read The Updates.md for updates and changes.

## 📸 Screenshot 👊😁👍
![foto1](https://www.madirc.nl/fivem/foto1.png)


## 🎥 Video 👊😁👍
[![Watch the video1](https://www.madirc.nl/fivem/video.png)](https://youtu.be/cLCthqPRLQQ)


## 💪 Dependencies
- ✅ [oxmysql](https://github.com/overextended/oxmysql/releases/tag/v1.9.3)
- ✅ [qb-core](https://github.com/qbcore-framework/qb-core)
- ✅ [qb-garages](https://github.com/MaDHouSe79/qb-garages)
- ✅ [qb-vehiclekeys](https://github.com/qbcore-framework/qb-vehiclekeys)

## 💪 Optional
- ✅ [interact-sound](https://github.com/qbcore-framework/interact-sound)


## 🙏 How to install and do not forget anything, or it will not work, or give many errors.
- 👉 Step 1: First stop your server. 😁
- 👉 Step 2: Copy the directory qb-parking to resources/[qb]/
- 👉 Step 3: Add the player_parking.sql with 2 tables to your correct database.
- 👉 Step 4: Add any recommended extra code what I say you should add.
- 👉 Step 5: If you are 100% sure, you have done all 4 steps correctly, go to step 6.😁
- 👉 Step 6: Start your server.  
- 👉 Step 7: Most important step -> Enjoy 👊😎👍


## 🍀 Features
- ✅ Easy to install and use
- ✅ QB-Phone notifications
- ✅ Admin Controll like disable or enable the system.
- ✅ User Controll like displaying text on screen.
- ✅ Players with user status will only see the model name of this vecihle, not the owners name or plate.
- 👉 Your players will love this extra feature, if they can park there own vehicle in front of there housees or clubs. 
- 👉 Your players can setup youtube scenes, and if they want, they can come back later, and your vechiles are still there.
- 👉 This is very usefull cause if you make a scene and somehthing goes wrong, then don't wory you vechiles are right there.
- 👉 And of course you should not forget to park your vehicle 👊😁👍


## 🎮 How To Use
- 👉 Typ "/park" to park or drive your vehicle where you are at that moment. (Users and Admins)
- 👉 Typ "/park-names if you want to display the names ontop of the vehicle that is parked. (Users and Admins)
- 👉 If you want to use the F5 button, you must add it to your /binds and add on F5 the word "park"


## 💯 What i recommend for using this mod
- 👉 Try not to spawn too many vehicles in world space, this can cause issues and hiccups. 
- 👉 It is also recommended to have a good computer/server to use this mod, cause you will need it.


## 💯 I tested this mod on a computer/server with the following settings
- ✅ Prossessor: I7 12xCore
- ✅ Memory: 16 gig memory
- ✅ Graphics: GTX 1050 TI 4GB


## 🙏 Don't do this...
- 👉 DO NOT park your vehicles on roofs or that kind of stuff, just don't do it, it will work, but it breaks the mod,
- 👉 use the recommended parking spots in the world like you do in real life,
- 👉 you can do of course just park at your own house on a parking spot to keep it nice and clean for everyone.


## 👇 Extra Code in resources/[qb]/qb-vehiclekeys/client/main.lua.
````lua
RegisterNetEvent('vehiclekeys:client:SetVehicleOwnerToCitizenid', function(plate, citizenid)
    TriggerServerEvent('vehiclekeys:server:SetVehicleOwnerToCitizenid', plate, citizenid)
end)
````

## 👇 Extra Code in resources/[qb]/qb-vehiclekeys/server/main.lua.
- (For the old vehiclekey script)
````lua
RegisterNetEvent('vehiclekeys:server:SetVehicleOwnerToCitizenid', function(plate, citizenid)
    if VehicleList then
        local val = VehicleList[plate]
        if val then
            VehicleList[plate].owners[citizenid] = true
        else
            VehicleList[plate] = { owners = {} }
            VehicleList[plate].owners[citizenid] = true
        end
    else
        VehicleList = {}
        VehicleList[plate] = { owners = {} }
        VehicleList[plate].owners[citizenid] = true
    end
end)
````

## 👇 Extra Code in resources/[qb]/qb-vehiclekeys/server/main.lua. 
- (For the new vehiclekey script)
````lua
RegisterNetEvent('vehiclekeys:server:SetVehicleOwnerToCitizenid', function(plate, citizenid)
    local src = source
    if not VehicleList[plate] then 
        VehicleList[plate] = {} 
    end
    VehicleList[plate][citizenid] = true
    TriggerClientEvent('QBCore:Notify', src, "You get keys to the vehicle!")
    TriggerClientEvent('qb-vehiclekeys:client:AddKeys', src, plate)
end)
````

## 👇 To keep things nice and clean for the qb-core system and database.
- ✅ Go to resources[qb]/qb-core/server/player.lua around line 506, and find, local playertables = {}. 
- ✅ This is, if we want to delete a character, we also want to delete the parked vehicles in the database,
- ✅ Place the line below at the bottom in playertables (there are more insite), so place this one at the bottom.
````lua
{ table = 'player_parking' },
````


## Stolen Trigger, when the vehicle gets stolen by a other player with picklock
- Added below -> TriggerEvent("qb-parking:client:stolen", lockpickedPlate)
```lua

-- resources/[qb]/qb-vehiclekeys/client.lua line 165 change it with this code.
local function lockpickFinish(success)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local vehicle = QBCore.Functions.GetClosestVehicle(pos)
    local chance = math.random()
    if success then
        TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
        QBCore.Functions.Notify('Opened Door!', 'success')
        SetVehicleDoorsLocked(vehicle, 1)
        lockpicked = true
        lockpickedPlate = QBCore.Functions.GetPlate(vehicle)
        TriggerEvent("qb-parking:client:stolen", lockpickedPlate) -- <---------------- HERE !!!
    else
        PoliceCall()
        TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
        QBCore.Functions.Notify('Someone Called The Police!', 'error')
    end
    if usingAdvanced then
        if chance <= Config.RemoveLockpickAdvanced then
            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["advancedlockpick"], "remove")
            TriggerServerEvent("QBCore:Server:RemoveItem", "advancedlockpick", 1)
        end
    else
        if chance <= Config.RemoveLockpickNormal then
            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["lockpick"], "remove")
            TriggerServerEvent("QBCore:Server:RemoveItem", "lockpick", 1)
        end
    end
end
```

## Impound Trigger, to unpark the vehicle.
```lua
 TriggerEvent("qb-parking:client:impound", plate) 
```

## 👮‍♂️ Impound trigger
- Go to resources\[qb]\qb-policejob\client\job.lua line 332
- Find 👇 
````lua
RegisterNetEvent('police:client:ImpoundVehicle', function(fullImpound, price)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local bodyDamage = math.ceil(GetVehicleBodyHealth(vehicle))
    local engineDamage = math.ceil(GetVehicleEngineHealth(vehicle))
    local totalFuel = exports['LegacyFuel']:GetFuel(vehicle)
    if vehicle ~= 0 and vehicle then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local vehpos = GetEntityCoords(vehicle)
        if #(pos - vehpos) < 5.0 and not IsPedInAnyVehicle(ped) then
            local plate = QBCore.Functions.GetPlate(vehicle)
            TriggerServerEvent("police:server:Impound", plate, fullImpound, price, bodyDamage, engineDamage, totalFuel)
            QBCore.Functions.DeleteVehicle(vehicle)
        end
    end
end)
````

- Replace 👇
```lua 
RegisterNetEvent('police:client:ImpoundVehicle', function(fullImpound, price)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local bodyDamage = math.ceil(GetVehicleBodyHealth(vehicle))
    local engineDamage = math.ceil(GetVehicleEngineHealth(vehicle))
    local totalFuel = exports['LegacyFuel']:GetFuel(vehicle)
    if vehicle ~= 0 and vehicle then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local vehpos = GetEntityCoords(vehicle)
        if #(pos - vehpos) < 5.0 and not IsPedInAnyVehicle(ped) then
            local plate = QBCore.Functions.GetPlate(vehicle)
            TriggerEvent('qb-parking:client:impound', plate) -- <--- impound qb-parking trigger
            TriggerServerEvent("police:server:Impound", plate, fullImpound, price, bodyDamage, engineDamage, totalFuel)
            QBCore.Functions.DeleteVehicle(vehicle)
        end
    end
end)
```

## Unpark Trigger, to unpark the vehicle, just for other garages scripts.
```lua
 TriggerEvent("qb-parking:client:unpark", plate) 
```


## If you mis or dont have the table `player_boats`
```sql
CREATE TABLE IF NOT EXISTS `player_boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `boathouse` varchar(50) DEFAULT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```

## ⚙️ To get a other languages.
- 1: copy a file from the resources[qb]/qb-parking/locales directory
- 2: rename this file for example fr.lua or sp.lua
- 3: translate the lines in the file to your language
- 4: you now have added a new language to the system, enjoy 😎


## 🐞 Any bugs issues or suggestions, let my know.
- If you have any suggestions or nice ideas let me know and we can see what we can do 👊😎
- Keep it nice and clean for everybody and have fun with this awesome qb-parking mod 😎👍


## 🙈 Youtube & Discord
- [Youtube](https://www.youtube.com/channel/UC6431XeIqHjswry5OYtim0A)
- [Discord](https://discord.gg/cEMSeE9dgS)

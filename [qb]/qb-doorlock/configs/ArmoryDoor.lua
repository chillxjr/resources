

-- ArmoryDoor1 created by Pouncer012
Config.DoorList['ArmoryDoor-ArmoryDoor1'] = {
    doorType = 'double',
    locked = true,
    distance = 2,
    doorRate = 1.0,
    doors = {
        {objName = -2023754432, objYaw = 217.10433959961, objCoords = vec3(-1093.427002, -834.218201, 14.438471)},
        {objName = -2023754432, objYaw = 37.374889373779, objCoords = vec3(-1095.494019, -835.790833, 14.438471)}
    },
    authorizedJobs = { ['police'] = 0 },
}

-- ArmoryDoor2 created by Pouncer012
Config.DoorList['ArmoryDoor-ArmoryDoor2'] = {
    distance = 2,
    objCoords = vec3(-1100.792969, -826.737000, 14.438471),
    objYaw = 217.10433959961,
    authorizedJobs = { ['police'] = 0 },
    doorType = 'door',
    locked = true,
    doorRate = 1.0,
    objName = -2023754432,
    fixText = false,
}
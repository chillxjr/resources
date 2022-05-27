

-- GarageMain1 created by Pouncer012
Config.DoorList['GarageMain-GarageMain1'] = {
    doorType = 'double',
    locked = true,
    distance = 2,
    doorRate = 1.0,
    doors = {
        {objName = -2023754432, objYaw = 217.10433959961, objCoords = vec3(-1100.960938, -846.156921, 13.851470)},
        {objName = -2023754432, objYaw = 37.374889373779, objCoords = vec3(-1103.025024, -847.726624, 13.851470)}
    },
    authorizedJobs = { ['police'] = 0 },
}

-- GarageMain2 created by Pouncer012
Config.DoorList['GarageMain-GarageMain2'] = {
    distance = 2,
    objCoords = vec3(-1108.877930, -842.735168, 13.834230),
    objYaw = 37.374889373779,
    authorizedJobs = { ['police', 'mechanic'] = 0 },
    doorType = 'door',
    locked = true,
    doorRate = 1.0,
    objName = -2023754432,
    fixText = false,
}

-- GarageMain3 created by Pouncer012
Config.DoorList['GarageMain-GarageMain3'] = {
    distance = 5,
    objCoords = vec3(-1119.328979, -838.454102, 14.348921),
    objYaw = 127.16567230225,
    authorizedJobs = { ['police', 'mechanic'] = 0 },
    doorType = 'garage',
    locked = true,
    doorRate = 1.0,
    objName = 1828187002,
    fixText = false,
}
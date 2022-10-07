Config = {}

-- **** IMPORTANT ****
-- UseTarget should only be set to true when using qb-target
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Targets = {}

Config.AttachedVehicle = nil

Config.AuthorizedIds = {
    -- "insertcitizenidhere",
}

Config.MaxStatusValues = {
    ["engine"] = 1000.0,
    ["body"] = 1000.0,
    ["radiator"] = 100,
    ["axle"] = 100,
    ["brakes"] = 100,
    ["clutch"] = 100,
    ["fuel"] = 100,
}

Config.ValuesLabels = {
    ["engine"] = "Motor",
    ["body"] = "Body",
    ["radiator"] = "Radiator",
    ["axle"] = "Drive Shaft",
    ["brakes"] = "Brakes",
    ["clutch"] = "Clutch",
    ["fuel"] = "Fuel Ttank",
}

Config.RepairCost = {
    ["body"] = "plastic",
    ["radiator"] = "plastic",
    ["axle"] = "steel",
    ["brakes"] = "iron",
    ["clutch"] = "aluminum",
    ["fuel"] = "plastic",
}

Config.RepairCostAmount = {
    ["engine"] = {
        item = "metalscrap",
        costs = 2,
    },
    ["body"] = {
        item = "plastic",
        costs = 3,
    },
    ["radiator"] = {
        item = "steel",
        costs = 5,
    },
    ["axle"] = {
        item = "aluminum",
        costs = 7,
    },
    ["brakes"] = {
        item = "copper",
        costs = 5,
    },
    ["clutch"] = {
        item = "copper",
        costs = 6,
    },
    ["fuel"] = {
        item = "plastic",
        costs = 5,
    },
}

Config.Businesses = {
    "Auto Repair",
}

Config.Plates = {
    [1] = {
        coords = vector4(-1111.48, -828.7, 13.42, 307.67),
        boxData = {
            heading = 307.8,
            length = 5,
            width = 2.5,
            debugPoly = false
        },
        AttachedVehicle = nil,
    },
    [2] = {
        coords = vector4(-1107.59, -833.56, 13.42, 307.79),
        boxData = {
            heading = 307.8,
            length = 6.5,
            width = 5,
            debugPoly = false
        },
        AttachedVehicle = nil,
    },
}

Config.Locations = {
    ["exit"] = vector3(1186.54, 2645.97, 38.36),
    ["duty"] = vector3(-1113.93, -842.77, 13.34),
    ["stash"] = vector3(-1106.17, -838.78, 13.34),
    ["vehicle"] = vector4(-1128.91, -863.08, 13.55, 37.68),
}

Config.Vehicles = {
    ["flatbed4"] = "Flatbed",
    ["aflatbed"] = "Flatbed 2",
    ["towtruck"] = "Towtruck",
    ["atow"] = "Towtruck 2",
    ["21tahoe"] = "DOT Boss Tahoe",
    ["21f250"] = "DOT Mech Truck",
    ["blista"] = "Blista (Loaner Car",
}

Config.MinimalMetersForDamage = {
    [1] = {
        min = 8000,
        max = 12000,
        multiplier = {
            min = 1,
            max = 8,
        }
    },
    [2] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 8,
            max = 16,
        }
    },
    [3] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 16,
            max = 24,
        }
    },
}

Config.Damages = {
    ["radiator"] = "Radiator",
    ["axle"] = "Drive Shaft",
    ["brakes"] = "Brakes",
    ["clutch"] = "Clutch",
    ["fuel"] = "Fuel Tank",
}

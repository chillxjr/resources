Config = {}

Config.BailPrice = 250

Config.Locations = {
    ["main"] = {
        label = "Hauler HQ",
        coords = vector4(913.7, -1273.56, 26.1, 55.28),
    },
    ["vehicle"] = {
        model = "phantom",
        coords = vector4(879.52, -1242.6, 26.21, 327.94),
    },
    ["truckspot"] = {
        [1] = { -- Kayu
            model = "TrailerLogs",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(-561.64, 5371.85, 70.22, 157.66),
            prize = 3750
        },
        [2] = { -- Tanker 1
            model = "Tanker",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector3(1205.42, -1287.9, 35.23),
            prize = 180
        },
        [3] = { -- Tanker 2
            model = "Tanker2",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector3(1205.42, -1287.9, 35.23),
            prize = 180
        },
        [4] = { -- Cardealer
            model = "TR4",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector3(-22.39, -1083.3, 26.63),
            prize = 220
        },
        [5] = { -- Ayam
            model = "Trailers2",
            livery = 2,
            -- spawn_coords = vector4(-602.56, -1216.02, 14.82, 309.58),
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector3(-602.56, -1216.02, 14.82),
            prize = 320
        }
    }
}
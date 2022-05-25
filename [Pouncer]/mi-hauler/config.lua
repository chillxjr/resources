Config = {}

Config.BailPrice = 250

Config.Locations = {
    ["main"] = {
        label = "Hauler HQ",
        coords = vector4(913.7, -1273.56, 26.1, 55.28),
    },
    ["vehicle"] = {
        model = "phantom",
        coords = vector4(879.52, -1242.6, 27.21, 327.94),
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
            target_coords = vector4(616.67, 268.44, 103.09, 356.81),
            prize = 2275
        },
        [3] = { -- Tanker 2
            model = "Tanker2",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(-2091.85, -318.65, 13.03, 353.87),
            prize = 3250
        },
        [4] = { -- Cardealer
            model = "TR4",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(-1278.9, -374.84, 36.58, 25.47),
            prize = 2865
        },
        [5] = { -- Up-n-Atom1
            model = "Trailers2",
            livery = 2,
            -- spawn_coords = vector4(-602.56, -1216.02, 14.82, 309.58),
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(1582.48, 6440.41, 24.94, 68.73),
            prize = 4725
        },
        [6] = { -- Up-n-Atom2
            model = "Trailers2",
            livery = 2,
            -- spawn_coords = vector4(-602.56, -1216.02, 14.82, 309.58),
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(-1554.18, -470.72, 35.67, 208.51),
            prize = 2745
        },
        [7] = { -- Up-n-Atom3
            model = "Trailers2",
            livery = 2,
            -- spawn_coords = vector4(-602.56, -1216.02, 14.82, 309.58),
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(101.84, 295.62, 110.01, 154.87),
            prize = 2895
        },
        [8] = { -- Tanker 3
            model = "Tanker",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(200.6, 6620.17, 31.65, 183.36),
            prize = 4155
        },
        [8] = { -- Tanker 4
            model = "Tanker",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(2932.67, 4311.03, 50.9, 256.94),
            prize = 2275
        },
        [9] = { -- Tanker 5
            model = "Tanker",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(1992.61, 3762.65, 32.18, 119.16),
            prize = 3635
        },
        [10] = { -- Tanker 6
            model = "Tanker",
            livery = nil,
            spawn_coords = vector4(922.7, -1232.66, 25.55, 95.83),
            target_coords = vector4(251.8, -1261.68, 29.15, 174.16),
            prize = 1185
        },
    }
}
Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

-- Price taken and given back when delivered a truck
Config.TruckPrice = 250

-- Want to give out a cryptostick per stop?
Config.GiveCryptoStick = false

-- Has to roll this number or higher to receive a cryptostick
Config.CryptoStickChance = 75

-- How many stops minimum should the job roll?
Config.MinStops = 5

-- Upper worth per bag
Config.BagUpperWorth = 200

-- Lower worth per bag
Config.BagLowerWorth = 80

-- Minimum bags per stop
Config.MinBagsPerStop = 3

-- Maximum bags per stop
Config.MaxBagsPerStop = 8

-- WIP: Do not use
-- If you want to use custom routes instead of random amount of stops stops set to true
Config.UsePreconfiguredRoutes = false

Config.Peds = {
    {
        model = 's_m_y_garbage',
        coords = vector4(2051.68, 3174.12, 44.17, 342.13),
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}

Config.Locations = {
    ["main"] = {
        label = "Garbage Depot",
        coords = vector3(2044.3, 3178.68, 45.03),
    },
    ["vehicle"] = {
        label = "Garbage Truck Storage",
        coords = vector4(2044.3, 3178.68, 45.03, 133.77),
    },
    ["paycheck"] = {
        label = "Payslip Collection",
        coords = vector3(2050.5, 3172.24, 45.17),
    },
    ["trashcan"] ={
        [1] = {
            name = "yellowjack",
            coords = vector4(1964.99, 3030.59, 47.06, 143.5),
        },
        [2] = {
            name = "behind247",
            coords = vector4(1967.72, 3756.71, 32.22, 294.11),
        },
        [3] = {
            name = "sandy1",
            coords = vector4(1925.46, 3744.66, 32.52, 301.36),
        },
        [4] = {
            name = "aceliq1",
            coords = vector4(1386.35, 3601.59, 34.89, 284.5),
        },
        [5] = {
            name = "boathouse",
            coords = vector4(1558.5, 3804.3, 34.25, 28.7),
        },
        [6] = {
            name = "bar_by_trevors",
            coords = vector4(1946.48, 3831.09, 32.15, 297.63),
        },
        [7] = {
            name = "aceliq2",
            coords = vector4(1381.35, 3615.96, 34.89, 303.18),
        },
        [8] = {
            name = "sandy2",
            coords = vector4(983.22, 3581.69, 33.61, 239.13),
        },
        [9] = {
            name = "aceliq2",
            coords = vector4(1381.35, 3615.96, 34.89, 303.18),
        },
        [10] = {
            name = "sandy3",
            coords = vector4(436.64, 3562.12, 33.24, 357.48),
        },
        [11] = {
            name = "rt68gas2",
            coords = vector4(251.86, 2586.02, 45.13, 34.33),
        },
        [12] = {
            name = "rt68247",
            coords = vector4(536.97, 2667.91, 42.25, 301.15),
        },
        [13] = {
            name = "behinddollarpills",
            coords = vector4(565.18, 2803.33, 42.11, 201.5),
        },
        [14] = {
            name = "tacoshed",
            coords = vector4(636.44, 2729.19, 41.88, 119.15),
        },
        [15] = {
            name = "rt68house",
            coords = vector4(972.35, 2720.95, 39.49, 332.2),
        },
        [16] = {
            name = "middlegas",
            coords = vector4(1019.01, 2650.02, 39.6, 164.34),
        },
        [17] = {
            name = "behindmotel",
            coords = vector4(1120.22, 2626.15, 38.0, 196.97),
        },
        [18] = {
            name = "rt68mech",
            coords = vector4(1193.16, 2631.99, 37.81, 174.29),
        },
        [19] = {
            name = "rt68stores",
            coords = vector4(1176.4, 2729.64, 38.0, 2.45),
        },
        [20] = {
            name = "firestation",
            coords = vector4(1681.75, 3571.19, 35.47, 20.53),
        },
        [21] = {
            name = "motel2",
            coords = vector4(406.71, 2626.87, 44.48, 244.27),
        },
    },
    ["routes"] = { -- Custom routes (WIP Do not use)
        [1] = {7, 6, 5, 15, 10},
        [2] = {11, 18, 7, 8, 15},
        [3] = {1, 7, 8, 17, 18},
        [4] = {16, 17, 4, 8, 21},
        [5] = {8, 2, 6, 17, 19},
        [6] = {3, 19, 1, 8, 11},
        [7] = {8, 19, 9, 6, 14},
        [8] = {14, 12, 20, 9, 11},
        [9] = {9, 18, 3, 6, 20},
        [10] = {9, 13, 7, 17, 16}
    }
}

Config.Vehicles = {
    ["trash2"] = "Garbage Truck",
}

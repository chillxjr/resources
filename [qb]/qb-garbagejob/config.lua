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
        coords = vector4(-321.87, -1545.77, 30.02, 289.6),
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}

Config.Locations = {
    ["main"] = {
        label = "Garbage Depot",
        coords = vector4(-321.87, -1544.77, 31.02, 289.6),
    },
    ["vehicle"] = {
        label = "Garbage Truck Storage",
        coords = vector4(-321.25, -1524.81, 27.55, 264.28),
    },
    ["paycheck"] = {
        label = "Payslip Collection",
        coords = vector4(-321.87, -1544.77, 31.02, 289.6),
    },
    ["trashcan"] ={
        [1] = {
            name = "bennys01",
            coords = vector4(-175.97, -1290.88, 32.58, 78.08),
        },
        [2] = {
            name = "bennys02",
            coords = vector4(-151.38, -1293.27, 32.6, 187.71),
        },
        [3] = {
            name = "beer_wine_at_153",
            coords = vector4(475.25, -1861.75, 29.04, 302.6),
        },
        [4] = {
            name = "port_of_entry_at_36",
            coords = vector4(151.28, -2477.2, 7.31, 269.22),
        },
        [5] = {
            name = "north_across_from_VespucciPD_at_350",
            coords = vector4(-1021.01, -780.56, 17.71, 250.86),
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

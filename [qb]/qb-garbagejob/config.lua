Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

-- Price taken and given back when delivered a truck
Config.TruckPrice = 250

-- Want to give out a cryptostick per stop?
Config.GiveCryptoStick = true

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
            coords = vector4(-176.36, -1290.99, 31.3, 276.98),
        },
        [2] = {
            name = "bennys02",
            coords = vector4(-151.37, -1294.29, 31.26, 351.46),
        },
        [3] = {
            name = "beer_wine_at_153",
            coords = vector4(476.19, -1861.97, 27.66, 123.28),
        },
        [4] = {
            name = "port_of_entry_at_36",
            coords = vector4(151.9, -2477.18, 6.0, 103.05),
        },
        [5] = {
            name = "north_across_from_VespucciPD_at_350",
            coords = vector4(-1020.39, -780.78, 16.37, 93.11),
        },
        [6] = {
            name = "unicorn_strip_club",
            coords = vector4(155.06, -1309.17, 29.2, 259.69),
        },
        [7] = {
            name = "west_of_539",
            coords = vector4(-256.82, -220.09, 36.52, 93.82),
        },
        [8] = {
            name = "power_street_alley_578",
            coords = vector4(268.87, -26.12, 73.52, 150.9),
        },
        [9] = {
            name = "alta_street_north_567",
            coords = vector4(237.75, 360.48, 105.65, 8.01),
        },
        [10] = {
            name = "west553_and_SanVitusBlvd",
            coords = vector4(-207.63, 219.53, 87.9, 0.35),
        },
        [11] = {
            name = "514",
            coords = vector4(-580.19, 192.01, 71.37, 297.06),
        },
        [12] = {
            name = "644_gas_station_back_of",
            coords = vector4(-1402.22, -273.21, 46.41, 319.79),
        },
        [13] = {
            name = "west_331",
            coords = vector4(-1299.43, -784.81, 17.71, 25.19),
        },
        [14] = {
            name = "317",
            coords = vector4(-1177.11, -1404.95, 4.65, 126.59),
        },
        [15] = {
            name = "korean_shops_off_vespucci_blvd_366",
            coords = vector4(-717.3, -881.39, 23.62, 41.18),
        },
        [16] = {
            name = "in_front_of_car_wash_at_126",
            coords = vector4(48.82, -1386.44, 29.33, 189.29),
        },
        [17] = {
            name = "at_gas_station_at_135",
            coords = vector4(189.22, -1554.31, 29.22, 350.95),
        },
        [18] = {
            name = "behind_food_n_gas_at_120",
            coords = vector4(-43.1, -1758.8, 29.49, 0.6),
        },
        [19] = {
            name = "inside_gate_at_west159",
            coords = vector4(517.37, -1751.97, 28.69, 334.67),
        },
        [20] = {
            name = "at_LTD_gas_station_at_411",
            coords = vector4(1167.86, -318.38, 69.33, 96.49),
        },
        [21] = {
            name = "at_24/7_market_at_599",
            coords = vector4(522.29, -161.62, 56.22, 235.88),
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

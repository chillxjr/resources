Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.BailPrice = 250

Config.Locations = {
    ["main"] = {
        label = "Truck Shed",
        coords = vector4(180.25, 2793.28, 45.66, 278.65),
    },  
    ["vehicle"] = {
        label = "Truck Storage",
        coords = vector4(189.8, 2800.2, 45.66, 355.14),
    },
    ["stores"] ={
        [1] = {
            name = "rt68247",
            coords = vector4(541.64, 2663.67, 42.17, 105.87),
        },
        [2] = {
            name = "dollarpills",
            coords = vector4(635.18, 2775.09, 42.01, 274.28),
        },
        [3] = {
            name = "blue_house",
            coords = vector4(471.12, 2607.66, 44.48, 15.77),
        },
        [4] = {
            name = "store_on_68",
            coords = vector4(1200.79, 2655.64, 37.85, 128.63),
        },
        [5] = {
            name = "yellowjack",
            coords = vector4(1980.58, 3049.66, 50.43, 330.82),
        },
        [6] = {
            name = "sandy_house 1",
            coords = vector4(1842.87, 3777.58, 33.15, 311.19),
        },
        [7] = {
            name = "sandy_house_2",
            coords = vector4(1880.41, 3920.75, 33.21, 286.13),
        },
        [8] = {
            name = "sandy_house_3",
            coords = vector4(1389.89, 3661.81, 34.92, 198.29),
        },
    },
}

Config.Vehicles = {
    ["boxville2"] = "Delivery Truck",
}

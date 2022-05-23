Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.BailPrice = 250

Config.Locations = {
    ["main"] = {
        label = "Truck Shed",
        coords = vector4(78.83, 112.58, 81.17, 153.97),
    },  
    ["vehicle"] = {
        label = "Truck Storage",
        coords = vector4(78.87, 107.26, 79.18, 69.79),
    },
    ["stores"] ={
        [1] = {
            name = "556",
            coords = vector4(-153.71, -41.24, 54.4, 255.16),
        },
        [2] = {
            name = "rockfordpd",
            coords = vector4(-561.4, -132.82, 38.04, 14.39),
        },
        [3] = {
            name = "571",
            coords = vector4(-32.3, -184.91, 53.73, 355.08),
        },
        [4] = {
            name = "126",
            coords = vector4(26.31, -1409.6, 29.33, 162.31),
        },
        [5] = {
            name = "franklin_neighbor",
            coords = vector4(-32.52, -1446.42, 31.89, 270.54),
        },
        [6] = {
            name = "131",
            coords = vector4(182.95, -1836.69, 28.1, 312.31),
        },
        [7] = {
            name = "144",
            coords = vector4(367.39, -1802.45, 29.07, 315.71),
        },
        [8] = {
            name = "440",
            coords = vector4(1228.82, -726.05, 60.8, 299.28),
        },
    },
}

Config.Vehicles = {
    ["boxville2"] = "Delivery Truck",
}

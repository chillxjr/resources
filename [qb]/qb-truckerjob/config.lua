Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.BailPrice = 250

Config.Locations = {
    ["main"] = {
        label = "Truck Shed",
        coords = vector4(635.39, 2774.95, 42.01, 273.14),
    },  
    ["vehicle"] = {
        label = "Truck Storage",
        coords = vector4(639.83, 2781.61, 42.0, 274.11),
    },
    ["stores"] ={
        [1] = {
            name = "outside_storage",
            coords = vector4(1866.38, 2707.11, 45.87, 115.29),
        },
        [2] = {
            name = "middle_gates",
            coords = vector4(1828.87, 2605.81, 45.56, 149.62),
        },
        [3] = {
            name = "back_door_1",
            coords = vector4(1690.58, 2592.71, 45.69, 191.48),
        },
        [4] = {
            name = "inner_prison_1",
            coords = vector4(1606.19, 2653.05, 45.56, 65.64),
        },
        [5] = {
            name = "inner_prison_2",
            coords = vector4(1643.44, 2446.14, 45.56, 175.5),
        },
        [6] = {
            name = "inner_prison_3",
            coords = vector4(1728.97, 2446.08, 45.56, 178.72),
        },
        [7] = {
            name = "inner_prison_4",
            coords = vector4(1792.79, 2552.13, 45.56, 276.49),
        },
        [8] = {
            name = "front_door",
            coords = vector4(1846.37, 2585.87, 45.67, 271.67),
        },
    },
}

Config.Vehicles = {
    ["rumpo"] = "Dumbo Delivery",
}

Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.BailPrice = 250

Config.Vehicles = {
    ["flatbed"] = "Flatbed",
}

Config.Locations = {
    ["main"] = {
        label = "Towing HQ",
        coords = vector4(1189.64, 2651.16, 37.84, 304.34),
    },
    ["vehicle"] = {
        label = "Flatbed",
        coords = vector4(1184.35, 2654.18, 37.82, 314.39),
    },
    ["towspots"] = {
        [1] =  {model = "sultanrs", coords = vector3(976.02, 2693.35, 40.02)},
        [2] =  {model = "zion", coords = vector3(1606.19, 2810.09, 38.83)},
        [3] =  {model = "oracle", coords = vector3(1948.23, 3046.76, 46.55)},
        [4] =  {model = "chino", coords = vector3(1884.17, 3232.46, 45.34)},
        [5] =  {model = "baller2", coords = vector3(1725.32, 3460.79, 39.01)},
        [6] =  {model = "stanier", coords = vector3(1681.23, 3743.75, 33.89)},
        [7] =  {model = "washington", coords = vector3(1474.84, 3660.81, 34.26)},
        [8] =  {model = "buffalo", coords = vector3(1723.69, 3038.2, 60.79)},
        [9] =  {model = "feltzer2", coords = vector3(621.18, 2724.22, 41.83)},
        [10] =  {model = "feltzer2", coords = vector3(439.69, 2671.71, 43.84)},
        
    }
}

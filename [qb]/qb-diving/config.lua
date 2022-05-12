Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.CopsChance = 0.5 -- The chance of the cops getting called when a coral gets picked up, this ranges from 0.0 to 1.0

Config.CoralLocations = {
    [1] = {
        label = "This is Location 1",
        coords = {
            Area = vector3(1194.79, 3950.6, 41.45),
            Coral = {
                [1] = {
                    coords = vector3(1181.01, 3919.95, -2.09),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [2] = {
                    coords = vector3(1168.87, 3942.06, -10.73),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [3] = {
                    coords = vector3(1151.78, 3947.67, -11.89),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
                [4] = {
                    coords = vector3(1156.58, 3962.07, -12.22),
                    length = 3,
                    width = 3,
                    heading = 100.0,
                    PickedUp = false
                },
            }
        },
        DefaultCoral = 4,
        TotalCoral = 4,
    },
    
}

Config.CoralTypes = {
    [1] = {
        item = "dendrogyra_coral",
        maxAmount = math.random(1, 5),
        price = math.random(70, 100),
    },
    [2] = {
        item = "antipatharia_coral",
        maxAmount = math.random(2, 7),
        price = math.random(50, 70),
    }
}

Config.PriceModifiers = {
    [1] = {
        minAmount = 5,
        maxAmount = 10,
        minPercentage = 80,
        maxPercentage = 85
    },
    [2] = {
        minAmount = 11,
        maxAmount = 15,
        minPercentage = 70,
        maxPercentage = 75
    },
    [3] = {
        minAmount = 16,
        minPercentage = 50,
        maxPercentage = 55
    }
}

Config.SellLocations = {
    [1] = {
        coords = vector4(1444.88, 3755.76, 32.01, 25.89),
        model = 'a_m_m_salton_01',
        zoneOptions = { -- Only used when not using the target
            length = 3,
            width = 3
        }
    }
}

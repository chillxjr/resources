Config = {}

Config.PawnLocation = vector3(412.04, 314.92, 103.13)
Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    [1] = {
        item = "goldchain",
        price = math.random(50,1000)
    },
    [2] = {
        item = "diamond_ring",
        price = math.random(50,1000)
    },
    [3] = {
        item = "rolex",
        price = math.random(50,1000)
    },
    [4] = {
        item = "10kgoldchain",
        price = math.random(50,1000)
    },
    [5] = {
        item = "tablet",
        price = math.random(50,1000)
    },
    [6] = {
        item = "iphone",
        price = math.random(50,1000)
    },
    [7] = {
        item = "samsungphone",
        price = math.random(50,1000)
    },
    [8] = {
        item = "laptop",
        price = math.random(50,1000)
    },
    [9] = {
        item = "steel",
        price = math.random(50,100)
    },
    [10] = {
        item = "jerry_can",
        price = math.random(50,75)
    },
    [11] = {
        item = "wine",
        price = math.random(100,300)
    },
    [12] = {
        item = "grapejuice",
        price = math.random(15,30)
    },
    [13] = {
        item = "lockpick",
        price = math.random(10,30)
    },
    [14] = {
        item = "cryptostick",
        price = math.random(500,600)
    },
    [15] = {
        item = "stickynote",
        price = math.random(10,15)
    },
    [16] = {
        item = "iron",
        price = math.random(50,100)
    },
    [17] = {
        item = "plastic",
        price = math.random(50,100)
    },
    [18] = {
        item = "metalscrap",
        price = math.random(50,100)
    },
    [19] = {
        item = "copper",
        price = math.random(50,100)
    },
    [20] = {
        item = "aluminum",
        price = math.random(50,100)
    },
    [21] = {
        item = "goldbar",
        price = math.random(1000,1500)
    },
    [22] = {
        item = "diamond",
        price = math.random(1000,1500)
    },
    [23] = {
        item = "markedbills",
        price = math.random(5000,7000)
    },
    [24] = {
        item = "rubber",
        price = math.random(50,100)
    }

}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = "goldchain",
        rewards = {
            [1] = {
                item = "goldbar",
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = "diamond_ring",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 1
            },
            [2] = {
                item = "goldbar",
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = "rolex",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 1
            },
            [2] = {
                item = "goldbar",
                amount = 1
            },
            [3] = {
                item = "electronickit",
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = "10kgoldchain",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 2
            },
            [2] = {
                item = "goldbar",
                amount = 4
            }
        },
        meltTime = 0.15
    },
    [5] = {
        item = "weapon_pistol",
        rewards = {
            [1] = {
                item = "steel",
                amount = 2
            }
        },
        meltTime = 0.15
    },
    
}

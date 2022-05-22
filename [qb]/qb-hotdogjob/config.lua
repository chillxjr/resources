Config = Config or {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
-- Config --

Config.StandDeposit = 250

Config.MyLevel = 1
Config.MaxReputation = 200

Config.Locations = {
    ["take"] = {
        coords = vector4(1983.07, 3708.49, 32.1, 236.0),
    },
    ["spawn"] = {
        coords = vector4(1975.37, 3698.12, 32.6, 120.47),
    },
}

Config.Stock = {
    ["exotic"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t("info.label_a"),
        Price = {
            [1] = {
                min = 800,
                max = 1200,
            },
            [2] = {
                min = 900,
                max = 1300,
            },
            [3] = {
                min = 1000,
                max = 1400,
            },
            [4] = {
                min = 1100,
                max = 1500,
            },
        }
    },
    ["rare"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t("info.label_b"),
        Price = {
            [1] = {
                min = 600,
                max = 900,
            },
            [2] = {
                min = 700,
                max = 1000,
            },
            [3] = {
                min = 800,
                max = 1100,
            },
            [4] = {
                min = 900,
                max = 1200,
            },
        }
    },
    ["common"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t('info.label_c'),
        Price = {
            [1] = {
                min = 400,
                max = 600,
            },
            [2] = {
                min = 500,
                max = 700,
            },
            [3] = {
                min = 600,
                max = 900,
            },
            [4] = {
                min = 700,
                max = 900,
            },
        }
    },
}

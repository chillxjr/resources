Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
}

Config.MaxSpikes = 5

Config.HandCuffItem = 'handcuffs'

Config.LicenseRank = 2

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Locations = {
    ["duty"] = {
        [1] = vector3(1852.5, 3691.2, 34.26),
        [2] = vector3(-1097.1, -818.45, 19.04),
        [3] = vector3(442.61, -990.8, 30.72),
    },
    ["vehicle"] = {
        [1] = vector4(1853.41, 3710.82, 33.29, 110.39),
        [2] = vector4(-1119.12, -858.94, 13.54, 30.68),
        [3] = vector4(441.7, -1020.17, 28.64, 85.67),
    },
    ["stash"] = {
        [1] = vector3(1847.15, 3680.38, 34.26),
        [2] = vector3(-1099.73, -847.69, 4.88),
        [3] = vector3(468.52, -990.3, 35.06),
    },
    ["impound"] = {
        [1] = vector4(1754.32, 3322.75, 41.22, 208.59),
        [2] = vector4(-436.14, 5982.63, 31.34, 136.0),
        [3] = vector4(-1078.34, -845.75, 4.88, 41.33),
    },
    ["helicopter"] = {
        [1] = vector4(1770.56, 3239.29, 42.15, 239.24),
        [2] = vector4(-1096.14, -832.26, 37.7, 126.76),
        [3] = vector4(449.12, -981.31, 43.69, 355.7),
    },
    ["armory"] = {
        [1] = vector3(1841.28, 3690.76, 34.26),
        [2] = vector3(-1105.19, -821.66, 14.28),
        [3] = vector3(458.48, -997.29, 35.06),
    },
    ["trash"] = {
        [1] = vector3(1854.22, 3693.13, 34.26),
        [2] = vector3(-1103.14, -830.82, 14.28),
        [3] = vector3(468.9, -985.64, 35.06),
    },
    ["fingerprint"] = {
        [1] = vector3(1856.7, 3697.97, 34.26),
        [2] = vector3(-1072.65, -824.15, 5.48),
        [3] = vector3(486.77, -998.41, 30.46),
    },
    ["evidence"] = {
        [1] = vector3(1852.29, 3697.64, 34.26),
        [2] = vector3(-1084.75, -808.76, 11.04),
        [3] = vector3(464.65, -1000.41, 30.46),
    },
    ["stations"] = {
        [1] = {label = "Sheriff Office", coords = vector4(1867.79, 3698.63, 33.51, 209.56)},
        [2] = {label = "Prison", coords = vector4(1845.903, 2585.873, 45.672, 272.249)},
        [3] = {label = "Vespucci PD", coords = vector4(-1100.73, -821.69, 14.28, 301.69)},
        [4] = {label = "Mission Row PD", coords = vector4(464.64, -1000.41, 30.46, 167.77)},
    },
}

Config.ArmoryWhitelist = {}

Config.PoliceHelicopter = "POLMAV"

Config.SecurityCameras = {
    hideradar = true,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}

Config.AuthorizedVehicles = {
	-- Grade 0
	[0] = {
        ["sh1"] = "Ford CVPI (Sheriff)",

        ["pbike"] = "Police Bicycle (Police)",
        ["lspdtaur"] = "2016 Ford Taurus (Police)",
        ["lspdvic"] = "Crown Vic (Police)",
	},
	-- Grade 1
	[1] = {
        ["sh1"] = "Ford CVPI (Sheriff)",
        ["sh19"] = "Ford FPIU (Sheriff)",
        ["sh2"] = "Chevy Impala (Sheriff)",

        ["pbike"] = "Police Bicycle (Police)",
        ["lspd16exp"] = "2016 Ford Explorer (Police)",
        ["lspdtaur"] = "2016 Ford Taurus (Police)",
        ["lspdvic"] = "Crown Vic (Police)",

	},
	-- Grade 2
	[2] = {
        ["sh1"] = "Ford CVPI (Sheriff)",
        ["sh19"] = "Ford FPIU (Sheriff)",
        ["sh2"] = "Chevy Impala (Sheriff)",
        ["sh10"] = "Dodge Charger (Sheriff)",
        

        ["pbike"] = "Police Bicycle (Police)",
        ["lspd10char"] = "2010 Dodge Charger (Police)",
        ["lspd16exp"] = "2016 Ford Explorer (Police)",
        ["lspdtaur"] = "2016 Ford Taurus (Police)",
        ["lspdvic"] = "Crown Vic (Police)",
	},
	-- Grade 3
	[3] = {
        ["sh1"] = "Ford CVPI (Sheriff)",
        ["sh19"] = "Ford FPIU (Sheriff)",
        ["sh2"] = "Chevy Impala (Sheriff)",
        ["sh10"] = "Dodge Charger (Sheriff)",
        ["sh17"] = "Chevy Tahoe (Sheriff)",
        ["sh18"] = "Dodge Durango (Sheriff)",

        ["pbike"] = "Police Bicycle (Police)",
        ["lspd10char"] = "2010 Dodge Charger (Police)",
        ["lspd14char"] = "2014 Dodge Charger (Police)",
        ["lspd18char"] = "2018 Dodge Charger (Police)",
        ["lspd16exp"] = "2016 Ford Explorer (Police)",
        ["lspd16expk9"] = "2016 Ford Explorer K-9 (Police)",
        ["lspd20exp"] = "2020 Ford Explorer (Police)",
        ["lspdtahoe"] = "2018 Chevy Tahoe (Police)",
        ["lspdtahoek9"] = "2018 Chevy Tahoe K-9 (Police)",
        ["lspd21f150"] = "2021 Ford F150 (Police)",
        ["lspddur"] = "2021 Dodge Durango (Police)",
        ["lspdtaur"] = "2016 Ford Taurus (Police)",
        ["policeb"] = "police Motorcycle (Police)",
        ["lspdvet"] = "Corvette (Police)",
    
	},
	-- Grade 4
	[4] = {
        ["sh1"] = "Ford CVPI (Sheriff)",
        ["sh19"] = "Ford FPIU (Sheriff)",
        ["sh2"] = "Chevy Impala (Sheriff)",
        ["sh10"] = "Dodge Charger (Sheriff)",
        ["sh17"] = "Chevy Tahoe (Sheriff)",
        ["sh18"] = "Dodge Durango (Sheriff)",
        ["sh9"] = "Chills Taurus (Sheriff)",
        ["policecart"] = "Golfcart (Sheriff)",

        ["pbike"] = "Bicycle (Police)",
        ["lspdvic"] = "Crown Vic (Police)",
        ["lspd10char"] = "2010 Dodge Charger (Police)",
        ["lspd14char"] = "2014 Dodge Charger (Police)",
        ["lspd16exp"] = "2016 Ford Explorer (Police)",
        ["lspd20exp"] = "2020 Ford Explorer (Police)",
        ["lspdtahoe"] = "2018 Chevy Tahoe (Police)",
        ["lspd21f150"] = "2021 Ford F150 (Police)",
        ["lspddur"] = "2021 Dodge Durango (Police)",
        ["lspdtaur"] = "2016 Ford Taurus (Police)",
        ["policeb"] = "Motorcycle (Police)",
        ["lspdvet"] = "Corvette (Police)",

        ["modelsleo"] = "Tesla (Supervisor)",
        ["viperleo"] = "Dodge Viper (Supervisor)",
        ["amggtrleo"] = "AMG GTR (Supervisor)",
        ["911turboleo"] = "911 Turbo (Supervisor)",
        
	}
}

Config.WhitelistedVehicles = {}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
}

Config.Radars = {
	vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
	vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
	vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
	vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
	vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
	vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
	vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
	vector4(657.315, -218.819, 44.06, 320.0),
	vector4(2118.287, 6040.027, 50.928, 172.0),
	vector4(-106.304, -1127.5530, 30.778, 230.0),
	vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = {
    [1] = {
        name = "weapon_flare",
        amount = 5,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "empty_evidence_bag",
        amount = 10,
        info = {},
        type = "item",
        slot = 2,
    },
    [3] = {
        name = "weapon_fireextinguisher",
        amount = 1,
        info = {},
        type = "item",
        slot = 3,
    },
    [4] = {
        name = "armor",
        amount = 1,
        info = {},
        type = "item",
        slot = 4,
    },
}

Config.Items = {
    label = "Police Armory",
    slots = 30,
    items = {
        [1] = {
            name = "weapon_pistol",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_PI_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [2] = {
            name = "weapon_stungun",
            price = 0,
            amount = 1,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [3] = {
            name = "weapon_pumpshotgun",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [4] = {
            name = "weapon_smg",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_SCOPE_MACRO_02", label = "1x Scope"},
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 4,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [5] = {
            name = "weapon_carbinerifle",
            price = 0,
            amount = 1,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                    {component = "COMPONENT_AT_SCOPE_MEDIUM", label = "3x Scope"},
                }
            },
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [6] = {
            name = "weapon_nightstick",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 6,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [7] = {
            name = "pistol_ammo",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [8] = {
            name = "smg_ammo",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 8,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [9] = {
            name = "shotgun_ammo",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [10] = {
            name = "rifle_ammo",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [11] = {
            name = "handcuffs",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [12] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 12,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [13] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [14] = {
            name = "police_stormram",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 14,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [15] = {
            name = "armor",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 15,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [16] = {
            name = "radio",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 16,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        },
        [17] = {
            name = "heavyarmor",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 17,
            authorizedJobGrades = {0, 1, 2, 3, 4}
        }
    }
}

Config.VehicleSettings = {
    ["sh9"] = { --- Model name
        ["extras"] = {
            ["1"] = false, -- on/off
            ["2"] = false,
            ["3"] = true,
            ["4"] = true,
            ["5"] = false,
            ["6"] = false,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = false,
            ["11"] = false,
            ["12"] = false,
            
        },
		["livery"] = 3,
    },
    ["sh10"] = { --- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = false,
            ["3"] = false,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = false,
            ["8"] = true,
            ["9"] = true,
            ["10"] = false,
            ["11"] = false,
            ["12"] = true,
            
        },
		["livery"] = 6,
    },
    ["sh19"] = { --- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = false,
            ["3"] = false,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = false,
            ["8"] = true,
            ["9"] = false,
            ["10"] = true,
            ["11"] = false,
            ["12"] = true,
            
        },
		["livery"] = 4,
    },
    ["sh1"] = {
        ["extras"] = {
            ["1"] = true,
            ["2"] = false,
            ["3"] = false,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = false,
            ["8"] = true,
            ["9"] = true,
            ["10"] = false,
            ["11"] = true,
            ["12"] = false,
            ["13"] = true,
        },
		["livery"] = 4,
    }
}

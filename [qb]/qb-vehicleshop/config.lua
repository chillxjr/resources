Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42) -- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(877.33, 3639.66),
                vector2(877.43, 3664.26),
                vector2(929.32, 3664.32),
                vector2(927.25, 3640.13)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 28.0,  -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Derricks Deals', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles'
            
        },
        ['TestDriveTimeLimit'] = 1, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(896.93, 3641.47, 32.65), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(923.9, 3650.44, 32.59, 176.31), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(899.4, 3645.98, 31.76, 87.08), -- where the vehicle will spawn on display
                defaultVehicle = 'blista', -- Default display vehicle
                chosenVehicle = 'blista', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(899.75, 3653.26, 31.76, 94.69),
                defaultVehicle = 'club',
                chosenVehicle = 'club',
            },
            [3] = {
                coords = vector4(899.52, 3659.54, 31.76, 91.13),
                defaultVehicle = 'issi2',
                chosenVehicle = 'issi2',
            },
            [4] = {
                coords = vector4(883.54, 3658.97, 31.87, 271.08),
                defaultVehicle = 'prairie',
                chosenVehicle = 'prairie',
            },
            [5] = {
                coords = vector4(882.5, 3654.55, 31.88, 231.41),
                defaultVehicle = 'weevil',
                chosenVehicle = 'weevil',
            },
            [6] = {
                coords = vector4(882.32, 3650.01, 31.88, 230.05),
                defaultVehicle = 'felon',
                chosenVehicle = 'felon',
            },
            [7] = {
                coords = vector4(890.21, 3659.61, 31.82, 184.33),
                defaultVehicle = 'jackal',
                chosenVehicle = 'jackal',
            }
        },
    },
     -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88),
            },
            ['minZ'] = 0.0,  -- min height of the shop zone
            ['maxZ'] = 5.0,  -- max height of the shop zone
            ['size'] = 6.2, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 410,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['boats'] = 'Boats',
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy',
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder',
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis',
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84),
            },
            ['minZ'] = 0.0,  -- min height of the shop zone
            ['maxZ'] = 5.0,  -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 251,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['helicopters'] = 'Helicopters',
            ['planes'] = 'Planes',
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2',
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus',
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger',
            },
        },
    },
    ['luxury'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports',
            ['sportsclassics'] = 'Sports Classics',
            ['motorcycles'] = 'Motorcycles',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes'
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 34.91, 205.08),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 34.91, 247.08),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb',
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 34.91, 297.12),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero',
            },
            [4] = {
                coords = vector4(-1252.07, -364.2, 34.91, 56.44),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [5] = {
                coords = vector4(-1255.49, -365.91, 34.91, 55.63),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs',
            },
            [6] = {
                coords = vector4(-1249.21, -362.97, 34.91, 53.24),
                defaultVehicle = 'hexer',
                chosenVehicle = 'hexer',
            },
        }
    },
    ['luxury2'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-56.5, -1081.65),
                vector2(-63.5, -1100.35),
                vector2(-35.77, -1110.34),
                vector2(-39.26, -1121.53),
                vector2(-28.54, -1121.17),
                vector2(-16.59, -1088.06),
                vector2(-39.79, -1079.55)
            },
            ['minZ'] = 25,
            ['maxZ'] = 27,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Sporty Vehicle Shop',
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports',
            ['sportsclassics'] = 'Sports Classics',
            ['motorcycles'] = 'Motorcycles',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes'
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-54.07, -1103.16, 26.44),
        ['ReturnLocation'] = vector3(-49.02, -1076.97, 26.83),
        ['VehicleSpawn'] = vector4(-49.02, -1076.97, 26.83, 72.48),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-61.41, -1099.37, 25.4, 208.73),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [2] = {
                coords = vector4(-49.11, -1100.37, 25.42, 185.96),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb',
            },
            [3] = {
                coords = vector4(-43.95, -1101.02, 25.42, 114.36),
                defaultVehicle = 'Exemplar',
                chosenVehicle = 'Exemplar',
            },
            [4] = {
                coords = vector4(-52.06, -1093.83, 25.42, 88.19),
                defaultVehicle = 'BestiaGTS',
                chosenVehicle = 'BestiaGTS',
            },
            [5] = {
                coords = vector4(-46.31, -1094.16, 25.42, 193.74),
                defaultVehicle = 'Seven70',
                chosenVehicle = 'Seven70',
            },
            [6] = {
                coords = vector4(-41.59, -1096.12, 25.42, 113.41),
                defaultVehicle = 'Verlierer2',
                chosenVehicle = 'Verlierer2',
            },
            [7] = {
                coords = vector4(-36.17, -1102.18, 25.42, 157.42),
                defaultVehicle = 'Ruston',
                chosenVehicle = 'Ruston',
            },
        }
    },
    ['pdm2'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(89.53, -1506.78),
                vector2(114.17, -1527.62),
                vector2(142.44, -1499.98),
                vector2(115.56, -1477.08)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 28.0,  -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'PDM South', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles'
            
        },
        ['TestDriveTimeLimit'] = 2, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(94.73, -1507.02, 29.25), -- Blip Location
        ['ReturnLocation'] = vector3(138.86, -1490.76, 29.14), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(118.3, -1486.18, 29.14, 317.97), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(99.38, -1501.57, 28.26, 135.84), -- where the vehicle will spawn on display
                defaultVehicle = 'blista', -- Default display vehicle
                chosenVehicle = 'blista', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(100.54, -1511.9, 28.26, 45.59),
                defaultVehicle = 'club',
                chosenVehicle = 'club',
            },
            [3] = {
                coords = vector4(105.75, -1514.28, 28.26, 168.03),
                defaultVehicle = 'issi2',
                chosenVehicle = 'issi2',
            },
            [4] = {
                coords = vector4(117.74, -1501.69, 28.26, 99.1),
                defaultVehicle = 'prairie',
                chosenVehicle = 'prairie',
            },
            [5] = {
                coords = vector4(127.42, -1502.63, 28.26, 135.36),
                defaultVehicle = 'weevil',
                chosenVehicle = 'weevil',
            },
            [6] = {
                coords = vector4(122.73, -1497.11, 28.26, 227.61),
                defaultVehicle = 'felon',
                chosenVehicle = 'felon',
            },
            [7] = {
                coords = vector4(111.22, -1494.0, 28.97, 169.8),
                defaultVehicle = 'jackal',
                chosenVehicle = 'jackal',
            }
        },
    },
    ['bikes'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(305.57, -1167.99),
                vector2(305.89, -1148.34),
                vector2(255.01, -1148.1),
                vector2(255.08, -1178.13)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 28.0,  -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Doms Motorcycles', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles'
            
        },
        ['TestDriveTimeLimit'] = 2, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(286.85, -1148.62, 29.29), -- Blip Location
        ['ReturnLocation'] = vector3(267.12, -1157.44, 29.27), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(274.0, -1159.57, 29.27, 88.49), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(291.48, -1150.63, 28.47, 12.62), -- where the vehicle will spawn on display
                defaultVehicle = 'Akuma', -- Default display vehicle
                chosenVehicle = 'Akuma', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(298.44, -1150.8, 28.47, 359.19),
                defaultVehicle = 'BF400',
                chosenVehicle = 'BF400',
            },
            [3] = {
                coords = vector4(300.37, -1150.96, 28.47, 357.82),
                defaultVehicle = 'Double',
                chosenVehicle = 'Double',
            },
            [4] = {
                coords = vector4(290.05, -1154.89, 28.47, 40.82),
                defaultVehicle = 'Hakuchou2',
                chosenVehicle = 'Hakuchou2',
            },
            [5] = {
                coords = vector4(288.01, -1154.87, 28.47, 40.98),
                defaultVehicle = 'Ruffian',
                chosenVehicle = 'Ruffian',
            },
            [6] = {
                coords = vector4(285.71, -1155.0, 28.47, 40.28),
                defaultVehicle = 'Sovereign',
                chosenVehicle = 'Sovereign',
            },
            [7] = {
                coords = vector4(280.84, -1155.33, 28.45, 305.42),
                defaultVehicle = 'Vader',
                chosenVehicle = 'Vader',
            },
            [8] = {
                coords = vector4(281.04, -1152.41, 28.45, 222.41),
                defaultVehicle = 'Wolfsbane',
                chosenVehicle = 'Wolfsbane',
            },
            [9] = {
                coords = vector4(289.48, -1161.71, 28.47, 221.43),
                defaultVehicle = 'Gargoyle',
                chosenVehicle = 'Gargoyle',
            },
            [10] = {
                coords = vector4(262.73, -1162.04, 28.19, 8.17),
                defaultVehicle = 'Cliffhanger',
                chosenVehicle = 'Cliffhanger',
            },
            [11] = {
                coords = vector4(262.49, -1149.76, 28.29, 174.84),
                defaultVehicle = 'Daemon',
                chosenVehicle = 'Daemon',
            },
            [12] = {
                coords = vector4(259.29, -1149.64, 28.29, 175.69),
                defaultVehicle = 'Enduro',
                chosenVehicle = 'Enduro',
            },
            [13] = {
                coords = vector4(259.49, -1162.01, 28.19, 356.72),
                defaultVehicle = 'Sanchez',
                chosenVehicle = 'Sanchez',
            },
            [14] = {
                coords = vector4(256.44, -1162.0, 28.18, 359.96),
                defaultVehicle = 'Sanchez2',
                chosenVehicle = 'Sanchez2',
            },
            [15] = {
                coords = vector4(256.52, -1149.71, 28.29, 180.0),
                defaultVehicle = 'PCJ',
                chosenVehicle = 'PCJ',
            }
        },
    },
}

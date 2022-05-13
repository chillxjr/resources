Config = Config or {}

-- set this to false if you want to use distance checks
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
-- Config.UseTarget = GetConvar('UseTarget', 'false')

Config.DefaultTextLocation = "left" -- left, right, top

Config.AllowedVehicles = {
   [1] = {model = "taxi", label = Lang:t("info.taxi_label_1")},
}

Config.Meter = {
    ["defaultPrice"] = 1.60
}

Config.BossMenu = vector3(903.32, -170.55, 74.0)

Config.Location = vector4(984.12, 2718.68, 39.5, 182.5)

Config.NPCLocations = {
    TakeLocations = {
        [1] = vector4(1008.39, 2682.11, 39.59, 353.13),
        [2] = vector4(1893.36, 3714.5, 32.77, 120.99),
        [3] = vector4(1893.36, 3714.5, 32.77, 120.99),
        [4] = vector4(1893.36, 3714.5, 32.77, 120.99),
        [5] = vector4(1990.86, 3777.76, 32.18, 157.98),
        [6] = vector4(1981.37, 3711.86, 32.07, 88.86),
        [7] = vector4(1930.24, 3721.4, 32.82, 215.34),
        [8] = vector4(1841.1, 3670.02, 33.68, 210.63),
        [9] = vector4(1777.42, 3646.32, 34.49, 43.32),
        
    },
    DeliverLocations = {
        [1] = vector4(1124.82, 2656.13, 38.0, 176.91),
        [2] = vector4(1832.17, 3746.28, 33.22, 42.01),
        [3] = vector4(1840.44, 3775.47, 33.24, 359.24),
        [4] = vector4(1653.64, 3718.53, 34.12, 111.4),
        [5] = vector4(1668.54, 3825.82, 34.84, 132.67),
        [6] = vector4(1737.95, 3780.96, 34.15, 210.48),
        [7] = vector4(1450.99, 3642.37, 34.64, 25.15),
        [8] = vector4(1409.9, 3597.85, 34.87, 120.94),
        [9] = vector4(1870.39, 3919.07, 32.97, 202.22),

        
    }
}

Config.PZLocations = {

    TakeLocations = {
        [1] = {
            coord = vector3(1008.12, 2682.39, 39.58),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [2] = {
            coord = vector3(1893.36, 3714.5, 32.77),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [3] = {
            coord = vector3(1893.36, 3714.5, 32.77),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [4] = {
            coord = vector3(1893.36, 3714.5, 32.77),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [5] = {
            coord = vector3(1990.86, 3777.76, 32.18),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [6] = {
            coord = vector3(1981.37, 3711.86, 32.07),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [7] = {
            coord = vector3(1930.24, 3721.4, 32.82),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [8] = {
            coord = vector3(1841.1, 3670.02, 33.68),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        [9] = {
            coord = vector3(1777.42, 3646.32, 34.49),
            height = 17.6,
            width = 4.2,
            heading=69,
            --debugPoly=true,
            minZ=43.75,
            maxZ=45.55
        },
        
    },

    DropLocations = {
        [1] = {
            coord = vector3(1124.82, 2656.13, 38.0),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [2] = {
            coord = vector3(1832.17, 3746.28, 33.22),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [3] = {
            coord = vector3(1840.44, 3775.47, 33.24),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [4] = {
            coord = vector3(1653.64, 3718.53, 34.12),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [5] = {
            coord = vector3(1668.54, 3825.82, 34.84),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [6] = {
            coord = vector3(1737.95, 3780.96, 34.15),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [7] = {
            coord = vector3(1450.99, 3642.37, 34.64),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [8] = {
            coord = vector3(1409.9, 3597.85, 34.87),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        [9] = {
            coord = vector3(1870.39, 3919.07, 32.97),
            height = 21.2, 
            width = 4.2,
            heading=296,
            --debugPoly=true,
            minZ=35.0,
            maxZ=39.2
        },
        

    }
}

Config.NpcSkins = {
    [1] = {
        'a_f_m_skidrow_01',
        'a_f_m_soucentmc_01',
        'a_f_m_soucent_01',
        'a_f_m_soucent_02',
        'a_f_m_tourist_01',
        'a_f_m_trampbeac_01',
        'a_f_m_tramp_01',
        'a_f_o_genstreet_01',
        'a_f_o_indian_01',
        'a_f_o_ktown_01',
        'a_f_o_salton_01',
        'a_f_o_soucent_01',
        'a_f_o_soucent_02',
        'a_f_y_beach_01',
        'a_f_y_bevhills_01',
        'a_f_y_bevhills_02',
        'a_f_y_bevhills_03',
        'a_f_y_bevhills_04',
        'a_f_y_business_01',
        'a_f_y_business_02',
        'a_f_y_business_03',
        'a_f_y_business_04',
        'a_f_y_eastsa_01',
        'a_f_y_eastsa_02',
        'a_f_y_eastsa_03',
        'a_f_y_epsilon_01',
        'a_f_y_fitness_01',
        'a_f_y_fitness_02',
        'a_f_y_genhot_01',
        'a_f_y_golfer_01',
        'a_f_y_hiker_01',
        'a_f_y_hipster_01',
        'a_f_y_hipster_02',
        'a_f_y_hipster_03',
        'a_f_y_hipster_04',
        'a_f_y_indian_01',
        'a_f_y_juggalo_01',
        'a_f_y_runner_01',
        'a_f_y_rurmeth_01',
        'a_f_y_scdressy_01',
        'a_f_y_skater_01',
        'a_f_y_soucent_01',
        'a_f_y_soucent_02',
        'a_f_y_soucent_03',
        'a_f_y_tennis_01',
        'a_f_y_tourist_01',
        'a_f_y_tourist_02',
        'a_f_y_vinewood_01',
        'a_f_y_vinewood_02',
        'a_f_y_vinewood_03',
        'a_f_y_vinewood_04',
        'a_f_y_yoga_01',
        'g_f_y_ballas_01',
    },
    [2] = {
        'ig_barry',
        'ig_bestmen',
        'ig_beverly',
        'ig_car3guy1',
        'ig_car3guy2',
        'ig_casey',
        'ig_chef',
        'ig_chengsr',
        'ig_chrisformage',
        'ig_clay',
        'ig_claypain',
        'ig_cletus',
        'ig_dale',
        'ig_dreyfuss',
        'ig_fbisuit_01',
        'ig_floyd',
        'ig_groom',
        'ig_hao',
        'ig_hunter',
        'csb_prolsec',
        'ig_joeminuteman',
        'ig_josef',
        'ig_josh',
        'ig_lamardavis',
        'ig_lazlow',
        'ig_lestercrest',
        'ig_lifeinvad_01',
        'ig_lifeinvad_02',
        'ig_manuel',
        'ig_milton',
        'ig_mrk',
        'ig_nervousron',
        'ig_nigel',
        'ig_old_man1a',
        'ig_old_man2',
        'ig_oneil',
        'ig_orleans',
        'ig_ortega',
        'ig_paper',
        'ig_priest',
        'ig_prolsec_02',
        'ig_ramp_gang',
        'ig_ramp_hic',
        'ig_ramp_hipster',
        'ig_ramp_mex',
        'ig_roccopelosi',
        'ig_russiandrunk',
        'ig_siemonyetarian',
        'ig_solomon',
        'ig_stevehains',
        'ig_stretch',
        'ig_talina',
        'ig_taocheng',
        'ig_taostranslator',
        'ig_tenniscoach',
        'ig_terry',
        'ig_tomepsilon',
        'ig_tylerdix',
        'ig_wade',
        'ig_zimbor',
        's_m_m_paramedic_01',
        'a_m_m_afriamer_01',
        'a_m_m_beach_01',
        'a_m_m_beach_02',
        'a_m_m_bevhills_01',
        'a_m_m_bevhills_02',
        'a_m_m_business_01',
        'a_m_m_eastsa_01',
        'a_m_m_eastsa_02',
        'a_m_m_farmer_01',
        'a_m_m_fatlatin_01',
        'a_m_m_genfat_01',
        'a_m_m_genfat_02',
        'a_m_m_golfer_01',
        'a_m_m_hasjew_01',
        'a_m_m_hillbilly_01',
        'a_m_m_hillbilly_02',
        'a_m_m_indian_01',
        'a_m_m_ktown_01',
        'a_m_m_malibu_01',
        'a_m_m_mexcntry_01',
        'a_m_m_mexlabor_01',
        'a_m_m_og_boss_01',
        'a_m_m_paparazzi_01',
        'a_m_m_polynesian_01',
        'a_m_m_prolhost_01',
        'a_m_m_rurmeth_01',
    }
}

Config.CabSpawns = {
    vector4(968.23, 2713.71, 39.48, 176.59)
}

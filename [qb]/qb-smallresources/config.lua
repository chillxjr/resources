Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- carwash
Config.DirtLevel = 0.1 --carwash dirt level

ConsumeablesEat = {
    ["sandwich"] = math.random(70, 100),
    ["tosti"] = math.random(70, 100),
    ["twerks_candy"] = math.random(70, 100),
    ["snikkel_candy"] = math.random(70, 100),
}

ConsumeablesDrink = {
    ["water_bottle"] = math.random(70, 100),
    ["kurkakola"] = math.random(70, 100),
    ["coffee"] = math.random(70, 100),
}

ConsumeablesAlcohol = {
    ["whiskey"] = math.random(70, 100),
    ["beer"] = math.random(70, 100),
    ["vodka"] = math.random(70, 100),
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = false,
    [`LUXOR`] = false,
    [`LUXOR2`] = false,
    [`JET`] = false,
    [`LAZER`] = false,
    [`BUZZARD`] = false,
    [`BUZZARD2`] = false,
    [`ANNIHILATOR`] = false,
    [`SAVAGE`] = false,
    [`TITAN`] = false,
    [`RHINO`] = false,
    [`FIRETRUK`] = false,
    [`MULE`] = false,
    [`MAVERICK`] = false,
    [`BLIMP`] = false,
    [`AIRTUG`] = false,
    [`CAMPER`] = false,
    [`HYDRA`] = false,
    [`OPPRESSOR`] = false,
    [`technical3`] = false,
    [`insurgent3`] = false,
    [`apc`] = false,
    [`tampa3`] = false,
    [`trailersmall2`] = false,
    [`halftrack`] = false,
    [`hunter`] = false,
    [`vigilante`] = false,
    [`akula`] = false,
    [`barrage`] = false,
    [`khanjali`] = false,
    [`caracara`] = false,
    [`blimp3`] = false,
    [`menacer`] = false,
    [`oppressor2`] = false,
    [`scramjet`] = false,
    [`strikeforce`] = false,
    [`cerberus`] = false,
    [`cerberus2`] = false,
    [`cerberus3`] = false,
    [`scarab`] = false,
    [`scarab2`] = false,
    [`scarab3`] = false,
    [`rrocket`] = false,
    [`ruiner2`] = false,
    [`deluxo`] = false,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = false,
    [`s_m_y_sheriff_01`] = false,
    [`s_m_y_cop_01`] = false,
    [`s_f_y_sheriff_01`] = false,
    [`s_f_y_cop_01`] = false,
    [`s_m_y_hwaycop_01`] = false,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(387.48, 3584.72, 33.29, 173.27),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}

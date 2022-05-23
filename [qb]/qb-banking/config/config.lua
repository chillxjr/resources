Config = {}

Config.cardTypes = { "visa", "mastercard"}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Zones = {
        
    [1] = {
        position = vector3(1175.64, 2707.71, 38.09),
        length = 6.6, width = 2.0, heading = 90,
        minZ = 35.89, maxZ = 39.89
    },
    
}

Config.Blip = {
    blipName = Lang:t('info.bank_blip'),
    blipType = 108,
    blipColor = 2,
    blipScale = 0.8
}

Config.ATMModels = {
    "prop_atm_01",
    "prop_atm_02",
    "prop_atm_03",
    "prop_fleeca_atm"
}

Config.BankLocations = {
    vector3(149.9, -1040.46, 29.37),
    vector3(314.23, -278.83, 54.17),
    vector3(-350.8, -49.57, 49.04),
    vector3(-1213.0, -330.39, 37.79),
    vector3(-2962.71, 483.0, 15.7),
    vector3(1175.07, 2706.41, 38.09),
    vector3(246.64, 223.20, 106.29),
    vector3(-113.22, 6470.03, 31.63)
}

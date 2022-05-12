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
    vector3(1175.07, 2706.41, 38.09)
}

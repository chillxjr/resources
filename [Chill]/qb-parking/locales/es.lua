local Translations = {
    error = {
        ["citizenid_error"]     = "[ERROR] Error al conseguir la id del ciudadano!",
        ["mis_id"]              = "[Error] Se requiere una identificación de jugador.",
        ["mis_amount"]          = "[Error] No hay una cantidad de vehículos que este jugador pueda estacionar con anticipación.",
    },
    system = {
        ["update_needed"]       = "El sistema de parking está desactualizado....",
        ["max_allow_reached"]   = "El número máximo de vehículos permitidos para usted es %{max}",
        ["park_or_drive"]       = "Estacionar o conducir",
        ["parked_blip_info"]    = "Parked: %{modelname}",
    },
    success = {
        ["parked"]              = "Tu vehiculo esta estacionado",
        ["route_has_been_set"]  = "Hay un punto de referencia en la carpeta donde su vehículo está estacionado..",
    },
    info = {
        ["owner"]               = "Dueño: ~y~%{owner}~s~",
        ["plate"]               = "Patente: ~g~%{plate}~s~",
        ["model"]               = "~b~%{model}~s~",
        ["press_drive_car"]     = "Presione F5 para comenzar a conducir",
        ["car_already_parked"]  = "Un vehículo con la misma placa ya ha estacionado.",
        ["car_not_found"]       = "Ningún vehículo encontrado",
        ["maximum_cars"]        = "Puede haber un máximo de ~r~%{value}~s~ Los autos se pueden aparcar afuera en la calle, y se ha alcanzado el límite, ¡debe estacionar este vehículo en el estacionamiento!",
        ["must_own_car"]        = "Debes poseer el coche para aparcarlo..",
        ["has_take_the_car"]    = "Su vehículo ha sido eliminado de la zona de estacionamiento.",
        ["only_cars_allowd"]    = "Solo puedes estacionar autos aquí",
        ["stop_car"]            = "Detenga su vehículo antes de estacionar",
        ["drive"]               = "Drive Vecihle",
        ["park"]                = "Park Vehicle",
        ["limit_for_player"]    = "you can park %{amount} amount of vegicles on the street!",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

local Translations = {
    error = {
        ["citizenid_error"]     = "[ERROR] Failed to get player citizenid!",
        ["mis_id"]              = "[Error] A player ID is required.",
        ["mis_amount"]          = "[Error] There is no number of vehicles that this player can park.",
    },
    system = {
        ["update_needed"]       = "Park Systeem is verouderd....",
        ["max_allow_reached"]   = "The maximum number of packed vehicles for you is %{max}",
        ["park_or_drive"]       = "Park or Drive",
        ["parked_blip_info"]    = "Parked: %{modelname}",
    },
    success = {
        ["parked"]              = "Your car is packed",
        ["route_has_been_set"]  = "Er is een waypoint op de map geplaatst waar jou voertuig is gepakeerd.",
    },
    info = {
        ["owner"]               = "Owner: ~y~%{owner}~s~",
        ["plate"]               = "Plate: ~g~%{plate}~s~",
        ["model"]               = "~b~%{model}~s~",
        ["press_drive_car"]     = "Press F5 to start driving",
        ["car_already_parked"]  = "A vehicle with the same plate has already parked",
        ["car_not_found"]       = "No vehicle found",
        ["maximum_cars"]        = "There can be a maximum of ~r~%{value}~s~ cars can be parked outside on the street, and the limit has been reached, you must park this vehicle in the parking garage!",
        ["must_own_car"]        = "You must own the car to park it.",
        ["has_take_the_car"]    = "Your vehicle has been removed from the parking zone",
        ["only_cars_allowd"]    = "You can only park cars here",
        ["stop_car"]            = "Stop your vehicle before you park",
        ["drive"]               = "Drive Vecihle",
        ["park"]                = "Park Vehicle",
        ["limit_for_player"]    = "you can park %{amount} amount of vegicles on the street!",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

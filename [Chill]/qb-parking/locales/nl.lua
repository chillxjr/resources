local Translations = {
    error = {
        ["citizenid_error"]     = "[ERROR] Failed to get player citizenid!",
        ["mis_id"]              = "[Error] Er is een speler id nodig.",
        ["mis_amount"]          = "[Error] Er is geen aantal voertuigen dat deze speler kan parkeren ingevored.",
    },
    system = {
        ["update_needed"]       = "Park Systeem is verouderd....",
        ["max_allow_reached"]   = "Het maximale aantal bepakte voertuigen voor jouw is %{max}",
        ["park_or_drive"]       = "Park or Drive",
        ["parked_blip_info"]    = "Parked: %{modelname}",
        ["to_far_from_vehicle"] = "You are to far from the vehicle",
    },
    success = {
        ["parked"]              = "Je auto is gepakeerd",
        ["route_has_been_set"]  = "Er is een waypoint op de map geplaatst waar jou voertuig is gepakeerd.",
    },
    info = {
        ["owner"]               = "Eigenaar: ~y~%{owner}~s~",
        ["plate"]               = "Kenteken: ~g~%{plate}~s~",
        ["model"]               = "~b~%{model}~s~",
        ["press_drive_car"]     = "Druk op F5 om te gaan rijden",
        ["car_already_parked"]  = "Deze parkeerplaats heeft al een auto met dezelfde plaat gestald",
        ["car_not_found"]       = "Geen voertuig gevonden",
        ["maximum_cars"]        = "Er kunnen maximaal ~r~%{value}~s~ auto's buiten op straat gepakeerd worden, en de limiet is bereikt, u moet dit voertuig in de pakeer garage parkeren!",
        ["must_own_car"]        = "Je moet de auto bezitten om hem te kunnen parkeren.",
        ["has_take_the_car"]    = "Jou voertuig is uit de pakeer zone gehaalt",
        ["only_cars_allowd"]    = "Je kunt hier alleen auto's parkeren",
        ["stop_car"]            = "Stop het voertuig voor dat je het wilt parkeren...",
        ["drive"]               = "Drive Vecihle",
        ["park"]                = "Park Vehicle",
        ["limit_for_player"]    = "Je kunt maximaal %{amount} voertuig(en) op straat parkeren!",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

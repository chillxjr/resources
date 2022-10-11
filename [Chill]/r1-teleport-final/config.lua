PL = {}
 
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Misc-----------------------------------------------------------------------------------------------------------------------------------------

--These values are in seconds.

PL.LoopTimer = 1                                --Script update time to display text.

PL.WaitTimer = 0.5                              --Timer between the blackscreen.
PL.ScreenFadeOutTimer = 1                       --How long it should take for screen to fade out.
PL.ScreenFadeInTimer = 1                        --How long it should take for screen to fade in.

-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--General--------------------------------------------------------------------------------------------------------------------------------------
 
PL.TeleportInVehicle = false                    --If players can teleport while being inside a vehicle.
PL.DisplayText = "DrawText"                     --Which export used to display text. Options: "DrawText" | "j-textui" | "cd_drawtextui"
PL.DisplayTextDistance = 3                      --Distance from when people are able to see the text tooltip.
PL.UseTeleportDistance = 2                      --Distance from when people are able to use the teleporter.
PL.FreezePlayerOnTeleport = false               --If players should be freezed during the teleport.
 
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Blips----------------------------------------------------------------------------------------------------------------------------------------

PL.UseBlips = true

PL.BlipSprite = 304                             --Set the global blip sprite. Full list: https://docs.fivem.net/docs/game-references/blips/
PL.BlipColor = 48                               --Set the global blip color. Full list: https://docs.fivem.net/docs/game-references/blips/
PL.BlipScale = 0.7                              --Set the global blip scale.
 
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Keybinds-------------------------------------------------------------------------------------------------------------------------------------
 
PL.Keybind = 38                                 --Key to use to teleport. Current keybind is "E", full list: https://docs.fivem.net/docs/game-references/controls/
 
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Locations------------------------------------------------------------------------------------------------------------------------------------
 
PL.Locations = {
    [1] = {
        location = {
            from = vector3(332.29, -595.74, 43.28),     --Teleport from.
            to = vector3(340.21, -584.64, 28.8),      --Teleport to.
           
            showBlip = false,                            --Show blip on from-marker.
            blipText = "Garage",              --Blip text on the blip, if showBlip is true.
            
            text = "Garage",                       --Text to display on the from-marker.
            textColor = "White",                          --Text Color. ONLY APPLIES IF EXPORT IS "DrawText". Options: "White", "Red", "Blue", "Green", "Yellow", "Purple", "Black", "Orange"
        },
    },

    [2] = {
        location = {
            from = vector3(-1066.11, -833.84, 19.04),     --Teleport from.
            to = vector3(-1096.15, -850.33, 34.36),      --Teleport to.
           
            showBlip = false,                            --Show blip on from-marker.
            blipText = "Office",              --Blip text on the blip, if showBlip is true.
            
            text = "Office",                       --Text to display on the from-marker.
            textColor = "White",                          --Text Color. ONLY APPLIES IF EXPORT IS "DrawText". Options: "White", "Red", "Blue", "Green", "Yellow", "Purple", "Black", "Orange"
        },
    },

    [3] = {
        location = {
            from = vector3(-1096.0, -850.59, 13.69),     --Teleport from.
            to = vector3(-1096.15, -850.33, 34.36),      --Teleport to.
           
            showBlip = false,                            --Show blip on from-marker.
            blipText = "Office2",              --Blip text on the blip, if showBlip is true.
            
            text = "Office",                       --Text to display on the from-marker.
            textColor = "White",                          --Text Color. ONLY APPLIES IF EXPORT IS "DrawText". Options: "White", "Red", "Blue", "Green", "Yellow", "Purple", "Black", "Orange"
        },
    },

    [4] = {
        location = {
            from = vector3(-1094.54, -844.22, 34.36),     --Teleport from.
            to = vector3(-1097.53, -846.58, 13.69),      --Teleport to.
           
            showBlip = false,                            --Show blip on from-marker.
            blipText = "Office2",              --Blip text on the blip, if showBlip is true.
            
            text = "Main Floor",                       --Text to display on the from-marker.
            textColor = "White",                          --Text Color. ONLY APPLIES IF EXPORT IS "DrawText". Options: "White", "Red", "Blue", "Green", "Yellow", "Purple", "Black", "Orange"
        },
    },

    [5] = {
        location = {
            from = vector3(341.32, -580.98, 28.8),     --Teleport from.
            to = vector3(330.27, -601.04, 43.28),      --Teleport to.
           
            showBlip = false,                            --Show blip on from-marker.
            blipText = "Office3",              --Blip text on the blip, if showBlip is true.
            
            text = "Main Floor",                       --Text to display on the from-marker.
            textColor = "White",                          --Text Color. ONLY APPLIES IF EXPORT IS "DrawText". Options: "White", "Red", "Blue", "Green", "Yellow", "Purple", "Black", "Orange"
        },
    },
 
}
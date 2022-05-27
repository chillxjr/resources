Config                        = {}

-- 👇 Sometime the vehicle spawn on top of each other and to avoid this you can use this delay below.
Config.UseSpawnDelay          = true         -- 👉 Default false, if your vehicles spawn on top of each other, set this to true
Config.DeleteDelay            = 1500         -- 👉 Default 500, a delay for spawning in a other vehicle. (works only if Config.UseSpawnDelay = true)
Config.FreezeDelay            = 50           -- 👉 Default 10, a sort delay for freezeing a vehicle. (works only if Config.UseSpawnDelay = true)

Config.UseOwnerNames          = true

Config.CheckForUpdates        = true         -- 👉 If you want to stay updated keep it on true.
Config.DisplayDistance        = 20.0         -- 👉 Distence to see text above parked vehicles (player dependent)

Config.KeyBindButton          = "F5"         -- 👉 If you want to change the drive and park button. (you must use /binds for this)
Config.parkingButton          = 166          -- 👉 F5 (vehicle exit and or park)
Config.useRoleplayName        = true         -- 👉 If you want to use Roleplay name above the cars (firstname lastname) set this on true

Config.UseStopSpeedForPark    = true         -- 👉 Default true
Config.MinSpeedToPark         = 1            -- 👉 Default 1 the min speed to park

-- 👇 Default 2, this reset the state of the vehicles, to check if the vehicle is still parked outside, if not it will reset the state      
Config.PlaceOnGroundRadius    = 100.0        -- 👉 lower wil limit the distance of placeing vehicles on the ground.
Config.ResetState             = 1            -- 👉 1 is stored in garage, 2 is police impound. 

-- 👇 Base config when the server start, this is the default settings
Config.UseParkingSystem       = true         -- 👉 Auto turn on when server is starting. (default true)
Config.UseParkedVehicleNames  = false         -- 👉 Default is false, if you want to see names just type /park-names on/off if you set this to true it is auto on 

Config.UseParkingBlips           = true

Config.UseMaxParkingOnServer     = false      -- 👉 if you want to limit the parking on the server
Config.MaxServerParkedVehicles   = 25        -- 👉 max allowed to park on server

Config.UseMaxParkingPerPlayer    = true      -- 👉 if you want to limit players with a amount of parking vehicles
Config.MaxStreetParkingPerPlayer = 3         -- 👉 max allowed pakring vehivles per player

Config.UseTargetEye              = true
Config.InteractDistance          = 5.0
-- 👇 change this to your own commands
Config.Command = {
    park         = 'park',                   -- 👉 User/Admin permission
    parknames    = 'park-names',             -- 👉 User/Admin permission
}

-- 👇 Dont change this, you will not be able to park if you change this...
Config.ParkingLocation = {x = 232.11, y = -770.14, z = 0.0, w = 900.10, s = 99999099.0}

Config = {}

Config.Framework = "qbcore" -- Can be qbcore or ESX

Config.Menu = "qb-menu" -- Can be qb-menu or zf_context. And yes you can use qb-menu and zf_context on esx

Config['QBCoreSettings'] = { -- Have a renamed qb-core? Change it here
	["Name"] = "QBCore",
    ["Export"] = exports['qb-core']:GetCoreObject()  -- Uncomment this if you use qbcore
}

Config['ESXSettings'] = {
	["Trigger"] = "esx:getSharedObject",
	["NotificationScript"] = "esx", -- Notification System. Can be: esx, mosh_notify, t-notify, mythic_notify
}

Config.SqlWrapper = "oxmysql" -- can be "oxmysql", "mysql-async" or "ghmattimysql"

-----------------------------------------------------------------------------

-- Job options --

Config.RequireJob = false -- set this to true if you want the player to need a specific job to start a delivery.
Config.Job = "trucker" -- name of the trucker job

-----------------------------------------------------------------------------


Config.RequireTruck = false -- Set this to true if you want the player to own a truck in order to start the delivery. If false, a truck is spawned for the player. Once the delivery is complete, the player must go and return the truck in order to get their deposit back.
Config.SpawnRentalTruck = vector4(164.44, -3217.75, 5.91, 271.56)
Config.ReturnTruck = vector3(165.2, -3217.6, 5.9)
Config.RentalTrucks = { -- Spawns a random truck if player rents a vehicle
	"phantom",
	"phantom3",
	"hauler"
}


Config.locale = "en" -- Here you can select a language. All the availalbe languages can be found in the locales folder

Config.RequestJobLocation = vector3(153.19, -3211.68, 5.91) -- Location where you request a job

Config.AllowedVehicles = { -- Which vehicles a player need to start a delivery.
	"phantom",
	"phantom3",
	"hauler"
}

Config.SortPrice = 2 -- Select 1 if you want the highest paying delivery routes first. Select 2 if you want the lowest paying delivery routes first

Config.DeliveryOptions = {
	[1] = {
		label = "Food Delivery", -- Label used in menu

		Deposit = true, -- If you want to require a deposit for starting a delivery
		DepositPrice = 2000, -- Deposit price
		DepositType = "bank", -- Deposit type, Can be either "bank" or "cash"

		reward = 60, -- Amount of money a player should recive per meter driven
		OwnTruckReward = 100, -- Amount of money a player should recive per meter driven if the player owns the truck and Config.RequireTruck = false
		rewardtype = "bank", -- which type of money the player should recive. Could be Bank or Cash

		DeliveryLocations = { -- Here you can add a infinite amount of locations. One of these locations will be picked on delivery start
			vector3(-25.83, 6264.17, 31.2),
			vector3(-603.48, -891.66, 25.19),
			vector3(-1214.29, -884.5, 12.82),
			vector3(-1395.0, -581.63, 30.23),
			vector3(2008.34, 3054.13, 47.04),
			vector3(1417.19, 3621.22, 34.88)
		},

		TrailerLocations = { -- Here you can add a infinite amount of locations. One of these locations will be picked on delivery start
			vector4(1054.47, -3154.5, 5.9, 179.03),
			vector4(1058.2, -3154.22, 5.9, 181.45),
			vector4(1054.23, -3131.53, 5.9, 358.62)
		},

		Trailers =	{ -- Here you can add a infinite amount of trailers. One of these trailers will be picked on delivery start
			"Trailers2"
		}
	},
	[2] = {
		label = "Vehicle Delivery",

		Deposit = true,
		DepositPrice = 2000,
		DepositType = "bank",

		reward = 60,
		OwnTruckReward = 100,
		rewardtype = "bank",

		DeliveryLocations = {
			--vector3(-782.44, -194.29, 37.28),
			--vector3(-16.89, -1101.54, 26.68),
			--vector3(1211.1, 2722.36, 38.0),
			--vector3(158.62, 6440.19, 31.3),
			vector3(-42.86, -1678.27, 29.43)
		},

		TrailerLocations = {
			vector4(1054.47, -3154.5, 5.9, 179.03),
			vector4(1058.2, -3154.22, 5.9, 181.45),
			vector4(1054.23, -3131.53, 5.9, 358.62)
		},

		Trailers = {
			"tr4"
		}
	}
}

Config.BlipMarkerOptions = {
	
	-- Trucking Blip
	TruckingBlipSprite = 67, 
	TruckingBlipScale = 0.6,
	TruckingBlipColor = 3,
	TruckingBlipText = "Trucking Job",

	--Trailer blip
	TrailerBlipSprite = 479, 
	TrailerBlipScale = 0.6,
	TrailerBlipColor = 2,
	TrailerBlipText = "Cargo Trailer",

	--Destination blip
	DestinationBlipSprite = 473,
	DestinationBlipScale = 0.6,
	DestinationBlipColor = 2,
	DestinationBlipText = "Drop off location",

	-- Universal Marker Options
	MarkerType = 27,
	MarkerColor = 43,

	MarkerOverTrailer = true -- Set this to false if you want to hide the marker over your trailer.
}

Config.DebugMode = true -- debug mode is highly reccomended. It can detect most error on its own
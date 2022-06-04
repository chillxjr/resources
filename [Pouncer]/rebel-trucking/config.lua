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
Config.SpawnRentalTruck = vector4(-76.93, -2441.06, 6.0, 48.58)
Config.ReturnTruck = vector3(-76.93, -2441.06, 6.0)
Config.RentalTrucks = { -- Spawns a random truck if player rents a vehicle
	"phantom",
	"phantom3"
}


Config.locale = "en" -- Here you can select a language. All the availalbe languages can be found in the locales folder

Config.RequestJobLocation = vector3(-56.87, -2448.3, 7.24) -- Location where you request a job

Config.AllowedVehicles = { -- Which vehicles a player need to start a delivery.
	"phantom",
	"phantom3",
}

Config.SortPrice = 2 -- Select 1 if you want the highest paying delivery routes first. Select 2 if you want the lowest paying delivery routes first

Config.DeliveryOptions = {
	[1] = {
		label = "Food Delivery", -- Label used in menu

		Deposit = true, -- If you want to require a deposit for starting a delivery
		DepositPrice = 500, -- Deposit price
		DepositType = "bank", -- Deposit type, Can be either "bank" or "cash"

		reward = 125, -- Amount of money a player should recive per meter driven
		OwnTruckReward = 250, -- Amount of money a player should recive per meter driven if the player owns the truck and Config.RequireTruck = false
		rewardtype = "bank", -- which type of money the player should recive. Could be Bank or Cash

		DeliveryLocations = { -- Here you can add a infinite amount of locations. One of these locations will be picked on delivery start
		    vector4(153.76, -1639.72, 29.29, 30.17),
			vector4(15.57, -1343.52, 29.29, 173.84),
			vector4(-307.89, -1325.63, 31.38, 261.28),
			vector4(37.21, -1003.48, 29.46, 335.38),
			vector4(-356.6, 273.51, 84.86, 173.64),
			vector4(-1360.04, -884.16, 14.45, 42.74),
			vector4(-1184.25, -1526.64, 4.41, 305.0),
			vector4(-1026.62, -1351.67, 5.48, 69.46),
			vector4(-2965.01, 419.65, 15.26, 82.99),
			vector4(-390.69, 6043.37, 31.5, 44.53),
			vector4(-326.46, 6266.13, 31.43, 52.81),
			vector4(-79.18, 6490.93, 31.49, 212.82),
			vector4(170.03, 6619.66, 31.83, 133.96),
			vector4(1720.16, 6403.41, 34.08, 166.49),
			vector4(1776.18, 4588.42, 37.69, 179.99),
			vector4(2488.7, 4117.25, 38.07, 245.19),
			vector4(1972.97, 3745.05, 32.29, 208.95),
			vector4(1059.37, 2664.97, 39.56, 355.21),
			vector4(639.33, 2718.22, 41.74, 178.67),
			vector4(534.34, 2656.7, 42.33, 98.83),
			vector4(1692.16, 4919.32, 42.08, 55.0),
			vector4(-44.14, -1740.68, 29.09, 48.44)
		},

		TrailerLocations = { -- Here you can add a infinite amount of locations. One of these locations will be picked on delivery start
		    vector4(-120.69, -2415.84, 6.0, 178.46),
			vector4(-124.66, -2415.81, 6.0, 175.79),
			vector4(-128.8, -2418.37, 6.0, 183.49),
			vector4(-133.26, -2415.88, 6.0, 177.45),
			vector4(-137.06, -2415.93, 6.0, 181.27),
			vector4(-149.92, -2519.45, 6.01, 55.59),
			vector4(-140.85, -2505.45, 6.01, 52.95),
			vector4(-133.08, -2493.74, 6.01, 55.14)
		},

		Trailers =	{ -- Here you can add a infinite amount of trailers. One of these trailers will be picked on delivery start
			"Trailers2",
			"Trailers",
			"Trailers3"
		}
	},
	[2] = {
		label = "Vehicle Delivery",

		Deposit = true,
		DepositPrice = 500,
		DepositType = "bank",

		reward = 125,
		OwnTruckReward = 250,
		rewardtype = "bank",

		DeliveryLocations = {
			vector4(892.05, 3647.21, 32.81, 156.7),
			vector4(-1234.35, -324.5, 37.3, 297.34),
			vector4(1223.84, 2708.99, 38.01, 93.15),
			vector4(-53.59, -1075.85, 27.04, 69.21),
			vector4(-222.17, -1162.19, 23.02, 355.02),
			vector4(-766.17, -221.27, 37.28, 27.56),
			vector4(-221.22, 6205.85, 31.49, 132.07)
		},

		TrailerLocations = {
			vector4(1054.47, -3154.5, 5.9, 179.03),
			vector4(1058.2, -3154.22, 5.9, 181.45),
			vector4(1054.23, -3131.53, 5.9, 358.62)
		},

		Trailers = {
			"tr4",
			"tr2"
		}
	},
	[3] = {
		label = "Small Truck Delivery",

		Deposit = true,
		DepositPrice = 500,
		DepositType = "bank",

		reward = 125,
		OwnTruckReward = 250,
		rewardtype = "bank",

		DeliveryLocations = {
			vector4(892.05, 3647.21, 32.81, 156.7),
			vector4(-1234.35, -324.5, 37.3, 297.34),
			vector4(1223.84, 2708.99, 38.01, 93.15),
			vector4(-53.59, -1075.85, 27.04, 69.21),
			vector4(-222.17, -1162.19, 23.02, 355.02),
			vector4(-766.17, -221.27, 37.28, 27.56),
			vector4(-221.22, 6205.85, 31.49, 132.07)
		},

		TrailerLocations = {
			vector4(1054.47, -3154.5, 5.9, 179.03),
			vector4(1058.2, -3154.22, 5.9, 181.45),
			vector4(1054.23, -3131.53, 5.9, 358.62)
		},

		Trailers = {
			"mixer",
			"mixer2",
			"rubble",
			"tiptruck",
			"tiptruck2",
			"scrap"
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
Config = {
	-- **** IMPORTANT ****
	-- UseTarget should only be set to true when using qb-target
	UseTarget = GetConvar('UseTarget', 'false') == 'true',

	OutsideLocation 	= vector4(2338.67, 3134.39, 48.21, 245.09),
	InsideLocation 		= vector4(2340.24, 3133.64, 48.21, 82.44),
	DutyLocation 		= vector4(2341.39, 3126.35, 48.21, 354.96),
	DropLocation 		= vector4(2357.9, 3139.2, 48.21, 342.9),

	DrawPackageLocationBlip = true,

	PickupActionDuration 	= math.random(1000, 2000),
	DeliveryActionDuration 	= 2000,

	MaxItemsReceived 	= 5,
	MinItemReceivedQty 	= 2,
	MaxItemReceivedQty 	= 6,
	ChanceItem 			= "cryptostick",
	LuckyItem 			= "rubber",
	
	PickupLocations = {
		[1] 	= vector4(2346.02, 3138.92, 48.21, 336.63),
		[2] 	= vector4(2343.07, 3139.26, 48.21, 347.74),
		[3] 	= vector4(2360.85, 3128.82, 48.21, 264.35),
		[4] 	= vector4(2360.01, 3125.98, 48.21, 261.03),
		[5] 	= vector4(2358.36, 3126.42, 48.21, 137.14),
		[6] 	= vector4(2350.37, 3124.88, 48.21, 75.52),
		[7] 	= vector4(2354.25, 3120.97, 48.21, 268.0),
	},
	WarehouseObjects = {
		[1] = "prop_boxpile_05a",
		[2] = "prop_boxpile_04a",
		[3] = "prop_boxpile_06b",
		[4] = "prop_boxpile_02c",
		[5] = "prop_boxpile_02b",
		[6] = "prop_boxpile_01a",
		[7] = "prop_boxpile_08a",
	},
	PickupBoxModel = "prop_cs_cardbox_01",
	ItemTable = {
		[1] = "metalscrap",
		[2] = "plastic",
		[3] = "copper",
		[4] = "iron",
		[5] = "aluminum",
		[6] = "steel",
		[7] = "glass",
	}
}

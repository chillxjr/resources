Config = {
	Debug = false,
	PickAmount = {min = 8, max = 12},
	GrapeAmount = {min = 8, max = 12},
	GrapeJuiceAmount = {min = 6, max = 10},
	WineAmount = {min = 6, max = 10},
	wineTimer = 180,
	Vineyard = {
		start ={
			coords = vector3(-1886.52, 2050.29, 140.98),
			zones = {
				vector2(-1890.56, 2051.74),
				vector2(-1883.54, 2049.21),
				vector2(-1885.02, 2046.24),
				vector2(-1892.78, 2049.15),
			},
			minZ=140.24,
			maxZ=141.44
		},
		wine ={
			coords = vector3(-1926.96, 2042.03, 140.83),
			zones = {
				vector2(-1927.45, 2039.82),
				vector2(-1926.34, 2044.63),
				vector2(-1923.57, 2044.16),
				vector2(-1924.59, 2038.06)
			},
			minZ=140.24,
			maxZ=141.44
		},
		grapejuice = {
			coords = vector3(-1923.83, 2054.44, 140.83),
			zones = {
				vector2(-1924.49, 2052.3),
				vector2(-1923.45, 2056.66),
				vector2(-1920.99, 2055.85),
				vector2(-1921.7, 2051.44),
			},
			minZ=140.24,
			maxZ=141.44
		}
	}
}
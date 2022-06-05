Citizen.CreateThread(function()

RequestIpl("igro45_cardealer_milo_")
	local interiorID = GetInteriorAtCoords(145.1106, -1532.807, 36.68647)
	
	if IsValidInterior(interiorID) then
	EnableInteriorProp(interiorID, "igro45_cardealer_porps_room02")
	EnableInteriorProp(interiorID, "igro45_cardealer_porps_room01")

	RefreshInterior(interiorID)
	end
end)

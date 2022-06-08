------------------------------------
-- Load to the front of the trailer
------------------------------------

local currentlyFrontTowedVehicle = nil

RegisterNetEvent('cwf:ftow')
AddEventHandler('cwf:ftow', function()
	
	local playerped = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(playerped, true)
	
	local fronttowmodel = GetHashKey('code3trailer')
	local isVehicleTow = IsVehicleModel(vehicle, fronttowmodel)
			
	if isVehicleTow then
	
		local coordA = GetEntityCoords(playerped, 1)
		local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 5.0, 0.0)
		local targetVehicle = getVehicleInDirection(coordA, coordB)
		
		if currentlyFrontTowedVehicle == nil then
			if targetVehicle ~= 0 then
				if not IsPedInAnyVehicle(playerped, true) then
					if vehicle ~= targetVehicle then
						AttachEntityToEntity(targetVehicle, vehicle, 20, 0.0, 0.0, 0.0, 0.06, 0.0, 0.0, false, false, false, false, 20, true)
						currentlyFrontTowedVehicle = targetVehicle
						TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "Your vehicle has been loaded on the front of the trailer!")
					else
						TriggerEvent("chatMessage", "[RedSaint]", {255, 255, 0}, "You cant tow your own trailer with your own trailer?")
					end
				end
			else
				TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "Theres no vehicle to load?")
			end
		else
			AttachEntityToEntity(currentlyFrontTowedVehicle, vehicle, 20, 0.01, -8.0, 0.0, 0.05, 0.0, 0.0, false, false, false, false, 20, true)
			DetachEntity(currentlyFrontTowedVehicle, true, true)
			currentlyFrontTowedVehicle = nil
			TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "The vehicle has been successfully unloaded!")
		end
	end
end)

-----------------------------------
-- Load to the rear of the trailer
-----------------------------------

local currentlyBackTowedVehicle = nil

RegisterNetEvent('cwb:btow')
AddEventHandler('cwb:btow', function()
	
	local playerped = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(playerped, true)
	
	local backtowmodel = GetHashKey('code3trailer2')
	local isVehicleTow = IsVehicleModel(vehicle, backtowmodel)
			
	if isVehicleTow then
	
		local coordA = GetEntityCoords(playerped, 1)
		local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 5.0, 0.0)
		local targetVehicle = getVehicleInDirection(coordA, coordB)
		
		if currentlyBackTowedVehicle == nil then
			if targetVehicle ~= 0 then
				if not IsPedInAnyVehicle(playerped, true) then
					if vehicle ~= targetVehicle then
						AttachEntityToEntity(targetVehicle, vehicle, 20, 0.0, 0.75, -0.025, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						currentlyBackTowedVehicle = targetVehicle
						TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "Your vehicle has been loaded on the back of the trailer!")
					else
						TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "You cant tow your own trailer with your own trailer?")
					end
				end
			else
				TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "Theres no vehicle to load?")
			end
		else
			AttachEntityToEntity(currentlyBackTowedVehicle, vehicle, 20, 0.0, -6.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
			DetachEntity(currentlyBackTowedVehicle, true, true)
			currentlyBackTowedVehicle = nil
			TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "The vehicle has been successfully unloaded!")
		end
	end
end)

-----------------------------------
-- Load to the center of the trailer
-----------------------------------

local currentlyCenterTowedVehicle = nil

RegisterNetEvent('cwc:ctow')
AddEventHandler('cwc:ctow', function()
	
	local playerped = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(playerped, true)
	
	local centertowmodel = GetHashKey('pjtrailer')
	local isVehicleTow = IsVehicleModel(vehicle, centertowmodel)
			
	if isVehicleTow then
	
		local coordA = GetEntityCoords(playerped, 1)
		local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 5.0, 0.0)
		local targetVehicle = getVehicleInDirection(coordA, coordB)
		
		if currentlyCenterTowedVehicle == nil then
			if targetVehicle ~= 0 then
				if not IsPedInAnyVehicle(playerped, true) then
					if vehicle ~= targetVehicle then
						AttachEntityToEntity(targetVehicle, vehicle, 20, 0.01, 0.0, 0.15, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						currentlyCenterTowedVehicle = targetVehicle
						TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "Your vehicle has been loaded on the back of the trailer!")
					else
						TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "Are you retarded? You cant tow your own trailer with your own trailer?")
					end
				end
			else
				TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "Theres no vehicle to load?")
			end
		else
			AttachEntityToEntity(currentlyCenterTowedVehicle, vehicle, 20, 4.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
			DetachEntity(currentlyCenterTowedVehicle, true, true)
			currentlyCenterTowedVehicle = nil
			TriggerEvent("chatMessage", "[RedSaint Tow]", {255, 255, 0}, "The vehicle has been successfully unloaded!")
		end
	end
end)

function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end

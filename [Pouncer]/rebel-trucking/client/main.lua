Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local function DrawText3D(x, y, z, text)
	SetTextScale(0.5, 0.5)
    SetTextFont(6)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

local CoreName = nil
local PlayerJob = {}

local ESX = nil
local PlayerData = nil

if Config.Framework:lower() == "qbcore" then
    CoreName = Config['QBCoreSettings']["Export"]

	RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
		CoreName.Functions.GetPlayerData(function(PlayerData)
			PlayerJob = PlayerData.job
			if PlayerData.job.onduty then
				if PlayerData.job.name == "gopostal" then
					TriggerServerEvent("QBCore:ToggleDuty")
				end
			end
		end)
	end)
	
	RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
		PlayerJob = JobInfo
		onDuty = PlayerJob.onduty
	end)
	
	RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
		onDuty = duty
	end)

elseif Config.Framework:lower() == "esx" then
    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent(Config['ESXSettings']["Trigger"], function(obj) ESX = obj end)
            Citizen.Wait(0)
			PlayerData = ESX.GetPlayerData()
        end
    end)

	RegisterNetEvent('esx:playerLoaded', function(xPlayer)
		PlayerData = xPlayer
	end)

	RegisterNetEvent('esx:setJob', function(job)
		PlayerData.job = job
	end)
end

local starteddelivery = false

local locale = en.Translations

local RentedTrucks = {}

AddEventHandler('onResourceStart', function(resource)
   	if resource == GetCurrentResourceName() then
	  	Wait(100)

	  	TruckingBlip = AddBlipForCoord(Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z)

	  	SetBlipSprite(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipSprite)
	  	SetBlipDisplay(TruckingBlip, 4)
	  	SetBlipScale(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipScale)
	  	SetBlipAsShortRange(TruckingBlip, true)
	  	SetBlipColour(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipColor)
	  	BeginTextCommandSetBlipName("STRING")
	  	AddTextComponentSubstringPlayerName(Config.BlipMarkerOptions.TruckingBlipText)
	  	EndTextCommandSetBlipName(TruckingBlip)

		if Config.Framework:lower() == "qbcore" then
			if Config.RequireJob then
				CoreName.Functions.GetPlayerData(function(PlayerData)
					PlayerJob = PlayerData.job
				end)
			end
		end
   	end
end)


if Config.Framework:lower() == "qbcore" then
	RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
		TruckingBlip = AddBlipForCoord(Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z)

		SetBlipSprite(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipSprite)
		SetBlipDisplay(TruckingBlip, 4)
		SetBlipScale(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipScale)
		SetBlipAsShortRange(TruckingBlip, true)
		SetBlipColour(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipColor)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName(Config.BlipMarkerOptions.TruckingBlipText)
		EndTextCommandSetBlipName(TruckingBlip)

		if Config.locale == "en" then
			locale = en.Translations
		elseif Config.locale == "sv" then
			locale = sv.Translations   
		elseif Config.locale == "custom" then
			locale = custom.Translations
		end
	end)
elseif Config.Framework:lower() == "esx" then
    RegisterNetEvent('esx:onPlayerSpawn', function()
		TruckingBlip = AddBlipForCoord(Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z)

		SetBlipSprite(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipSprite)
		SetBlipDisplay(TruckingBlip, 4)
		SetBlipScale(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipScale)
		SetBlipAsShortRange(TruckingBlip, true)
		SetBlipColour(TruckingBlip, Config.BlipMarkerOptions.TruckingBlipColor)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName(Config.BlipMarkerOptions.TruckingBlipText)
		EndTextCommandSetBlipName(TruckingBlip)

		if Config.locale == "en" then
			locale = en.Translations
		elseif Config.locale == "sv" then
			locale = sv.Translations   
		elseif Config.locale == "custom" then
			locale = custom.Translations
		end
	end)
end

AddEventHandler('onResourceStart', function(resource)
   if resource == GetCurrentResourceName() then
	  Wait(100)

		if Config.locale == "en" then
			locale = en.Translations
		elseif Config.locale == "sv" then
			locale = sv.Translations   
		elseif Config.locale == "custom" then
			locale = custom.Translations
		end
   end
end)

Citizen.CreateThread(function()
	while true do
		sleep = 1000
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

        local dist = #(coords - Config.RequestJobLocation)
		if dist < 5 then
			sleep = 1

			if Config.RequireJob then

				if Config.Framework:lower() == "qbcore" then
					if PlayerJob.name == Config.Job then
						DrawMarker(Config.BlipMarkerOptions.MarkerType, Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z - 0.99, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, Config.BlipMarkerOptions.MarkerColor, 153, 255, 255, 0, 0, 0,0)
						if dist < 1.5 then
							DrawText3D(Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z, locale['delivery_menu_marker_text'])
							if IsControlJustReleased(0, Keys['E']) then
								if starteddelivery == false then
									local lastcar = GetVehiclePedIsIn(PlayerPedId(),true)
									local lastplate = GetVehicleNumberPlateText(lastcar)
									TriggerServerEvent("rebel-trucking:server:checkifowntruck", lastplate, lastcar)
								else
									if Config.Framework:lower() == "qbcore" then
										CoreName.Functions.Notify(locale['delivery_active_notification'], "error", 3000)
									elseif Config.Framework:lower() == "esx" then
										if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
											TriggerEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale['delivery_active_notification'].."</span>", "darkred", "error", 3000)
										elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
											exports['t-notify']:Alert({
												style = 'error',
												message = locale['delivery_active_notification'],
												duration = 3000
											})
										elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
											exports['mythic_notify']:DoCustomHudText('error', locale['delivery_active_notification'], 4000)
										elseif Config['ESXSettings']["NotificationScript"] == "esx" then
											ESX.ShowNotification(locale['delivery_active_notification'])
										end
									end	
								end
							end
						end
					end
				elseif Config.Framework:lower() == "esx" then
					if PlayerData.Job == Config.Job then
						DrawMarker(Config.BlipMarkerOptions.MarkerType, Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z - 0.99, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, Config.BlipMarkerOptions.MarkerColor, 153, 255, 255, 0, 0, 0,0)
						if dist < 1.5 then
							DrawText3D(Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z, locale['delivery_menu_marker_text'])
							if IsControlJustReleased(0, Keys['E']) then
								if starteddelivery == false then
									local lastcar = GetVehiclePedIsIn(PlayerPedId(),true)
									local lastplate = GetVehicleNumberPlateText(lastcar)
									TriggerServerEvent("rebel-trucking:server:checkifowntruck", lastplate, lastcar)
								else
									if Config.Framework:lower() == "qbcore" then
										CoreName.Functions.Notify(locale['delivery_active_notification'], "error", 3000)
									elseif Config.Framework:lower() == "esx" then
										if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
											TriggerEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale['delivery_active_notification'].."</span>", "darkred", "error", 3000)
										elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
											exports['t-notify']:Alert({
												style = 'error',
												message = locale['delivery_active_notification'],
												duration = 3000
											})
										elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
											exports['mythic_notify']:DoCustomHudText('error', locale['delivery_active_notification'], 4000)
										elseif Config['ESXSettings']["NotificationScript"] == "esx" then
											ESX.ShowNotification(locale['delivery_active_notification'])
										end
									end	
								end
							end
						end
					end
				end
			else
				DrawMarker(Config.BlipMarkerOptions.MarkerType, Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z - 0.99, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, Config.BlipMarkerOptions.MarkerColor, 153, 255, 255, 0, 0, 0,0)
				if dist < 1.5 then
					DrawText3D(Config.RequestJobLocation.x, Config.RequestJobLocation.y, Config.RequestJobLocation.z, locale['delivery_menu_marker_text'])
					if IsControlJustReleased(0, Keys['E']) then
						if starteddelivery == false then
							local lastcar = GetVehiclePedIsIn(PlayerPedId(),true)
							local lastplate = GetVehicleNumberPlateText(lastcar)
							TriggerServerEvent("rebel-trucking:server:checkifowntruck", lastplate, lastcar)
						else
							if Config.Framework:lower() == "qbcore" then
								CoreName.Functions.Notify(locale['delivery_active_notification'], "error", 3000)
							elseif Config.Framework:lower() == "esx" then
								if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
									TriggerEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale['delivery_active_notification'].."</span>", "darkred", "error", 3000)
								elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
									exports['t-notify']:Alert({
										style = 'error',
										message = locale['delivery_active_notification'],
										duration = 3000
									})
								elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
									exports['mythic_notify']:DoCustomHudText('error', locale['delivery_active_notification'], 4000)
								elseif Config['ESXSettings']["NotificationScript"] == "esx" then
									ESX.ShowNotification(locale['delivery_active_notification'])
								end	
							end
						end
					end
				end
			end
		else
			sleep = 1000
		end
        Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		sleep = 1000
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

        local dist = #(coords - Config.ReturnTruck)

		if IsPedInAnyVehicle(playerPed, false) then
			if dist < 10 then
				sleep = 1
				DrawMarker(Config.BlipMarkerOptions.MarkerType, Config.ReturnTruck.x, Config.ReturnTruck.y, Config.ReturnTruck.z - 0.99, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, Config.BlipMarkerOptions.MarkerColor, 153, 255, 255, 0, 0, 0,0)
				if dist < 5 then
					DrawText3D(Config.ReturnTruck.x, Config.ReturnTruck.y, Config.ReturnTruck.z, "[E] Return Truck")
					if IsControlJustReleased(0, Keys['E']) then
						local lastcar = GetVehiclePedIsIn(playerPed,true)

						for k,v in pairs(RentedTrucks) do
							if (v.hash == lastcar) and (v.deli.Deposit == true) then
								TriggerServerEvent("rebel-trucking:server:returndeposit", RentedTrucks, v, v.deli)

								TaskLeaveAnyVehicle(playerPed, false, false)

								repeat
									Wait(10)
								until not IsPedInAnyVehicle(playerPed, false)

								if Config.Framework:lower() == "qbcore" then
									CoreName.Functions.Notify(locale['delivery_returned_truck'], "success", 3000)
								elseif Config.Framework:lower() == "esx" then
									if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
										TriggerEvent("mosh_notify:notify", "SUCCESS", "<span class=\"text-white\">"..locale['delivery_returned_truck'].."</span>", "green", "success", 3000)
									elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
										exports['t-notify']:Alert({
											style = 'success',
											message = locale['delivery_returned_truck'],
											duration = 3000
										})
									elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
										exports['mythic_notify']:DoCustomHudText('success', locale['delivery_returned_truck'], 4000)
									elseif Config['ESXSettings']["NotificationScript"] == "esx" then
										ESX.ShowNotification(locale['delivery_returned_truck'])
									end
								end

								NetworkFadeOutEntity(lastcar, true,false)
								Wait(2000)
								TaskEveryoneLeaveVehicle(lastcar)

								if Config.Framework:lower() == "qbcore" then
									CoreName.Functions.DeleteVehicle(lastcar)
								elseif Config.Framework:lower() == "esx" then
									ESX.Game.DeleteVehicle(lastcar)
								end

							elseif (v.hash == lastcar) and (v.deli.Deposit == false) then
								
							else
								
							end
						end
					end
				end
			else
				sleep = 1000
			end
		end
        Wait(sleep)
	end
end)

RegisterNetEvent('rebel-trucking:client:opendeliverymenu', function(truckplate, truck, isusingowntruck)
	if Config.Menu == "qb-menu" then
		local DeliveryMenu = {}

		table.insert(DeliveryMenu, {
			header = locale['delivery_menu_header'],
			txt = locale['delivery_menu_text'],
			isMenuHeader = true
		})

		local a, b = nil, nil

		function compare1(a,b)
			if Config.RequireTruck then
				a = a.reward
				b = b.reward
			else
				if isusingowntruck then
					a = a.OwnTruckReward
					b = b.OwnTruckReward
				else
					a = a.reward
					b = b.reward
				end
			end

			repeat
			
			until (a ~= nil) and (b ~= nil)

			return a > b
		end

		function compare2(a,b)
			if Config.RequireTruck then
				a = a.reward
				b = b.reward
			else
				if isusingowntruck then
					a = a.OwnTruckReward
					b = b.OwnTruckReward
				else
					a = a.reward
					b = b.reward
				end
			end

			repeat
			
			until (a ~= nil) and (b ~= nil)
			
			return a < b
		end
		
		if Config.SortPrice == 1 then
			table.sort(Config.DeliveryOptions, compare1)
		elseif Config.SortPrice == 2 then
			table.sort(Config.DeliveryOptions, compare2)
		else
			table.sort(Config.DeliveryOptions, compare1)
		end

		for k, v in ipairs(Config.DeliveryOptions) do

			local reward = nil

			if Config.RequireTruck then
				reward = v.reward
			else
				if isusingowntruck then
					reward = v.OwnTruckReward
				else
					reward = v.reward
				end
			end

			local text = locale['delivery_reward_text']..locale['currency']..reward

			if v.Deposit then
				text = locale['deposit']..": "..locale['currency']..v.DepositPrice.." | "..locale['delivery_reward_text']..locale['currency']..reward
			end

			table.insert(DeliveryMenu, {
				header = v.label,
				txt = text,
				params = {
					event = 'rebel-trucking:client:depocheck',
					args = {
						deliveryoptions = v,
						truckplate = truckplate,
						truck = truck,
						isusingowntruck = isusingowntruck
					},
				}
			})
		end

		table.insert(DeliveryMenu, {
			header = locale["delivery_menu_exit_text"],
			txt = "",
			params = {
				event = 'qb-menu:closeMenu'
			}
		})

		exports['qb-menu']:openMenu(DeliveryMenu) 
	elseif Config.Menu == "zf_context" then
		
		local a, b = nil, nil

		function compare1(a,b)
			if Config.RequireTruck then
				a = a.reward
				b = b.reward
			else
				if isusingowntruck then
					a = a.OwnTruckReward
					b = b.OwnTruckReward
				else
					a = a.reward
					b = b.reward
				end
			end

			repeat
			
			until (a ~= nil) and (b ~= nil)

			return a > b
		end

		function compare2(a,b)
			if Config.RequireTruck then
				a = a.reward
				b = b.reward
			else
				if isusingowntruck then
					a = a.OwnTruckReward
					b = b.OwnTruckReward
				else
					a = a.reward
					b = b.reward
				end
			end

			repeat
			
			until (a ~= nil) and (b ~= nil)
			
			return a < b
		end
		
		if Config.SortPrice == 1 then
			table.sort(Config.DeliveryOptions, compare1)
		elseif Config.SortPrice == 2 then
			table.sort(Config.DeliveryOptions, compare2)
		else
			table.sort(Config.DeliveryOptions, compare1)
		end

		local i = 1

		local DeliveryMenu = {
			{
				id = 1,
				header = locale['delivery_menu_header'],
				text = locale['delivery_menu_text']
			}
		}
		
		for k, v in ipairs(Config.DeliveryOptions) do

			local reward = nil

			if Config.RequireTruck then
				reward = v.reward
			else
				if isusingowntruck then
					reward = v.OwnTruckReward
				else
					reward = v.reward
				end
			end

			i = i + 1

			local text = locale['delivery_reward_text']..locale['currency']..reward

			if v.Deposit then
				text = locale['deposit']..": "..locale['currency']..v.DepositPrice.." | "..locale['delivery_reward_text']..locale['currency']..reward
			end
			
			table.insert(DeliveryMenu,  {
				id = i,
				header = v.label,
				text = text,
				params = {
					event = "rebel-trucking:client:depocheck",
					isServer = false,
					args = {
						deliveryoptions = v,
						truckplate = truckplate,
						truck = truck,
						isusingowntruck = isusingowntruck
					}
				}
			})
		end
		
		exports['zf_context']:openMenu(DeliveryMenu)
	end
end)

RegisterNetEvent('rebel-trucking:client:depocheck', function(args)
	TriggerServerEvent("rebel-trucking:server:depocheck", args)
end)

RegisterNetEvent('rebel-trucking:client:startdelivery', function(args)
	starteddelivery = true
	local deli = args.deliveryoptions
	local trailerhash = deli.Trailers[math.random(#deli.Trailers)]
	local trailerlocation = deli.TrailerLocations[math.random(#deli.TrailerLocations)]
	local delicoords = deli.DeliveryLocations[math.random(#deli.DeliveryLocations)]
	local isusingowntruck = args.isusingowntruck

	if type(delicoords) == "table" then
		delicoords = vector3(delicoords.x, delicoords.y, delicoords.z)
	end

	if type(trailerhash) == "table" then
		
	end

	if type(trailerlocation) == "table" then
		trailerlocation = vector4(trailerlocation.x, trailerlocation.y, trailerlocation.z, trailerlocation.w)
	end

	local lastdelicoords = delicoords
	local trailer = nil
	local trailercoords = nil
	local truckspawned = nil
	local rentaltruck = nil

	if Config.RequireTruck then
		if Config.Framework:lower() == "qbcore" then
			CoreName.Functions.Notify(locale["delivery_pick_up_trailer_notification"], "success", 7000)
		elseif Config.Framework:lower() == "esx" then
			if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
				TriggerEvent("mosh_notify:notify", "SUCCESS", "<span class=\"text-white\">"..locale["delivery_pick_up_trailer_notification"].."</span>", "green", "success", 7000)
			elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
				exports['t-notify']:Alert({
					style = 'success',
					message = locale["delivery_pick_up_trailer_notification"],
					duration = 7000
				})
			elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
				exports['mythic_notify']:DoCustomHudText('success', locale["delivery_pick_up_trailer_notification"], 7000)
			elseif Config['ESXSettings']["NotificationScript"] == "esx" then
				ESX.ShowNotification(locale["delivery_pick_up_trailer_notification"])
			end
		end	
	else
		if Config.Framework:lower() == "qbcore" then
			CoreName.Functions.Notify(locale["delivery_pick_up_trailer_and_truck_notification"], "success", 7000)
		elseif Config.Framework:lower() == "esx" then
			if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
				TriggerEvent("mosh_notify:notify", "SUCCESS", "<span class=\"text-white\">"..locale["delivery_pick_up_trailer_and_truck_notification"].."</span>", "green", "success", 7000)
			elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
				exports['t-notify']:Alert({
					style = 'success',
					message = locale["delivery_pick_up_trailer_and_truck_notification"],
					duration = 7000
				})
			elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
				exports['mythic_notify']:DoCustomHudText('success', locale["delivery_pick_up_trailer_and_truck_notification"], 7000)
			elseif Config['ESXSettings']["NotificationScript"] == "esx" then
				ESX.ShowNotification(locale["delivery_pick_up_trailer_and_truck_notification"])
			end
		end
	end

	if not Config.RequireTruck then
		if isusingowntruck then
			rentaltruck = false
		else
			local rentalhash = Config.RentalTrucks[math.random(#Config.RentalTrucks)]

			repeat
				Wait(1000)
				if not IsAnyVehicleNearPoint(Config.SpawnRentalTruck.x, Config.SpawnRentalTruck.y, Config.SpawnRentalTruck.z, 3.5) then
					if Config.Framework:lower() == "qbcore" then
						CoreName.Functions.SpawnVehicle(rentalhash, function(veh)
							SetEntityHeading(veh, Config.SpawnRentalTruck.w)
							table.insert(RentedTrucks, {hash = veh, deli = deli})
	
							rentaltruck = veh
	
							Wait(500)
							TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
						end, Config.SpawnRentalTruck, true)
					else
						ESX.Game.SpawnVehicle(rentalhash, Config.SpawnRentalTruck, Config.SpawnRentalTruck.w, function(veh)
							table.insert(RentedTrucks, {hash = veh, deli = deli})
	
							rentaltruck = veh
						end)
					end
					truckspawned = true
				end
			until truckspawned
		end
		repeat
			Wait(10)
		until rentaltruck ~= nil
	end

	SetNewWaypoint(trailerlocation.x, trailerlocation.y)
	
	TrailerBlip = AddBlipForCoord(trailerlocation.x, trailerlocation.y, trailerlocation.z)

	SetBlipSprite(TrailerBlip, Config.BlipMarkerOptions.TrailerBlipSprite)
	SetBlipDisplay(TrailerBlip, 4)
	SetBlipScale(TrailerBlip, Config.BlipMarkerOptions.TrailerBlipScale)
	SetBlipAsShortRange(TrailerBlip, true)
	SetBlipColour(TrailerBlip, Config.BlipMarkerOptions.TrailerBlipColor)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName(Config.BlipMarkerOptions.TrailerBlipText)
	EndTextCommandSetBlipName(TrailerBlip)

	repeat
		if Config.RequireTruck == false then
			if not isusingowntruck then
				if not DoesEntityExist(rentaltruck) then
					RemoveBlip(TrailerBlip)
					starteddelivery = false
					return
				end
			else
				if not DoesEntityExist(args.truck) then
					RemoveBlip(TrailerBlip)
					starteddelivery = false
					return
				end
			end
		else
			if not DoesEntityExist(args.truck) then
				RemoveBlip(TrailerBlip)
				starteddelivery = false
				return
			end
		end

		local playerPed = PlayerPedId()
		local playercoords = GetEntityCoords(playerPed)
        local dist = #(playercoords - vector3(trailerlocation.x, trailerlocation.y, trailerlocation.z))
		if dist < 100 then
			if IsAnyVehicleNearPoint(trailerlocation.x, trailerlocation.y, trailerlocation.z, 3.5) then
				if Config.Framework:lower() == "qbcore" then
					CoreName.Functions.Notify(locale["delivery_something_in_the_way"], "error", 2000)
				elseif Config.Framework:lower() == "esx" then
					if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
						TriggerEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale["delivery_something_in_the_way"].."</span>", "darkred", "error", 2000)
					elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
						exports['t-notify']:Alert({
							style = 'error',
							message = locale["delivery_something_in_the_way"],
							duration = 2000
						})
					elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
						exports['mythic_notify']:DoCustomHudText('error', locale["delivery_something_in_the_way"], 2000)
					elseif Config['ESXSettings']["NotificationScript"] == "esx" then
						ESX.ShowNotification(locale["delivery_something_in_the_way"])
					end
				end
			end
		end
		Wait(2000)
	until (dist < 100) and not IsAnyVehicleNearPoint(trailerlocation.x, trailerlocation.y, trailerlocation.z, 3.5)

	Wait(1000)
	if Config.Framework:lower() == "qbcore" then
		CoreName.Functions.SpawnVehicle(trailerhash, function(veh)
			SetEntityHeading(veh, trailerlocation.w)
			trailer = veh
			TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(trailer))
		end, trailerlocation, true)
	else
		--local trailer = ESX.Game.SpawnVehicle(trailerhash, trailerlocation, trailerlocation.w, false)
		
		ESX.Game.SpawnVehicle(trailerhash, trailerlocation, trailerlocation.w, function(veh)
			trailer = veh
		end)
	end

	current = GetEntityCoords(playerPed)
	distance = #(delicoords - current)

	local reward = nil

	if Config.RequireTruck then
		reward = (distance / 400.00) * deli.reward
	else
		if isusingowntruck then
			reward = (distance / 400.00) * deli.OwnTruckReward
		else
			reward = (distance / 400.00) * deli.reward
		end
	end


	print("")

	while true do
		sleep = 1000

		print("")

		if not Config.RequireTruck then
			if not isusingowntruck then
				if not DoesEntityExist(rentaltruck) then
					RemoveBlip(TrailerBlip)
					starteddelivery = false
					return
				end
			else
				if not DoesEntityExist(args.truck) then
					RemoveBlip(TrailerBlip)
					starteddelivery = false
					return
				end
			end
		else
			if not DoesEntityExist(args.truck) then
				RemoveBlip(TrailerBlip)
				starteddelivery = false
				return
			end
		end

		local playerPed = PlayerPedId()

		local coords = GetEntityCoords(playerPed)
		trailercoords = GetEntityCoords(trailer)
        local dist = #(coords - trailercoords)
		if dist < 60 then
			sleep = 1

			if Config.BlipMarkerOptions.MarkerOverTrailer then
				DrawMarker(0, trailercoords.x, trailercoords.y, trailercoords.z + 5.0, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, Config.BlipMarkerOptions.MarkerColor, 153, 255, 255, 0, 0, 0,0)
			end

			local lastcar = GetVehiclePedIsIn(PlayerPedId(),true)
			local lastplate = GetVehicleNumberPlateText(lastcar)

			if Config.RequireTruck then
				if lastplate == args.truckplate then
					local gotTrailer, trailerName = GetVehicleTrailerVehicle(GetVehiclePedIsUsing(PlayerPedId()))
					if gotTrailer and trailerName == trailer then
						break
					end
				end
			else
				if not isusingowntruck then
					if lastplate == GetVehicleNumberPlateText(rentaltruck) then
						local gotTrailer, trailerName = GetVehicleTrailerVehicle(GetVehiclePedIsUsing(PlayerPedId()))
						if gotTrailer and trailerName == trailer then
							break
						end
					end
				else
					if lastplate == args.truckplate then
						local gotTrailer, trailerName = GetVehicleTrailerVehicle(GetVehiclePedIsUsing(PlayerPedId()))
						if gotTrailer and trailerName == trailer then
							break
						end
					end
				end
			end
		else
			sleep = 1000
		end
        Wait(sleep)
	end

	gotTrailer, trailerName = GetVehicleTrailerVehicle(GetVehiclePedIsUsing(PlayerPedId()))
	local lasttrailer = trailerName

	RemoveBlip(TrailerBlip)

	local deliverycoords = vector3(delicoords.x, delicoords.y, delicoords.z)

	DestinationBlip = AddBlipForCoord(delicoords.x, delicoords.y, delicoords.z)

	SetBlipSprite(DestinationBlip, Config.BlipMarkerOptions.DestinationBlipSprite)
	SetBlipDisplay(DestinationBlip, 4)
	SetBlipScale(DestinationBlip, Config.BlipMarkerOptions.DestinationBlipScale)
	SetBlipAsShortRange(DestinationBlip, true)
	SetBlipColour(DestinationBlip, Config.BlipMarkerOptions.DestinationBlipColor)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName(Config.BlipMarkerOptions.DestinationBlipText)
	EndTextCommandSetBlipName(DestinationBlip)

	if Config.Framework:lower() == "qbcore" then
		CoreName.Functions.Notify(locale["delivery_goto_drop_off_location_notification"], "success", 5000)
	elseif Config.Framework:lower() == "esx" then
		if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
			TriggerEvent("mosh_notify:notify", "SUCCESS", "<span class=\"text-white\">"..locale["delivery_goto_drop_off_location_notification"].."</span>", "green", "success", 5000)
		elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
			exports['t-notify']:Alert({
				style = 'success',
				message = locale["delivery_goto_drop_off_location_notification"],
				duration = 5000
			})
		elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
			exports['mythic_notify']:DoCustomHudText('success', locale["delivery_goto_drop_off_location_notification"], 5000)
		elseif Config['ESXSettings']["NotificationScript"] == "esx" then
			ESX.ShowNotification(locale["delivery_goto_drop_off_location_notification"])
		end
	end

	SetNewWaypoint(delicoords.x, delicoords.y)

	while true do		
        sleep = 1000

		if not Config.RequireTruck then
			if not isusingowntruck then
				if not DoesEntityExist(rentaltruck) then
					RemoveBlip(TrailerBlip)
					starteddelivery = false
					return
				end
			else
				if not DoesEntityExist(args.truck) then
					RemoveBlip(TrailerBlip)
					starteddelivery = false
					return
				end
			end
		else
			if not DoesEntityExist(args.truck) then
				RemoveBlip(TrailerBlip)
				starteddelivery = false
				return
			end
		end

        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        trailercoords = GetEntityCoords(trailer)
        local dist = #(coords - vector3( delicoords.x, delicoords.y, delicoords.z))
		local dist2 = #(coords - GetEntityCoords(lasttrailer))

		if not DoesEntityExist(trailer) or (GetEntityHealth(trailer) == 0.0) then
			if Config.Framework:lower() == "qbcore" then
				CoreName.Functions.Notify(locale["delivery_mission_failed"], "error", 5000)
			elseif Config.Framework:lower() == "esx" then
				if Config['ESXSettings']["NotificationScript"] == "mosh_notify" then
					TriggerEvent("mosh_notify:notify", "ERROR", "<span class=\"text-white\">"..locale["delivery_mission_failed"].."</span>", "darkred", "error", 5000)
				elseif Config['ESXSettings']["NotificationScript"] == "t-notify" then
					exports['t-notify']:Alert({
						style = 'error',
						message = locale["delivery_mission_failed"],
						duration = 5000
					})
				elseif Config['ESXSettings']["NotificationScript"] == "mythic_notify" then
					exports['mythic_notify']:DoCustomHudText('error', locale["delivery_mission_failed"], 5000)
				elseif Config['ESXSettings']["NotificationScript"] == "esx" then
					ESX.ShowNotification(locale["delivery_mission_failed"])
				end
			end
			starteddelivery = false
			DeleteTrailer(trailer)
			return
		end

        if dist < 20 then
            sleep = 1
            DrawMarker(Config.BlipMarkerOptions.MarkerType, delicoords.x, delicoords.y, delicoords.z - 0.99, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, Config.BlipMarkerOptions.MarkerColor, 153, 255, 255, 0, 0, 0,0)
			if dist < 10 then
				gotTrailer, trailerName = GetVehicleTrailerVehicle(GetVehiclePedIsUsing(PlayerPedId()))
				if dist2 > 20 then
					DrawText3D(delicoords.x, delicoords.y, delicoords.z, locale["delivery_drop_off_text_error"])
				else
					DrawText3D(delicoords.x, delicoords.y, delicoords.z, locale['delivery_drop_off_text'])
				end
				local lastcar = GetVehiclePedIsIn(PlayerPedId(),true)
				local lastplate = GetVehicleNumberPlateText(lastcar)

				--[[if Config.RequireTruck then
					if lastplate == args.truckplate then
						if dist2 < 20 then
							if not gotTrailer then
								break
							end
						end
					end
				else
					if not isusingowntruck then
						if lastplate == GetVehicleNumberPlateText(rentaltruck) then
							if dist2 < 20 then
								if not gotTrailer then
									break
								end
							end
						end
					else
						if lastplate == args.truckplate then
							if dist2 < 20 then
								if not gotTrailer then
									break
								end
							end
						end
					end
				end]]--
			end
        else
            sleep = 1000
        end
        Wait(sleep)
    end

	TriggerServerEvent("rebel-trucking:server:givepayment239423492349", lastdelicoords, deli, reward, isusingowntruck)

	RemoveBlip(DestinationBlip)
	starteddelivery = false
	NetworkFadeOutEntity(trailer, true,false)
    Citizen.Wait(2000)
	if Config.Framework:lower() == "qbcore" then
		CoreName.Functions.DeleteVehicle(trailer)
	elseif Config.Framework:lower() == "esx" then
		ESX.Game.DeleteVehicle(trailer)
	end
end)

function DeleteTrailer(trailer)
	Wait(30000)
	NetworkFadeOutEntity(trailer, true,false)
	Wait(2000)
	if Config.Framework:lower() == "qbcore" then
		CoreName.Functions.DeleteVehicle(trailer)
	elseif Config.Framework:lower() == "esx" then
		ESX.Game.DeleteVehicle(trailer)
	end
end
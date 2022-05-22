local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Vineyard", colour=27, id=408, x = -1886.57, y = 2049.96, z = 140.98}, --grapesvector3(-1886.57, 2049.96, 140.98)
     {title="Make Grape Juice", colour=27, id=604, x = -1923.82, y = 2054.44, z = 140.83}, --juice
     {title="Make Wine", colour=27, id=93, x = -1926.96, y = 2042.03, z = 140.83} --wine
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
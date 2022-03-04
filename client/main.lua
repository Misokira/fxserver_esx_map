Citizen.CreateThread(function()
	
	for i=1, #Config.Map, 1 do
		
		local blip = AddBlipForCoord(Config.Map[i].x, Config.Map[i].y, Config.Map[i].z)
		SetBlipSprite (blip, Config.Map[i].id)
		SetBlipDisplay(blip, 4)
		SetBlipColour (blip, Config.Map[i].color)
		SetBlipAsShortRange(blip, true)
		SetBlipAlpha(blip, Config.Map[i].fade)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.Map[i].name)
		EndTextCommandSetBlipName(blip)
	end
	
	for e=1, #Config.Zone, 1 do
		
		local blip = AddBlipForCoord(Config.Zone[e].x, Config.Zone[e].y, Config.Zone[e].z)
		SetBlipSprite (blip, Config.Zone[e].id)
		SetBlipDisplay(blip, 8)
		SetBlipColour (blip, Config.Zone[e].color)
		SetBlipAsShortRange(blip, true)
		SetBlipPriority(blip, 0)
		SetBlipScale(blip, 0.4)
		SetBlipAlpha(blip, Config.Zone[e].fade)
	end


end)

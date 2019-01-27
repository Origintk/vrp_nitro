local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
NITROon = Tunnel.getInterface("vrp_nitro")
	
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		local velocidade = 50.0
        	local ped = GetPlayerPed(-1)
		local playerVeh = GetVehiclePedIsIn(ped, false)
		    if IsControlPressed(1, 38) and NITROon.chamada() then			
			SetVehicleBoostActive(playerVeh, 1, 0)
			SetVehicleForwardSpeed(playerVeh, velocidade)
			StartScreenEffect("RaceTurbo", 0, 0)
			SetVehicleBoostActive(playerVeh, 0, 0)	
        end
    end
end)

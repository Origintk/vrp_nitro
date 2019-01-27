local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
vRPnitro = {}
Tunnel.bindInterface("vrp_nitro",vRPnitro)
	
function vRPnitro.chamada()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
if vRP.tryGetInventoryItem(user_id,"nitro",1,false) then
 TriggerClientEvent("pNotify:SendNotification", player, {
			text = "Nitro Ativado",
			type = "success",
			progressBar = true,
			queue = "lmao",
			timeout = 2000,
			layout = "CenterLeft"
			})
	return true
	end
	TriggerClientEvent("pNotify:SendNotification", player, {
			text = "Você Não tem Nitro",
			type = "error",
			progressBar = true,
			queue = "lmao",
			timeout = 2000,
			layout = "CenterLeft"
			})
	return false

end

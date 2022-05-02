ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if GetCurrentResourceName() == 'luka_hud' then

TriggerEvent('es:addCommand', 'toggleui', function()
end, { help = _U('toggleui') })

RegisterServerEvent('luka_hud:getServerInfo')
AddEventHandler('luka_hud:getServerInfo', function()

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local job

	if xPlayer ~= nil then
		if xPlayer.job.label == xPlayer.job.grade_label then
			job = xPlayer.job.grade_label
		else
			job = xPlayer.job.label .. ': ' .. xPlayer.job.grade_label
		end

		local info = {
			job = job,
			money = xPlayer.getMoney(),
			bankMoney = xPlayer.getBank(),
			blackMoney = xPlayer.getAccount('black_money').money
		}

		TriggerClientEvent('luka_hud:setInfo', source, info)
	end
end)

RegisterServerEvent('luka_hud:syncCarLights')
AddEventHandler('luka_hud:syncCarLights', function(status)
	TriggerClientEvent('luka_hud:syncCarLights', -1, source, status)
end)

else
end
ESX = nil
local RegisteredSocieties = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local function getMoneyFromUser(id_user)
	local xPlayer = ESX.GetPlayerFromId(id_user)
	return xPlayer.getMoney()

end

local function getMoneyFromUser(id_user)
	local xPlayer = ESX.GetPlayerFromId(id_user)
	return xPlayer.getMoney()

end

local function getBlackMoneyFromUser(id_user)
		local xPlayer = ESX.GetPlayerFromId(id_user)
		local account = xPlayer.getAccount('black_money')
	return account.money

end

local function getBankFromUser(id_user)
		local xPlayer = ESX.GetPlayerFromId(id_user)
		local account = xPlayer.getAccount('bank')
	return account.money

end

ESX.RegisterCommand('job', 'user', function(xPlayer)
    local job = xPlayer.job.label
    local jobgrade = xPlayer.job.grade_label

    --TriggerClientEvent('esx:showNotification', xPlayer.source, 'Emprego: ~g~' .. job .. ' ~s~-~g~ ' .. jobgrade)
    TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Your job: ' .. job .. ' - ' .. jobgrade})
end, false, {help = "Check what job you have"})

ESX.RegisterCommand('cash', 'user', function(xPlayer)
    local xPlayer = ESX.GetPlayerFromId(xPlayer.source)
    local wallet 		= getMoneyFromUser(xPlayer.source)

    --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. wallet .. ' ~s~in your wallet~g~ ')
    TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Your cash: ' .. wallet .. '€'})
end, false, {help = "Check how much is in your wallet"})

ESX.RegisterCommand('Bank', 'user', function(xPlayer)
    local xPlayer = ESX.GetPlayerFromId(xPlayer.source)
    local bank 			= getBankFromUser(xPlayer.source)

    --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. bank .. ' ~s~in your bank~g~ ')
    TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Money in the bank: ' .. bank .. '€'})
end, false, {help = "Check how much is in your bank"})

--ESX.RegisterCommand('sujo', 'user', function(xPlayer)
    --local xPlayer = ESX.GetPlayerFromId(_source)
    --local black_money 	= getBlackMoneyFromUser(_source)

    --TriggerClientEvent('esx:showNotification', _source, 'You currently have ~g~$~g~' .. black_money .. ' ~s~dirty money in your wallet~g~ ')
    --TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Dinheiro Sujo: ' .. black_money .. '€'})
--end, false, {help = "Check how much dirty money you have"})

ESX.RegisterCommand('info', 'user', function(xPlayer)
    local xPlayer = ESX.GetPlayerFromId(xPlayer.source)
    local job = xPlayer.job.label
    local jobgrade = xPlayer.job.grade_label
    local wallet 		= getMoneyFromUser(xPlayer.source)
    local bank 			= getBankFromUser(xPlayer.source)
    local black_money 	= getBlackMoneyFromUser(xPlayer.source)
    if xPlayer.job.grade_name == 'boss' then
		local society = GetSociety(xPlayer.job.name)

		if society ~= nil then
			TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
				money = account.money
			end)
		else
			money = 0
		end

                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You are working as: ~g~' .. job .. ' ~s~-~g~ ' .. jobgrade)
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Your job: ' .. job .. ' - ' .. jobgrade})
                Citizen.Wait(1500)
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. wallet .. ' ~s~in your wallet~g~ ')
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Your cash: ' .. wallet .. '€'})
                Citizen.Wait(1500)
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. bank .. ' ~s~in your bank~g~ ')
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Money in the bank: ' .. bank .. '€'})
                Citizen.Wait(1500)
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. black_money .. ' ~s~dirty money in your wallet~g~ ')
                --TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'You currently have $' .. black_money .. ' dirty money in your wallet'})
                Citizen.Wait(1500)
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. money .. ' ~s~in the society account~g~ ')
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Money society: ' .. money .. '€'})
																	
	else

                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You are working as: ~g~' .. job .. ' ~s~-~g~ ' .. jobgrade)
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Your job: ' .. job .. ' - ' .. jobgrade})
                Citizen.Wait(1500)
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. wallet .. ' ~s~in your wallet~g~ ')
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Your cash: ' .. wallet .. '€'})
                Citizen.Wait(1500)
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. bank .. ' ~s~in your bank~g~ ')
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Money in the bank: ' .. bank .. '€'})
                Citizen.Wait(1500)
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. black_money .. ' ~s~dirty money in your wallet~g~ ')
                --TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'You currently have $' .. black_money .. ' dirty money in your wallet'})
                Citizen.Wait(1500)
	            --TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Access not granted!')
                TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'error', text = 'No acess!'})
																	
	end
end, false, {help = "Check your society's balance"})

ESX.RegisterCommand('society', 'user', function(xPlayer)
    local xPlayer = ESX.GetPlayerFromId(xPlayer.source)
	
	if xPlayer.job.grade_name == 'boss' then
		local society = GetSociety(xPlayer.job.name)

		if society ~= nil then
			TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
				money = account.money
			end)
		else
			money = 0
		end
		
                --TriggerClientEvent('esx:showNotification', xPlayer.source, 'You currently have ~g~$~g~' .. money .. ' ~s~in the society account~g~ ')
	        TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Money society: ' .. money .. '€'})
																	
	else

	        --TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~Access not granted!')
		TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'error', text = 'No acess!'})
																			
	end
end, false, {help = "Check your society's balance"})

TriggerEvent('esx_society:getSocieties', function(societies) 
	RegisteredSocieties = societies
end)

function GetSociety(name)
  for i=1, #RegisteredSocieties, 1 do
    if RegisteredSocieties[i].name == name then
      return RegisteredSocieties[i]
    end
  end
end

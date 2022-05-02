ESX = nil
local open = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- Open ID card
RegisterNetEvent('jsfour-idcard:open')
AddEventHandler('jsfour-idcard:open', function( data, type )
	open = true
	SendNUIMessage({
		action = "open",
		array  = data,
		type   = type
	})
end)

-- Key events
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsControlJustReleased(0, 208) then openMenu() end
		if IsControlJustReleased(0, 322) and open or IsControlJustReleased(0, 177) and open then
			SendNUIMessage({
				action = "close"
			})
			open = false
		end
	end
end)

function openMenu()
	ESX.UI.Menu.Open(
	  'default', GetCurrentResourceName(), 'id_card_menu',
	  {
		  title    = 'Документи',
		  elements = {
			  {label = 'Виж си личната карта', value = 'checkID'},
			  {label = 'Покажи си личната карта', value = 'showID'},
			  {label = 'Виж си шофьорската книжка', value = 'checkDriver'},
			  {label = 'Покажи си шофьорската книжка', value = 'showDriver'},
			  {label = 'Виж си лиценза за оръжие', value = 'checkFirearms'},
			  {label = 'Покажи си лиценза за оръжие', value = 'showFirearms'},
		  }
	  },
	  function(data, menu)
		  local val = data.current.value
		  
		  if val == 'checkID' then
			  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
		  elseif val == 'checkDriver' then
			  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
		  elseif val == 'checkFirearms' then
			  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
		  else
			  local player, distance = ESX.Game.GetClosestPlayer()
			  
			  if distance ~= -1 and distance <= 3.0 then
				  if val == 'showID' then
				  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
				  elseif val == 'showDriver' then
			  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
				  elseif val == 'showFirearms' then
			  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
				  end
			  else
				ESX.ShowNotification('Няма хора на близо')
			  end
		  end
	  end,
	  function(data, menu)
		  menu.close()
	  end
  )
end
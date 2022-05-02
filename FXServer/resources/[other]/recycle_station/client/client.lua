ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

local source = GetPlayerPed(-1)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local menuOpen = false
local wasOpen = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local dist =  #(vector3(Config.PawnShopLocation['x'],Config.PawnShopLocation['y'],Config.PawnShopLocation['z']) - coords)
		if dist <= 2 then
			DrawText3Ds(Config.PawnShopLocation['x'],Config.PawnShopLocation['y'],Config.PawnShopLocation['z'],"[E] Станция за рециклиране")
			if IsControlJustReleased(0, 38) then
				wasOpen = true
				OpenPawnShop()
			end
		end
	end
end)

function OpenPawnShop()
	ESX.UI.Menu.CloseAll()
	local elements = {}
	menuOpen = true

	for k, v in pairs(ESX.GetPlayerData().inventory) do
		local price = Config.PawnShopPrices[v.name]

		if price and v.count > 0 then
			table.insert(elements, {
				label = ('%s - <span style="color:green;">%s</span>'):format(v.label, '$'..price, ESX.Math.GroupDigits(price)),
				name = v.name,
				price = price,

				type = 'slider',
				value = 1,
				min = 1,
				max = v.count
			})
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'pawn_shop', {
		title    = 'Scrap Trader',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		TriggerServerEvent('pawnItem', data.current.name, data.current.value)
	end, function(data, menu)
		menu.close()
		menuOpen = false
	end)
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		if menuOpen then
			ESX.UI.Menu.CloseAll()
		end
	end
end)

--Creates NPC for Scrap Trader
Citizen.CreateThread(function()
    npcHash = GetHashKey(Config.PawnShopPedName)
    RequestModel(npcHash)
    while not HasModelLoaded(npcHash) do
        Wait(1)
    end
    pawn_ped = CreatePed(1, npcHash, Config.PawnShopPed.x ,Config.PawnShopPed.y ,Config.PawnShopPed.z, Config.PawnShopPed.h, false, true)
    SetBlockingOfNonTemporaryEvents(pawn_ped, true)
    SetPedDiesWhenInjured(pawn_ped, false)
    SetPedCanPlayAmbientAnims(pawn_ped, true)
    SetPedCanRagdollFromPlayerImpact(pawn_ped, false)
    SetEntityInvincible(pawn_ped, true)
    FreezeEntityPosition(pawn_ped, true)
	--TaskStartScenarioInPlace(pawn_ped, "WORLD_HUMAN_SMOKING", 0, true);
end)

DrawText3Ds = function(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local factor = #text / 370
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	DrawRect(_x,_y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 120)
end
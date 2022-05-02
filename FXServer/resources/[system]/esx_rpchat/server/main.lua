--[[

  ESX RP Chat

--]]

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
			
		}
	else
		return nil
	end
end

-- Default chat set to ooc
AddEventHandler('chatMessage', function(source, name, message)
      if string.sub(message, 1, string.len("/")) ~= "/" then
          local pName= getIdentity(source)
          fal = pName.firstname .. " " .. pName.lastname
          TriggerClientEvent('chat:addMessage', -1, {
              template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px; border-radius: 10px;"><i class="fas fa-globe"></i> {0}: {1}</div>',
              args = { fal , message}
          })
      end
      CancelEvent()
  end)
  
  AddEventHandler("chatMessage", function(source, args, raw)
    CancelEvent()
end)
 --[AddEventHandler('chatMessage', function(source, name, message)
      --if string.sub(message, 1, string.len("/")) ~= "/" then
          --local name = getIdentity(source)
		--TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, message)
      --end
      --CancelEvent()
  --end)
  
  -- TriggerEvent('es:addCommand', 'me', function(source, args, user)
  --    local name = getIdentity(source)
  --    TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, table.concat(args, " "))
  -- end) 



  --- TriggerEvent('es:addCommand', 'me', function(source, args, user)
  ---    local name = getIdentity(source)
  ---    TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, table.concat(args, " "))
  -- end) 
  TriggerEvent('es:addCommand', 'me', function(source, args, user)
    local name = getIdentity(source)
    table.remove(args, 2)
    TriggerClientEvent('esx-qalle-chat:me', -1, source, name.firstname, table.concat(args, " "))
end)


RegisterCommand('tweet', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(28, 160, 242, 0.6); color: white; border-radius: 3px;"><i class="fab fa-twitter "style="font-size:15px;color:white"> <font color="#FFFF00">@{0} Tweeted:</font> &ensp; <font color="lime">{1}</font></div>',
        args = { fal, msg }
    })
end, false)

 RegisterCommand('anontweet', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(11)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px;"><i class="fas fa-globe"></i> {0}: {1}</div>',
        args = { playerName, msg }
    })
end, false)

 RegisterCommand('bcgod', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 174, 209, 0.5); border-radius: 3px; border-radius: 10px;"><i class="fas fa-ad"style="font-size:20px;color:black"></i> <b><font color="red">管理員公告:</font></b> <b><font color="red">{1}</font></b></div>',
        args = { fal, msg }
    })
end, false)

        --[[
RegisterCommand('ooc', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px;"><i class="fas fa-globe"></i> {0}:<br> {1}</div>',
        args = { playerName, msg }
    })
end, false)
--]]

RegisterCommand('me', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(3)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(127, 0, 225, 0.6); border-radius: 3px;"><i class="fas fa-comment-dots"style="font-size:15px;color:lime"></i>&ensp;<i><b><font size="3" color="#FFFF00">{0}:</font></b></i>&ensp;<b><i><font color="lime">{1}</font></i></b></div>',
        args = { fal, msg }
    })
end, false)

RegisterCommand('911P', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    TriggerClientEvent('chat:addMessage', -1, {
	    template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(0, 0, 0, 0.6); border-radius: 3px;"><i class="fas fa-comment-slash"style="font-size:15px;color:lime"></i>&ensp;;<font color="FFFF00">{0}:</font>&ensp;<font color="lime">{1}</font></div>',
        args = { playerName, msg }
    })
end, false)

RegisterCommand('911E', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    TriggerClientEvent('chat:addMessage', -1, {
	    template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(0, 0, 0, 0.6); border-radius: 3px;"><i class="fas fa-comment-slash"style="font-size:15px;color:lime"></i>&ensp;;<font color="FFFF00">{0}:</font>&ensp;<font color="lime">{1}</font></div>',
        args = { playerName, msg }
    })
end, false)

RegisterCommand('911F', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    TriggerClientEvent('chat:addMessage', -1, {
	    template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(0, 0, 0, 0.6); border-radius: 3px;"><i class="fas fa-comment-slash"style="font-size:15px;color:lime"></i>&ensp;;<font color="FFFF00">{0}:</font>&ensp;<font color="lime">{1}</font></div>',
        args = { playerName, msg }
    })
end, false)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end

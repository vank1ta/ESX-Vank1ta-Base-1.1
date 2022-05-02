-- Additional Great stuff.

-- Hide native FiveM cash and bank display.  Thanks to Vespura: https://forum.fivem.net/t/help-disable-money-bank-announce-by-spawn/66415/4?u=schwim

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- Not sure which one is needed so you can choose/test which of these is the one you need.
        HideHudComponentThisFrame(3) -- SP Cash display 
        HideHudComponentThisFrame(4)  -- MP Cash display
        HideHudComponentThisFrame(13) -- Cash changes
    end
end)
--SERVER CREATED BY FIVEMBULGARIA.COM
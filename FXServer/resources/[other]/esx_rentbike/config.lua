Config                            = {}
Config.Locale                     = 'en'

--- #### BASICS
Config.EnablePrice = false -- false = bikes for free
Config.EnableEffects = false
Config.EnableBlips = true


--- #### PRICES	
Config.PriceTriBike = 89
Config.PriceScorcher = 99
Config.PriceCruiser = 129
Config.PriceBmx = 109


--- #### MARKER EDITS
Config.TypeMarker = 27
Config.MarkerScale = { x = 2.000, y = 2.000, z = 0.500}
Config.MarkerColor = { r = 0, g = 255, b = 255}
	
Config.MarkerZones = { 

    {x = -215.81,y = -918.48,z = 28.29},
    {x = 414.19,y = -966.32,z = 27.86},
    {x = 279.55,y = -586.59,z = 42.31}

}


-- Edit blip titles
Config.BlipZones = { 

   {title="Безплатни колела - Община", colour=58, id=512, x = -215.81, y = -918.48, z = 27.29},
   {title="Безплатни колела - РПУ", colour=58, id=512, x = 414.19, y = -966.32, z = 27.86},
   {title="Безплатни колела - Болница", colour=58, id=512, x = 279.55, y = -586.59, z = 42.31},
}

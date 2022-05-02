Config = {}
Config.Locale = 'en'
Config.IncludeCash = true -- Include cash in inventory?
Config.IncludeWeapons = true -- Include weapons in inventory?
Config.IncludeAccounts = true -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {"bank"} -- List of accounts names to exclude from inventory
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.

-- List of item names that will close ui when used
Config.CloseUiItems = {"headbag", "fishingrod", "tunerlaptop", "binoculars", "gps", "joint", "cigarette", "cigar", "fixkit", "rollingpaper", "cocaine", "meth", "radio", "hifi"}

Config.ShopBlipID = 628
Config.LiquorBlipID = 59
Config.YouToolBlipID = 566
Config.PrisonShopBlipID = 188
Config.WeedStoreBlipID = 140
Config.WeaponShopBlipID = 110
Config.TechShopBlipID = 521

Config.ShopLength = 14
Config.LiquorLength = 10
Config.YouToolLength = 2
Config.PrisonShopLength = 2

Config.Color = 5
Config.WeaponColor = 1

Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 29.8}
Config.LicensePrice = 15000

Config.Shops = {
    RegularShop = {
        Locations = {
			{x = 373.875,   y = 325.896,  z = 102.566},
			{x = 2557.458,  y = 382.282,  z = 107.622},
			{x = -3038.939, y = 585.954,  z = 6.908},
			{x = -3241.927, y = 1001.462, z = 11.830},
			{x = 547.431,   y = 2671.710, z = 41.156},
			{x = 1961.464,  y = 3740.672, z = 31.343},
			{x = 2678.916,  y = 3280.671, z = 54.241},
            {x = 1729.216,  y = 6414.131, z = 34.037},
            {x = -48.519,   y = -1757.514, z = 28.421},
			{x = 1163.373,  y = -323.801,  z = 68.205},
			{x = -707.501,  y = -914.260,  z = 18.215},
			{x = -1820.523, y = 792.518,   z = 137.118},
            {x = 1698.388,  y = 4924.404,  z = 41.063},
            {x = 25.723,   y = -1346.966, z = 28.497}, 
        },
        Items = {
            {name = 'bread'}, -- 3
            {name = 'water'}, -- 3
            {name = 'cola'}, -- 2
            {name = 'meatball'}, -- 2
            {name = 'chips'}, -- 2
            {name = 'chocolate'}, -- 5
            {name = 'vafla'}, -- 3
            {name = 'kebapche'},
			{name = 'lighter'},
			{name = 'sandwich'},
			{name = 'cafe'},
			{name = 'beer'},
			{name = 'donut'}
        }
    },

    RobsLiquor = {
		Locations = {
			{x = 1135.808,  y = -982.281,  z = 45.415},
			{x = -1222.915, y = -906.983,  z = 11.326},
			{x = -1487.553, y = -379.107,  z = 39.163},
			{x = -2968.243, y = 390.910,   z = 14.043},
			{x = 1166.024,  y = 2708.930,  z = 37.157},
			{x = 1392.562,  y = 3604.684,  z = 33.980},
			{x = -1393.409, y = -606.624,  z = 29.319},
        },	
        Items = {
            {name = 'bread'}, -- 3
            {name = 'water'}, -- 3
            {name = 'cola'}, -- 2
            {name = 'meatball'}, -- 2
            {name = 'chips'}, -- 2
            {name = 'chocolate'}, -- 5
            {name = 'vafla'}, -- 3
            {name = 'kebapche'},
			{name = 'lighter'},
			{name = 'cafe'},
			{name = 'sandwich'},
			{name = 'donut'}
        }
	},

    YouTool = {
        Locations = {
            {x = 2748.0, y = 3473.0, z = 55.68},
        },
        Items = {
            {name = 'binocular'},
            {name = 'gps'},
            {name = 'lockpick'},
            {name = 'lighter'},
            {name = 'phone'},
            {name = 'otvarachka'},
        }
    },

    PrisonShop = {
        Locations = {
            {x = 1728.41, y = 2584.31, z = 45.84},
        },
        Items = {
            {name = 'bread'},
            {name = 'water'},
            {name = 'cola'},
            {name = 'cafe'},
            {name = 'sandwich'},
            {name = 'chips'},
            {name = 'otvarachka'},
        }
    },

    TechShop = {
	Locations = {
            {x = -629.09, y = -275.74, z = 34.58},
        },

        Items = {
            {name = 'phone'},
            {name = 'gps'},
			{name = 'hifi'},
			{name = 'radio'}				
		}
    },
}
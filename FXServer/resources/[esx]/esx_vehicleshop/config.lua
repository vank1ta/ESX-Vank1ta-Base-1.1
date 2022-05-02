Config                            = {}
Config.DrawDistance               = 100
Config.MarkerColor                = {r = 225, g = 135, b = 240}
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 50

Config.Locale                     = 'en'

Config.LicenseEnable = true -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-56.74, -1095.8, 26.42),
		Size  = {x = 0.5, y = 1.0, z = 0.5},
		Type  = 36
	},

	ShopInside = {
		Pos     = vector3(-1389.65, -477.67, 48.1),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = -20.0,
		Type    = -1
	},
	ShopOutside = {
		Pos     = vector3(-43.1, -1077.43, 25.5),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 72.41,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(-32.0, -1114.2, 25.4),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(-18.2, -1078.5, 21.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(-44.6, -1080.7, 20.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}

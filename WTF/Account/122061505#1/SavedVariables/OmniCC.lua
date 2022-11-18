
OmniCCDB = {
	["profileKeys"] = {
		["Murr - The Venture Co"] = "Standard",
		["Roffelxdlmao - Arthas"] = "Standard",
		["Roffler - Arthas"] = "Standard",
		["Macher - Antonidas"] = "Standard",
		["Eorüwerüw - Antonidas"] = "Standard",
		["Freggy - Blutkessel"] = "Standard",
		["Badenzer - Arthas"] = "Standard",
		["Unmuhralisch - Arthas"] = "Standard",
		["Badenzer - Rexxar"] = "Standard",
		["Roffell - Rexxar"] = "Standard",
		["Námo - Antonidas"] = "Standard",
		["Jajajajaja - Antonidas"] = "Standard",
		["Meier - Arthas"] = "Standard",
		["Nuath - Antonidas"] = "Standard",
		["Pakkutaq - Antonidas"] = "Standard",
		["Volaris - Arthas"] = "Standard",
		["Alphons - Antonidas"] = "Standard",
		["Uor - Antonidas"] = "Standard",
		["Rumpelmann - Antonidas"] = "Standard",
		["Biggusdickus - Arthas"] = "Standard",
		["Gunnaro - Forscherliga"] = "Standard",
		["Aeflisehf - Antonidas"] = "Standard",
		["Schneggsche - Antonidas"] = "Standard",
		["Auur - Antonidas"] = "Standard",
		["Brennar - Antonidas"] = "Standard",
		["Uud - Antonidas"] = "Standard",
		["Olatius - The Venture Co"] = "Standard",
		["Gebrechen - Arthas"] = "Standard",
		["Aqqaluk - Antonidas"] = "Standard",
		["Naryaa - Antonidas"] = "Standard",
		["Runkelbart - Arthas"] = "Standard",
		["Roffler - Antonidas"] = "Standard",
		["Platu - Arthas"] = "Standard",
		["Rofflefotz - Antonidas"] = "Standard",
		["Gottwalt - Arthas"] = "Standard",
		["Vindicaar - Arthas"] = "Standard",
		["Gralsond - Antonidas"] = "Standard",
		["Rumpellus - Die Aldor"] = "Standard",
		["Nasdaq - Arthas"] = "Standard",
		["Kuumuu - Antonidas"] = "Standard",
		["Muruk - Arthas"] = "Standard",
		["Luxor - Arthas"] = "Standard",
		["Birnenmoose - Blackrock"] = "Standard",
		["Aur - Antonidas"] = "Standard",
		["Muhsevelt - Blackrock"] = "Standard",
		["Ijs - Arthas"] = "Standard",
		["Hammersbaldt - Antonidas"] = "Standard",
		["Kaneggi - Antonidas"] = "Standard",
		["Kaneggi - Arthas"] = "Standard",
		["Sokubius - Antonidas"] = "Standard",
		["Luxr - Antonidas"] = "Standard",
		["Aethon - Arthas"] = "Standard",
		["Runkelbart - Antonidas"] = "Standard",
		["Coqqeritis - Blackrock"] = "Standard",
		["Karibuh - Antonidas"] = "Standard",
		["Planitia - Arthas"] = "Standard",
		["Roffellolol - Antonidas"] = "Standard",
		["Gommemode - Antonidas"] = "Standard",
		["Socubius - The Venture Co"] = "Standard",
		["Omegaclap - Antonidas"] = "Standard",
		["Aragaan - Antonidas"] = "Standard",
		["Staalberg - Antonidas"] = "Standard",
		["Muggeschiss - Arthas"] = "Standard",
		["Aufsmaulwurf - Antonidas"] = "Standard",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.0.1",
	},
	["profiles"] = {
		["Standard"] = {
			["rules"] = {
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 1,
					["theme"] = "Plater Nameplates Theme",
				}, -- [1]
			},
			["themes"] = {
				["Standard"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
					["minDuration"] = 1,
					["minSize"] = 0.05,
					["mmSSDuration"] = 120,
					["effect"] = "alert",
					["minEffectDuration"] = 0,
					["fontSize"] = 15,
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["seconds"] = {
						},
						["soon"] = {
						},
					},
					["enableText"] = false,
				},
			},
		},
	},
}
OmniCC4Config = nil

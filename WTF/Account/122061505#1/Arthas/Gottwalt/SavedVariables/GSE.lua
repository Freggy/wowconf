
GSE_C = {
}
GSELegacyLibraryBackup = {
	{
	}, -- [1]
	{
		["SAM_RETAOE"] = {
			["Helplink"] = "https://wowlazymacros.com/forums/topic/tls-ret-macro/",
			["Talents"] = "2,2,2,1,1,2,2",
			["Mythic"] = -1,
			["Author"] = "TimothyLuke",
			["ManualIntervention"] = false,
			["MacroVersions"] = {
				{
					"/cast 35395", -- [1]
					"/cast 53385", -- [2]
					"/cast 20271", -- [3]
					"/cast 184575", -- [4]
					"/cast Wake of Ashes", -- [5]
					["PostMacro"] = {
					},
					["StepFunction"] = "Priority",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:shift] 31884", -- [2]
						"/cast [mod:ctrl] 215661", -- [3]
					},
					["PreMacro"] = {
					},
					["SoundErrorPrevention"] = true,
					["KeyRelease"] = {
					},
				}, -- [1]
			},
			["Icon"] = "INV_MISC_QUESTIONMARK",
			["Default"] = 1,
			["Raid"] = -1,
			["Help"] = "A simple Ret AOE Macro\nShift has Avenging Wrath\nControl has Justicar's Vengeance",
			["SpecID"] = 70,
			["Lang"] = "enUS",
			["PVP"] = 0,
		},
		["SAM_PROT"] = {
			["Talents"] = "3221222",
			["Default"] = 1,
			["Help"] = "Simple Prot Macro.\nMod Shift has Avenging Wrath",
			["Author"] = "TimothyLuke",
			["MacroVersions"] = {
				{
					"/cast Blessed Hammer", -- [1]
					"/cast 26573", -- [2]
					"/cast Shield of the Rghteous", -- [3]
					"/cast Avenger's Shield", -- [4]
					"/cast Light of the Protector", -- [5]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["PostMacro"] = {
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:alt] 31884", -- [2]
					},
				}, -- [1]
			},
			["SpecID"] = 66,
			["ManualIntervention"] = false,
		},
		["SAM_HOLYPALADIN"] = {
			["Talents"] = "3323122",
			["Default"] = 1,
			["Help"] = "Simple Holy Paladin DPS Macro",
			["SpecID"] = 65,
			["Author"] = "TimothyLuke",
			["MacroVersions"] = {
				{
					"/cast 35395", -- [1]
					"/cast 26573", -- [2]
					"/cast [@player] 114158", -- [3]
					"/cast Judgement", -- [4]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["PostMacro"] = {
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
					},
				}, -- [1]
			},
			["ManualIntervention"] = false,
		},
		["SAM_RET"] = {
			["Helplink"] = "https://wowlazymacros.com/forums/topic/tls-ret-macro/",
			["Talents"] = "2,2,2,1,1,2,2",
			["Author"] = "TimothyLuke",
			["ManualIntervention"] = false,
			["Default"] = 1,
			["Help"] = "A simple Ret  Macro\nShift has Avenging Wrath\nControl has Justicar's Vengeance",
			["Icon"] = "INV_MISC_QUESTIONMARK",
			["SpecID"] = 70,
			["Lang"] = "enUS",
			["MacroVersions"] = {
				{
					"/cast 35395", -- [1]
					"/cast 85256", -- [2]
					"/cast 20271", -- [3]
					"/cast 184575", -- [4]
					"/cast Wake of Ashes", -- [5]
					["PostMacro"] = {
					},
					["StepFunction"] = "Priority",
					["KeyRelease"] = {
					},
					["SoundErrorPrevention"] = true,
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:shift] 31884", -- [2]
						"/cast [mod:ctrl] 215661", -- [3]
					},
				}, -- [1]
			},
		},
	}, -- [2]
	[0] = {
	},
	[9] = {
		["SAM_AFFLOCK"] = {
			["Help"] = "Affliction - Talents are 3111113",
			["Talents"] = "3111113",
			["Default"] = 1,
			["Author"] = "Cacey@The Venture Co",
			["SpecID"] = 265,
			["MacroVersions"] = {
				{
					"/castsequence [nochanneling] reset=target/10  Agony, Corruption", -- [1]
					"/cast [combat,nochanneling] Unstable Affliction", -- [2]
					"/cast ShadowBolt", -- [3]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
						"/cast [combat,nochanneling] Phantom Singularity", -- [1]
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
					},
				}, -- [1]
			},
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_DEMO"] = {
			["Talents"] = "1111311",
			["Default"] = 1,
			["Author"] = "Cymiric",
			["MacroVersions"] = {
				{
					"/cast Soul Strike", -- [1]
					"/cast Call Dreadstalkers", -- [2]
					"/cast 29722", -- [3]
					"/cast Hand of Gul'dan", -- [4]
					"/cast Hand of Gul'dan", -- [5]
					"/cast Power Siphon", -- [6]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/cast [mod:shift] Demonbolt", -- [1]
						"/cast [mod:ctrl] Summon Demonic Tyrant", -- [2]
						"/petattack [exists]", -- [3]
					},
					["PostMacro"] = {
					},
					["PreMacro"] = {
					},
					["Combat"] = true,
				}, -- [1]
			},
			["SpecID"] = 266,
			["ManualIntervention"] = false,
		},
		["SAM_DESTRO"] = {
			["Talents"] = "2212122",
			["Default"] = 1,
			["Author"] = "Cymiryc",
			["SpecID"] = 267,
			["MacroVersions"] = {
				{
					"/cast [nochanneling] 29722", -- [1]
					"/cast [nochanneling] 29722", -- [2]
					"/cast [nochanneling] 17962", -- [3]
					"/cast [nochanneling] 29722", -- [4]
					"/cast [nochanneling] Channel Demonfire", -- [5]
					["LoopLimit"] = "1",
					["Combat"] = true,
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
					},
					["PostMacro"] = {
					},
					["PreMacro"] = {
						"/castsequence [nochanneling] reset=target  348", -- [1]
					},
					["KeyPress"] = {
						"/cast [mod:shift] 116858", -- [1]
						"/cast [mod:ctrl,@cursor] 5740", -- [2]
					},
				}, -- [1]
			},
			["ManualIntervention"] = false,
		},
	},
}

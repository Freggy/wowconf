local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ ["Echo Public - SOFO - Priority Lists"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {   {    ["type"] = "header",    ["noMerge"] = false,    ["text"] = "Rygelon",    ["useName"] = true,    ["width"] = 1,   },   {    ["subOptions"] = {     {      ["fontSize"] = "medium",      ["type"] = "description",      ["text"] = "Assigns players with the Dark Eclipse debuff to the Quasar entering positions. The position order is \"Front Left\", \"Front Right\", \"Left\", \"Right\". The higher a player is in the list the more likely he is to get \"Front Left\", the lower a player is in the list the more likely it is for him go get \"Right\".",      ["width"] = 2,     },     {      ["type"] = "input",      ["useDesc"] = true,      ["width"] = 2,      ["multiline"] = false,      ["name"] = "Player Name",      ["default"] = "",      ["key"] = "playerName",      ["length"] = 10,      ["desc"] = "Name of the player, that shall be assigned. The higher the player on the top is, the more likely it is to be picked.",      ["useLength"] = false,     },    },    ["type"] = "group",    ["useDesc"] = false,    ["nameSource"] = 2,    ["width"] = 1,    ["useCollapse"] = false,    ["key"] = "QuasarPriority",    ["name"] = "Quasar Priority",    ["hideReorder"] = false,    ["limitType"] = "none",    ["groupType"] = "array",    ["collapse"] = false,    ["size"] = 10,   },   {    ["type"] = "header",    ["useName"] = false,    ["text"] = "",    ["noMerge"] = false,    ["width"] = 1,   },   {    ["subOptions"] = {     {      ["fontSize"] = "medium",      ["type"] = "description",      ["text"] = "Sets up the priority to soak a 2nd or 3rd wave core, if a player was not debuffed with Dark Eclipse. The higher the position is in the list, the more likely it is for the player to be picked as soaker.",      ["width"] = 2,     },     {      ["type"] = "input",      ["useDesc"] = true,      ["width"] = 2,      ["multiline"] = false,      ["default"] = "",      ["key"] = "playerName",      ["name"] = "Player Name",      ["length"] = 10,      ["desc"] = "Name of the player, that shall be assigned. The higher the player on the top is, the more likely it is to be picked.",      ["useLength"] = false,     },    },    ["type"] = "group",    ["useDesc"] = false,    ["nameSource"] = 2,    ["width"] = 1,    ["useCollapse"] = false,    ["name"] = "Third Core",    ["key"] = "RygelonThirdCore",    ["collapse"] = false,    ["limitType"] = "none",    ["groupType"] = "array",    ["hideReorder"] = false,    ["size"] = 10,   },   {    ["noMerge"] = false,    ["type"] = "header",    ["text"] = "Jailer",    ["useName"] = true,    ["width"] = 1,   },   {    ["subOptions"] = {     {      ["fontSize"] = "medium",      ["type"] = "description",      ["text"] = "Assigns players with Rune of Damnation (bombs) to certain wholes to jump down. The position list is \"Front\", \"Left\", \"Back Left\", \"Right\", \"Back Middle\", \"Back Right\". The higher a player is positioned in the priority list, the more likely it is to get one of the first positions assigned. The lower the position of a player is in the priority list, the more likely it is to get one of the last positions.\
\
Note: This list needs to contain every single player, or the bomb assignment may fail.",      ["width"] = 2,     },     {      ["type"] = "input",      ["useDesc"] = true,      ["width"] = 2,      ["multiline"] = false,      ["name"] = "Player Name",      ["desc"] = "Name of the player, that shall be assigned. The higher the player on the top is, the more likely it is to be picked.",      ["default"] = "",      ["length"] = 10,      ["key"] = "playerName",      ["useLength"] = false,     },    },    ["type"] = "group",    ["useDesc"] = false,    ["nameSource"] = 2,    ["width"] = 1,    ["useCollapse"] = false,    ["key"] = "JailerBombPrio",    ["name"] = "Jailer Bomb Priority",    ["hideReorder"] = false,    ["limitType"] = "none",    ["groupType"] = "array",    ["collapse"] = false,    ["size"] = 10,   },  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "if not EchoUtil then\
    setglobal(\"EchoUtil\", {})\
end\
\
function EchoUtil:GetPriorityList(name)\
    EchoUtil.priorityLists = EchoUtil.priorityLists or {}\
    return EchoUtil.priorityLists[name]\
end\
\
for listName, config in pairs(aura_env.config) do\
    if(type(config) == \"table\")then\
        \
        EchoUtil.priorityLists = EchoUtil.priorityLists or {}\
        \
        local l = {}\
        for priority, entry in ipairs(config) do\
            l[entry.playerName] = priority\
        end\
        \
        EchoUtil.priorityLists[listName] = l\
    end\
end",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["subeventSuffix"] = "_CAST_START",     ["use_absorbMode"] = true,     ["event"] = "Conditions",     ["names"] = {     },     ["spellIds"] = {     },     ["use_alwaystrue"] = true,     ["use_unit"] = true,     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 12,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["selfPoint"] = "BOTTOM",  ["shadowYOffset"] = -1,  ["conditions"] = {  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "Echo Public - SOFO - Priority Lists",  ["displayText"] = "",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = 0,  ["uid"] = "vLSp9Ivv75P",  ["config"] = {   ["RygelonThirdCore"] = {    {     ["playerName"] = "Xerwotwo",    },    {     ["playerName"] = "Skaris",    },   },   ["JailerBombPrio"] = {    {     ["playerName"] = "",    },   },   ["QuasarPriority"] = {    {     ["playerName"] = "Clickzblue",    },    {     ["playerName"] = "Perfecto",    },    {     ["playerName"] = "Xerwotwo",    },   },  },  ["color"] = {   1,   1,   1,   1,  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["wordWrap"] = "WordWrap", },});
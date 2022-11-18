local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ ["(09) Echo Public - DreadLords - AutoHideNameplates"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["xOffset"] = 0,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["customText"] = "",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "update",  ["url"] = "",  ["actions"] = {   ["start"] = {    ["do_glow"] = false,    ["do_custom"] = true,    ["custom"] = "C_CVar.SetCVar(\"nameplatesShowEnemies\",0);",   },   ["finish"] = {    ["do_glow"] = false,    ["do_custom"] = true,    ["custom"] = "C_CVar.SetCVar(\"nameplatesShowEnemies\",1);",   },   ["init"] = {    ["do_custom"] = false,    ["custom"] = "",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = 365872,     ["auranames"] = {      "Paranoia",     },     ["use_genericShowOn"] = true,     ["genericShowOn"] = "showOnCooldown",     ["use_unit"] = true,     ["subeventPrefix"] = "SPELL",     ["auraspellids"] = {      "368524",     },     ["unit"] = "player",     ["use_absorbMode"] = true,     ["debuffType"] = "HARMFUL",     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED, ENCOUNTER_START",     ["use_spellName"] = true,     ["custom_hide"] = "timed",     ["custom_type"] = "event",     ["type"] = "aura2",     ["use_absorbHealMode"] = true,     ["useExactSpellId"] = false,     ["subeventSuffix"] = "_CAST_START",     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["spellName"] = 0,     ["realSpellName"] = 0,     ["use_spellId"] = true,     ["spellIds"] = {     },     ["useName"] = true,     ["check"] = "event",     ["names"] = {     },     ["use_track"] = true,     ["customVariables"] = "",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["displayText_format_marker_format"] = "none",  ["desaturate"] = false,  ["font"] = "Friz Quadrata TT",  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 55,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "countdown",    ["width"] = 0.5,    ["default"] = false,    ["name"] = "Countdown",    ["useDesc"] = true,    ["desc"] = "Enables or disables the voice countdown.",   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 1,    ["width"] = 1.5,    ["min"] = 1,    ["name"] = "Duration",    ["default"] = 0,    ["key"] = "duration",    ["desc"] = "Defines the duration of the voice countdown",   },  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["use_never"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2543",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,  },  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["conditions"] = {  },  ["fontSize"] = 30,  ["shadowYOffset"] = -1,  ["automaticWidth"] = "Auto",  ["shadowXOffset"] = 1,  ["stickyDuration"] = false,  ["uid"] = "xPB7AJV3TCz",  ["auto"] = true,  ["regionType"] = "text",  ["width"] = 55,  ["frameStrata"] = 1,  ["color"] = {   1,   1,   1,   1,  },  ["fixedWidth"] = 200,  ["wordWrap"] = "WordWrap",  ["displayText_format_p_time_precision"] = 1,  ["justify"] = "CENTER",  ["zoom"] = 0,  ["cooldownTextDisabled"] = false,  ["semver"] = "1.0.4",  ["tocversion"] = 90200,  ["id"] = "(09) Echo Public - DreadLords - AutoHideNameplates",  ["cooldownEdge"] = false,  ["alpha"] = 1,  ["anchorFrameType"] = "SCREEN",  ["icon"] = true,  ["config"] = {   ["countdown"] = false,   ["duration"] = 4,  },  ["inverse"] = false,  ["displayText"] = "",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["displayIcon"] = "",  ["cooldown"] = true,  ["selfPoint"] = "TOP", }, ["(09) Echo Public - DreadLords - Horrifying Shadows"] = {  ["iconSource"] = -1,  ["authorOptions"] = {  },  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["cooldownSwipe"] = true,  ["cooldownEdge"] = false,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "aura2",     ["auraspellids"] = {      "363232",     },     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["spellIds"] = {     },     ["unit"] = "player",     ["useExactSpellId"] = true,     ["names"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["selfPoint"] = "CENTER",  ["desaturate"] = false,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_text_format_p_time_precision"] = 1,    ["text_text_format_s_format"] = "none",    ["text_text"] = "%p",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["type"] = "subtext",    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_shadowXOffset"] = 0,    ["text_shadowYOffset"] = 0,    ["text_text_format_p_time_dynamic_threshold"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_time_format"] = 0,    ["text_text_format_p_format"] = "timed",    ["text_fontSize"] = 24,    ["anchorXOffset"] = 0,    ["text_visible"] = true,   },  },  ["height"] = 40,  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2543",   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["regionType"] = "icon",  ["xOffset"] = 0,  ["cooldown"] = true,  ["color"] = {   1,   1,   1,   1,  },  ["zoom"] = 0,  ["anchorFrameType"] = "SCREEN",  ["tocversion"] = 90200,  ["id"] = "(09) Echo Public - DreadLords - Horrifying Shadows",  ["frameStrata"] = 1,  ["alpha"] = 1,  ["width"] = 40,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["uid"] = "rlsevDdfku5",  ["inverse"] = false,  ["config"] = {  },  ["cooldownTextDisabled"] = true,  ["conditions"] = {  },  ["information"] = {  },  ["icon"] = true, }, ["(09) Echo Public - DreadLords - Partner Plague Dumboversion"] = {  ["outline"] = "OUTLINE",  ["displayText_format_partner_format"] = "Unit",  ["xOffset"] = 0,  ["displayText"] = "%1.unit - %1.s",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {    ["do_custom"] = false,    ["custom"] = "aura_env.carriers = {};\
",   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["useGroup_count"] = false,     ["matchesShowOn"] = "showAlways",     ["names"] = {     },     ["debuffType"] = "HARMFUL",     ["type"] = "aura2",     ["custom_type"] = "stateupdate",     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_APPLIED_DOSE:SPELL_AURA_REMOVED FIND_PLAGUE_PARTNERS",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["useName"] = false,     ["unit"] = "focus",     ["spellIds"] = {     },     ["useExactSpellId"] = true,     ["check"] = "event",     ["subeventSuffix"] = "_CAST_START",     ["useUnitName"] = true,     ["auraspellids"] = {      "360012",     },    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["displayText_format_partner_color"] = "class",  ["font"] = "Expressway",  ["displayText_format_1.unit_realm_name"] = "never",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2543",   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["displayText_format_s_format"] = "none",  ["displayText_format_partner_realm_name"] = "never",  ["fontSize"] = 29,  ["shadowXOffset"] = 1,  ["displayText_format_partner_abbreviate_max"] = 5,  ["color"] = {   1,   1,   1,   1,  },  ["fixedWidth"] = 200,  ["regionType"] = "text",  ["authorOptions"] = {  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["selfPoint"] = "BOTTOM",  ["uid"] = "rFwsa5VIxwq",  ["displayText_format_1.unit_color"] = "class",  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_status_format"] = "none",  ["displayText_format_1.unit_format"] = "Unit",  ["displayText_format_1.unit_abbreviate"] = false,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(09) Echo Public - DreadLords - Partner Plague Dumboversion",  ["wordWrap"] = "WordWrap",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_partner_abbreviate"] = true,  ["config"] = {  },  ["shadowYOffset"] = -1,  ["displayText_format_1.unit_abbreviate_max"] = 8,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["displayText_format_1.s_format"] = "none", }, ["(09) Echo Public - DreadLords - Sound if Cloud and Fears are out"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["color"] = {   1,   1,   1,   1,  },  ["displayText"] = "",  ["customText"] = "",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "update",  ["url"] = "",  ["actions"] = {   ["start"] = {    ["do_glow"] = false,    ["custom"] = "C_CVar.SetCVar(\"nameplatesShowEnemies\",0);",    ["do_sound"] = true,    ["do_custom"] = false,    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Bleat.ogg",   },   ["init"] = {    ["do_custom"] = false,    ["custom"] = "",   },   ["finish"] = {    ["do_glow"] = false,    ["do_custom"] = false,    ["custom"] = "C_CVar.SetCVar(\"nameplatesShowEnemies\",1);",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = 365872,     ["auranames"] = {      "",     },     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["use_unit"] = true,     ["names"] = {     },     ["custom_type"] = "event",     ["subeventPrefix"] = "SPELL",     ["use_genericShowOn"] = true,     ["custom_hide"] = "timed",     ["spellIds"] = {     },     ["use_spellId"] = true,     ["debuffType"] = "HARMFUL",     ["subeventSuffix"] = "_CAST_START",     ["useName"] = false,     ["use_absorbHealMode"] = true,     ["useExactSpellId"] = true,     ["auraspellids"] = {      "360012",     },     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["spellName"] = 0,     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED, ENCOUNTER_START",     ["type"] = "aura2",     ["check"] = "event",     ["unit"] = "player",     ["use_track"] = true,     ["customVariables"] = "",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["unit"] = "group",     ["type"] = "aura2",     ["useMatch_count"] = true,     ["match_countOperator"] = ">=",     ["match_count"] = "1",     ["auraspellids"] = {      "360146",     },     ["useExactSpellId"] = true,     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["selfPoint"] = "TOP",  ["displayText_format_marker_format"] = "none",  ["desaturate"] = false,  ["font"] = "Friz Quadrata TT",  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 55,  ["xOffset"] = 0,  ["load"] = {   ["use_encounterid"] = true,   ["use_never"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2543",   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["cooldown"] = true,  ["fixedWidth"] = 200,  ["fontSize"] = 30,  ["yOffset"] = 0,  ["automaticWidth"] = "Auto",  ["shadowXOffset"] = 1,  ["stickyDuration"] = false,  ["config"] = {   ["countdown"] = false,   ["duration"] = 4,  },  ["justify"] = "CENTER",  ["regionType"] = "text",  ["width"] = 55,  ["alpha"] = 1,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "countdown",    ["desc"] = "Enables or disables the voice countdown.",    ["useDesc"] = true,    ["name"] = "Countdown",    ["default"] = false,    ["width"] = 0.5,   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 1,    ["width"] = 1.5,    ["min"] = 1,    ["name"] = "Duration",    ["desc"] = "Defines the duration of the voice countdown",    ["key"] = "duration",    ["default"] = 0,   },  },  ["displayIcon"] = "",  ["wordWrap"] = "WordWrap",  ["displayText_format_p_time_precision"] = 1,  ["auto"] = true,  ["zoom"] = 0,  ["cooldownTextDisabled"] = false,  ["semver"] = "1.0.4",  ["tocversion"] = 90200,  ["id"] = "(09) Echo Public - DreadLords - Sound if Cloud and Fears are out",  ["cooldownEdge"] = false,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["icon"] = true,  ["uid"] = "3GFWcGNdbUx",  ["inverse"] = false,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, [" (09) Echo Public - DreadLords - Clouds Bait Timer"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["yOffset"] = 200,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",    ["do_sound"] = true,   },   ["init"] = {   },   ["finish"] = {   },  },  ["displayText_format_1.p_time_format"] = 0,  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["HEALER"] = true,     ["DAMAGER"] = true,    },   },   ["size"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["use_role"] = false,   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["pvptalent"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["class_and_spec"] = {    ["multi"] = {     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,    },   },   ["encounterid"] = "2543",   ["faction"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["regionType"] = "text",  ["selfPoint"] = "CENTER",  ["fixedWidth"] = 200,  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["auranames"] = {      "334228",     },     ["remaining_operator"] = "<",     ["subeventPrefix"] = "SPELL",     ["remaining"] = "3",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HARMFUL",     ["use_remaining"] = true,     ["subeventSuffix"] = "_CAST_START",     ["text"] = "Clouds",     ["event"] = "BigWigs Timer",     ["type"] = "addons",     ["duration"] = "3",     ["use_text"] = true,     ["spellIds"] = {     },     ["useName"] = true,     ["remOperator"] = "<",     ["names"] = {     },     ["unit"] = "player",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["shadowYOffset"] = -1,  ["xOffset"] = 0,  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["uid"] = "A2Pn6HdOC8f",  ["authorOptions"] = {  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(09) Echo Public - DreadLords - Clouds Bait Timer",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["config"] = {  },  ["displayText_format_2.p_format"] = "timed",  ["displayText"] = "BAIT %p",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["displayText_format_1.p_time_precision"] = 1, }, ["(09) Echo Public - SOFO - DreadLords"] = {  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["borderBackdrop"] = "Blizzard Tooltip",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["scale"] = 1,  ["information"] = {  },  ["border"] = false,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 7,  ["authorOptions"] = {  },  ["borderColor"] = {   0,   0,   0,   1,  },  ["uid"] = "oDMy4WHolhI",  ["yOffset"] = 0,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["subeventPrefix"] = "SPELL",     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["names"] = {     },     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["xOffset"] = 0,  ["internalVersion"] = 50,  ["config"] = {  },  ["selfPoint"] = "CENTER",  ["id"] = "(09) Echo Public - SOFO - DreadLords",  ["borderOffset"] = 4,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["tocversion"] = 90200,  ["borderInset"] = 1,  ["borderSize"] = 2,  ["subRegions"] = {  },  ["regionType"] = "group",  ["conditions"] = {  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },  },  ["borderEdge"] = "Square Full White", },});
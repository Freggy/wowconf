local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ [" (10) Echo Public - Rygalon - Tank Taunt"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = -2.2230224609375,  ["displayText"] = "TAUNT",  ["yOffset"] = 36.025268554688,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\CowMooing.ogg",    ["do_sound"] = true,   },   ["init"] = {   },   ["finish"] = {   },  },  ["displayText_format_1.p_time_format"] = 0,  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["desaturate"] = false,  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["displayText_format_1.p_time_precision"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["height"] = 200,  ["rotate"] = true,  ["load"] = {   ["use_encounterid"] = true,   ["role"] = {    ["single"] = "TANK",   },   ["encounterid"] = "2549",   ["talent"] = {    ["multi"] = {    },   },   ["use_role"] = true,   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["selfPoint"] = "CENTER",  ["authorOptions"] = {   {    ["type"] = "number",    ["useDesc"] = false,    ["max"] = 1,    ["step"] = 1,    ["width"] = 1,    ["min"] = 0,    ["name"] = "Tank index",    ["key"] = "target",    ["default"] = 0,   },  },  ["shadowXOffset"] = 1,  ["fixedWidth"] = 200,  ["mirror"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["custom_hide"] = "timed",     ["customVariables"] = "{\
    \
}",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_CAST_START\")then\
      if(spellID == 362184)then\
        aura_env.count = aura_env.count + 1;\
        \
        if(aura_env.config.target == (aura_env.count % 2))then\
          allstates[\"\"] = {\
            show = true,\
            changed = true,\
            progressType = \"timed\",\
            duration = 2,\
            expirationTime = GetTime() + 2,\
            autoHide = true,\
          };\
          \
          return true;\
        end\
      elseif(spellID == 363533)then\
        aura_env.count = 0; \
      end\
    end\
  elseif(event == \"ENCOUNTER_START\")then\
    aura_env.count = 0;    \
  end\
end",     ["spellIds"] = {     },     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["events"] = "ENCOUNTER_START CLEU:SPELL_CAST_START",     ["names"] = {     },     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["regionType"] = "text",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["blendMode"] = "BLEND",  ["color"] = {   1,   1,   1,   1,  },  ["uid"] = "N1GShaHkUjG",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["displayText_format_p_time_precision"] = 1,  ["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["width"] = 200,  ["alpha"] = 1,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygalon - Tank Taunt",  ["shadowYOffset"] = -1,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["config"] = {   ["target"] = 1,  },  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["fontSize"] = 32,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "show",     ["value"] = 1,    },    ["changes"] = {     {     },    },   },  },  ["information"] = {  },  ["discrete_rotation"] = 0, }, ["(10) Echo Public - Rygalon - Kill quasars"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "addons",     ["subeventSuffix"] = "_CAST_START",     ["text"] = "Dark Eclipse",     ["remaining_operator"] = "<=",     ["event"] = "BigWigs Timer",     ["subeventPrefix"] = "SPELL",     ["use_remaining"] = true,     ["remaining"] = "5",     ["spellIds"] = {     },     ["use_text"] = true,     ["names"] = {     },     ["unit"] = "player",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2549",   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 34,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["yOffset"] = 190,  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygalon - Kill quasars",  ["displayText"] = "KILL ORBS: %p",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["authorOptions"] = {  },  ["config"] = {  },  ["uid"] = "u1n4N8p03XV",  ["color"] = {   1,   1,   1,   1,  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["wordWrap"] = "WordWrap", }, [" (10) Echo Public - Rygalon - Kill ORBS"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText"] = "KILL ORBS",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "combatlog",     ["spellId"] = "361548",     ["auraspellids"] = {      "362206",     },     ["subeventSuffix"] = "_CAST_START",     ["duration"] = "2",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["destUnit"] = "player",     ["use_spellId"] = true,     ["spellIds"] = {     },     ["useExactSpellId"] = true,     ["unit"] = "player",     ["use_destUnit"] = true,     ["names"] = {     },     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["role"] = {    ["single"] = "DAMAGER",   },   ["spec"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["use_role"] = true,   ["encounterid"] = "2549",   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 43,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["color"] = {   1,   1,   1,   1,  },  ["wordWrap"] = "WordWrap",  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygalon - Kill ORBS",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = 0,  ["uid"] = "9ZfC40NgrUx",  ["yOffset"] = 180,  ["config"] = {  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, [" (10) Echo Public - Rygalonm - Dark Quasar"] = {  ["user_y"] = 0,  ["user_x"] = 0,  ["xOffset"] = 0,  ["yOffset"] = -10,  ["foregroundColor"] = {   0.29019607843137,   0,   0.3921568627451,   1,  },  ["echoVersion"] = 1,  ["sameTexture"] = false,  ["url"] = "",  ["desaturateForeground"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = 363130,     ["auranames"] = {      "368082",     },     ["duration"] = "3",     ["group_count"] = "0",     ["group_countOperator"] = ">",     ["showClones"] = false,     ["name_operator"] = "find('%s')",     ["use_debuffClass"] = false,     ["useExactSpellId"] = false,     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["use_spellId"] = true,     ["name"] = "Plasma Discharge",     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["useGroup_count"] = true,     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["names"] = {      "Sacred Blade",     },     ["custom_type"] = "event",     ["use_tooltip"] = false,     ["ignoreSelf"] = true,     ["use_absorbHealMode"] = true,     ["spellName"] = 0,     ["use_unit"] = true,     ["unit"] = "player",     ["buffShowOn"] = "showOnActive",     ["spellIds"] = {      283573,     },     ["useName"] = true,     ["use_genericShowOn"] = true,     ["unevent"] = "auto",     ["debuffType"] = "HARMFUL",     ["type"] = "aura2",     ["custom_hide"] = "timed",     ["auraspellids"] = {     },     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["matchesShowOn"] = "showOnActive",     ["remOperator"] = "<",     ["subeventPrefix"] = "SPELL",     ["subeventSuffix"] = "_CAST_START",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["activeTriggerMode"] = -10,  },  ["endAngle"] = 360,  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["version"] = 7,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_shadowXOffset"] = 1,    ["text_text"] = "%p",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_p_format"] = "Number",    ["text_text_format_p_decimal_precision"] = 1,    ["type"] = "subtext",    ["anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_text_format_p_time_precision"] = 1,    ["text_shadowYOffset"] = -1,    ["text_text_format_n_format"] = "none",    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_time_format"] = 0,    ["text_visible"] = true,    ["text_fontSize"] = 16,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_round_type"] = "floor",   },  },  ["height"] = 150,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["encounterid"] = "2549",   ["talent2"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["crop_y"] = 0.41,  ["startAngle"] = 0,  ["useAdjustededMax"] = false,  ["fontSize"] = 12,  ["crop_x"] = 0.41,  ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_10px.tga",  ["backgroundColor"] = {   0.16078431372549,   1,   0,   0,  },  ["desaturateBackground"] = false,  ["mirror"] = false,  ["useAdjustededMin"] = false,  ["regionType"] = "progresstexture",  ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",  ["blendMode"] = "BLEND",  ["uid"] = "lcgdEosTCGS",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["slantMode"] = "INSIDE",  ["width"] = 150,  ["alpha"] = 0.9,  ["selfPoint"] = "CENTER",  ["compress"] = false,  ["semver"] = "1.0.6",  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygalonm - Dark Quasar",  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["authorOptions"] = {  },  ["config"] = {  },  ["inverse"] = false,  ["anchorPoint"] = "CENTER",  ["orientation"] = "ANTICLOCKWISE",  ["conditions"] = {  },  ["information"] = {   ["ignoreOptionsEventErrors"] = false,  },  ["backgroundOffset"] = 0, }, [" (10) Echo Public - Rygalon - Prepull Soothe"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["yOffset"] = 200,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["useName"] = false,     ["event"] = "BigWigs Timer",     ["subeventSuffix"] = "_CAST_START",     ["type"] = "addons",     ["text"] = "Pull",     ["use_text"] = true,     ["unit"] = "target",     ["useExactSpellId"] = true,     ["auraspellids"] = {      "350857",     },     ["spellIds"] = {     },     ["use_remaining"] = false,     ["names"] = {     },     ["subeventPrefix"] = "SPELL",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "aura2",     ["useExactSpellId"] = true,     ["matchesShowOn"] = "showOnMatches",     ["unit"] = "target",     ["unitExists"] = false,     ["match_count"] = "0",     ["auraspellids"] = {      "453",     },     ["match_countOperator"] = "==",     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["npcId"] = "182777",     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["use_absorbMode"] = true,     ["event"] = "Unit Characteristics",     ["unit"] = "target",     ["use_npcId"] = true,     ["use_unit"] = true,     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "preset",    ["easeType"] = "none",    ["duration_type"] = "seconds",    ["easeStrength"] = 3,    ["preset"] = "bounce",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_namerealm"] = false,   ["use_zoneIds"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["single"] = "PRIEST",    ["multi"] = {    },   },   ["use_encounterid"] = false,   ["use_class"] = true,   ["role"] = {    ["single"] = "DAMAGER",    ["multi"] = {     ["DAMAGER"] = true,     ["TANK"] = true,    },   },   ["zoneIds"] = "2052",   ["class_and_spec"] = {   },   ["namerealm"] = "Rycntwo",   ["encounterid"] = "2435",   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["shadowYOffset"] = -1,  ["conditions"] = {  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygalon - Prepull Soothe",  ["displayText"] = "SOOTHE PLZ <3",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["config"] = {  },  ["authorOptions"] = {  },  ["uid"] = "VeonjJ19QKa",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["selfPoint"] = "CENTER", }, [" (10) Echo Public - Rygalon - Finish Orb"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "FINISH ORB",  ["yOffset"] = 180,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "combatlog",     ["spellId"] = "362206",     ["auraspellids"] = {      "362206",     },     ["subeventSuffix"] = "_AURA_APPLIED",     ["duration"] = "5",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["destUnit"] = "player",     ["use_spellId"] = true,     ["spellIds"] = {     },     ["useExactSpellId"] = true,     ["unit"] = "player",     ["use_destUnit"] = true,     ["names"] = {     },     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "addons",     ["text"] = "Massive Bang",     ["event"] = "BigWigs Timer",     ["unit"] = "player",     ["remaining"] = "15",     ["remaining_operator"] = "<=",     ["use_remaining"] = true,     ["use_text"] = true,     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2549",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 43,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["shadowYOffset"] = -1,  ["fixedWidth"] = 200,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygalon - Finish Orb",  ["color"] = {   1,   1,   1,   1,  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["authorOptions"] = {  },  ["uid"] = "Kl3qRtlNI)e",  ["config"] = {  },  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, ["(10) Echo Public - Rygelon - Dark Eclipse Assignment"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "countdown",    ["width"] = 0.5,    ["default"] = false,    ["name"] = "Countdown",    ["useDesc"] = true,    ["desc"] = "Enables or disables the voice countdown.",   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 1,    ["width"] = 1.5,    ["min"] = 1,    ["name"] = "Duration",    ["default"] = 0,    ["key"] = "duration",    ["desc"] = "Defines the duration of the voice countdown",   },   {    ["useName"] = true,    ["type"] = "header",    ["text"] = "Priority Lists",    ["noMerge"] = false,    ["width"] = 1,   },   {    ["subOptions"] = {     {      ["type"] = "input",      ["useDesc"] = true,      ["width"] = 2,      ["desc"] = "Name of the player, that shall be assigned. The higher the player on the top is, the more likely it is to be picked.",      ["key"] = "playerName",      ["default"] = "",      ["name"] = "Player Name",      ["length"] = 10,      ["multiline"] = false,      ["useLength"] = false,     },    },    ["type"] = "group",    ["useDesc"] = false,    ["nameSource"] = 1,    ["width"] = 1,    ["useCollapse"] = false,    ["key"] = "QuasarPriority",    ["name"] = "Quasar Priority",    ["hideReorder"] = false,    ["limitType"] = "none",    ["groupType"] = "array",    ["collapse"] = false,    ["size"] = 10,   },   {    ["subOptions"] = {     {      ["type"] = "input",      ["useDesc"] = true,      ["width"] = 2,      ["desc"] = "Name of the player, that shall be assigned. The higher the player on the top is, the more likely it is to be picked.",      ["key"] = "playerName",      ["multiline"] = false,      ["name"] = "Player Name",      ["length"] = 10,      ["default"] = "",      ["useLength"] = false,     },    },    ["type"] = "group",    ["useDesc"] = false,    ["nameSource"] = 1,    ["width"] = 1,    ["useCollapse"] = false,    ["name"] = "Third Core",    ["key"] = "RygelonThirdCore",    ["collapse"] = false,    ["limitType"] = "none",    ["groupType"] = "array",    ["hideReorder"] = false,    ["size"] = 10,   },  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["customText"] = "function()\
  if aura_env.state.progressType == \"timed\" then\
    return string.format(\"%d\", math.ceil(aura_env.state.expirationTime - GetTime()))\
  end\
  \
  return \"\"\
end",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 33,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "update",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "local aura_env = aura_env\
\
aura_env.waves = {\
  -- First Wave\
  {\
    {\
      marker = 6,\
      after = 0,\
      name = \"Melee Left\"\
    },\
    {\
      marker = 4,\
      after = 0,\
      name = \"Melee Right\"\
    },\
    {\
      marker = 3,\
      after = 0,\
      name = \"Left\"\
    },\
    {\
      marker = 7,\
      after = 0,\
      name = \"Right\"\
    }\
  },\
  \
  -- Second Wave\
  -- ...\
}\
\
aura_env.swapWavePauseDuration = 4\
aura_env.currentWave = 0\
aura_env.positionAssignment = 0\
aura_env.darkEclipseDebuff = 361548\
aura_env.darkEclipseCount = 4\
aura_env.debuffedPlayers = {}\
aura_env.wasAssigned = {}\
\
-- Debug with RDruid (Rejuvenation)\
-- aura_env.darkEclipseDebuff = 774\
\
function aura_env.CloneTable(t)\
  -- Can only flat clone, but is enough for this case\
  local r = {}\
  \
  for key, value in pairs(t) do\
    r[key] = value\
  end\
  \
  return r\
end\
\
function aura_env.getRotationIndex(current, count)\
  return ((current-1)%count)+1\
end\
\
function aura_env.sortPlayers(playerList, priorityName)\
  priorityName = priorityName or \"QuasarPriority\"\
  local priorityList = EchoUtil:GetPriorityList(priorityName)\
  local counter = 1000000\
  \
  local function GetNextCounter()\
    counter = counter + 1\
    return counter\
  end\
  \
  table.sort(playerList, function(a, b)\
      -- Auto assign priority, if not in priorityList from eassign\
      priorityList[a] = priorityList[a] or GetNextCounter()\
      priorityList[b] = priorityList[b] or GetNextCounter()\
      \
      return priorityList[a] < priorityList[b]\
  end)\
end",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = 365872,     ["auranames"] = {      "Dark Eclipse",     },     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["subeventPrefix"] = "SPELL",     ["spellIds"] = {     },     ["debuffType"] = "HARMFUL",     ["names"] = {     },     ["use_genericShowOn"] = true,     ["subeventSuffix"] = "_CAST_START",     ["custom"] = "function(allstates, event, ...)\
  if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...\
    if subEvent == \"SPELL_AURA_APPLIED\" and spellID and spellID == aura_env.darkEclipseDebuff then\
      local now = GetTime()\
      aura_env.lastApplication = aura_env.lastApplication or 0\
      \
      if (now - aura_env.lastApplication) >= aura_env.swapWavePauseDuration then\
        -- New Wave!\
        aura_env.currentWave = aura_env.currentWave + 1\
        aura_env.positionAssignment = 0\
        aura_env.debuffedPlayers = {}\
      end\
      \
      aura_env.lastApplication = now\
      \
      aura_env.positionAssignment = aura_env.positionAssignment + 1\
      table.insert(aura_env.debuffedPlayers, destName)\
      \
      if aura_env.positionAssignment == aura_env.darkEclipseCount then      \
        -- Sort using GetPriority List\
        aura_env.sortPlayers(aura_env.debuffedPlayers)\
        \
        local rotationIndex = aura_env.getRotationIndex(aura_env.currentWave, #aura_env.waves)\
        local rotation = aura_env.waves[rotationIndex]\
        \
        local updated = false\
        for positionIndex, playerName in ipairs(aura_env.debuffedPlayers) do\
          -- local positionIndex = aura_env.getRotationIndex(aura_env.positionAssignment, #rotation)\
          local position = rotation[positionIndex]\
          \
          if UnitIsUnit(playerName, \"player\") then\
            allstates[\":\"] = {\
              show = true,\
              changed = true,\
              name = playerName,\
              progressType = position.after > 0 and \"timed\" or \"static\",\
              duration = position.after,\
              expirationTime = now + position.after,\
              value = 0,\
              total = 1,\
              autoHide = true,\
              marker = string.format(\"\", position.marker),\
              positionName = position.name,\
            }\
            \
            updated = true\
          end\
          \
          C_Timer.After(0, function()\
              WeakAuras.ScanEvents(\"ECHO_RYGELON_DARKECLIPSE_ASSIGNED\", playerName, position.name, position.after)\
          end)\
        end\
        \
        local waveNo = aura_env.currentWave % 3\
        if waveNo == 1  or waveNo == 2 then \
          local soaks = {\
            [1] = \"FAR\",  \
            [2] = \"MID\",\
          }\
          \
          local timers = {\
            [1] = \"16\",\
            [2] = \"3\"\
          }\
          \
          local currentWave = aura_env.currentWave\
          \
          local coreSoakers\
          if waveNo == 1 then\
            aura_env.wasAssigned = {}\
            \
            coreSoakers = aura_env.CloneTable(aura_env.debuffedPlayers)\
            aura_env.sortPlayers(coreSoakers, \"RygelonThirdCore\")\
            \
            -- Hot Stuff in here\
            if UnitExists(\"Rycntwo\") then\
              coreSoakers[2] = \"Rycntwo\"\
            end\
            \
            aura_env.wasAssigned[coreSoakers[1]] = true\
            aura_env.wasAssigned[coreSoakers[2]] = true\
          elseif waveNo == 2 then\
            for _, playerName in ipairs(aura_env.debuffedPlayers) do\
              aura_env.wasAssigned[playerName] = true\
            end\
            \
            local priorityList = EchoUtil:GetPriorityList(\"RygelonThirdCore\")\
            local availablePlayers = {}\
            for playerName, priority in pairs(priorityList) do\
              if not aura_env.wasAssigned[playerName] then\
                table.insert(availablePlayers, playerName)\
              end\
            end\
            \
            aura_env.sortPlayers(availablePlayers, \"RygelonThirdCore\")\
            coreSoakers = aura_env.CloneTable(availablePlayers)\
          end\
          \
          for i=1,2 do              \
            C_Timer.After(0, function()\
                WeakAuras.ScanEvents(\"ECHO_RYGELON_DARKECLIPSE_SOAK\", coreSoakers[i], soaks[i], waveNo, timers[waveNo])\
            end)\
          end\
        end\
        \
        return updated\
      end\
    elseif subEvent == \"SPELL_AURA_REMOVED\" and spellID and spellID == aura_env.darkEclipseDebuff then\
      WeakAuras.ScanEvents(\"ECHO_RYGELON_DARKECLIPSE_RELEASED\", destName)\
      \
      if UnitIsUnit(destName, \"player\") and allstates[\":\"] then\
        allstates[\":\"] = {\
          show = false,\
          changed = true\
        }\
        \
        return true\
      end\
    end\
  elseif event == \"ENCOUNTER_START\" then\
    aura_env.currentWave = 0\
    aura_env.positionAssignment = 0\
  elseif event == \"OPTIONS\" then\
    allstates[\"options\"] = {\
      show = true,\
      changed = true,\
      name = UnitName(\"player\"),\
      progressType = \"timed\",\
      duration = 5,\
      expirationTime = GetTime() + 5,\
      autoHide = true,\
      marker = string.format(\"\", 8),\
      positionName = \"Front Left\"\
    }\
    \
    return true\
  end\
end",     ["use_spellName"] = true,     ["spellName"] = 0,     ["useExactSpellId"] = false,     ["type"] = "custom",     ["use_absorbHealMode"] = true,     ["auraspellids"] = {      "368524",     },     ["use_unit"] = true,     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["useName"] = true,     ["realSpellName"] = 0,     ["use_spellId"] = true,     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED, ENCOUNTER_START",     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["unit"] = "player",     ["use_track"] = true,     ["customVariables"] = "{\
  expirationTime = true,\
  progressType = {\
    display = \"Progress Type\",\
    type = \"select\",\
    values = {\
      [\"timed\"] = \"Timed\",\
      [\"static\"] = \"Static\"\
    }\
  },\
  marker = {\
    display = \"Marker\",\
    type = \"select\",\
    values = {\
      [1] = \"Star\",\
      [2] = \"Circle\",\
      [3] = \"Diamond\",\
      [4] = \"Triangle\",\
      [5] = \"Moon\",\
      [6] = \"Square\",\
      [7] = \"Cross\",\
      [8] = \"Skull\"\
    }\
  },\
  countdown = {\
    display = \"Play Sound Countdown\",\
    type = \"bool\",\
    test = function(state, needle)\
      return aura_env.config.countdown == (needle == 1)\
    end\
  },\
  countdownDuration = {\
    display = \"Countdown Duration\",\
    type = \"number\",\
    test = function(state, needle, operator)\
      local value = aura_env.config.duration\
      needle = tonumber(needle)\
      \
      if operator == \"<\" then\
        return value < needle\
      elseif operator == \"<=\" then\
        return value <= needle\
      elseif operator == \"=\" then\
        return value == needle\
      elseif operator == \">=\" then\
        return value >= needle\
      elseif opertor == \">\" then\
        return value > needle\
      elseif operator == \"!=\" then\
        return value ~= needle\
      end\
      \
      return false\
    end\
  }\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["wordWrap"] = "WordWrap",  ["displayText_format_marker_format"] = "none",  ["desaturate"] = false,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 55,  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["use_never"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2549",   ["class"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,  },  ["fixedWidth"] = 200,  ["displayText_format_positionName_format"] = "none",  ["fontSize"] = 30,  ["xOffset"] = 0,  ["selfPoint"] = "TOP",  ["shadowXOffset"] = 1,  ["config"] = {   ["RygelonThirdCore"] = {    {     ["playerName"] = "Brandux",    },    {     ["playerName"] = "Brewdux",    },    {     ["playerName"] = "Dradux",    },   },   ["duration"] = 4,   ["countdown"] = false,   ["QuasarPriority"] = {    {     ["playerName"] = "Dradux",    },    {     ["playerName"] = "Brewdux",    },    {     ["playerName"] = "Brandux",    },   },  },  ["color"] = {   1,   1,   1,   1,  },  ["anchorFrameType"] = "SCREEN",  ["regionType"] = "text",  ["alpha"] = 1,  ["cooldownEdge"] = false,  ["auto"] = true,  ["stickyDuration"] = false,  ["justify"] = "CENTER",  ["displayText_format_p_time_precision"] = 1,  ["zoom"] = 0,  ["displayText"] = "%positionName\
%c",  ["cooldownTextDisabled"] = false,  ["semver"] = "1.0.4",  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygelon - Dark Eclipse Assignment",  ["url"] = "",  ["frameStrata"] = 1,  ["width"] = 55,  ["conditions"] = {   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "progressType",       ["value"] = "timed",       ["op"] = "==",      },      {       ["trigger"] = 1,       ["variable"] = "countdown",       ["value"] = 1,      },      {       ["trigger"] = 1,       ["variable"] = "countdownDuration",       ["value"] = "5",       ["op"] = ">=",      },      {       ["trigger"] = 1,       ["variable"] = "expirationTime",       ["value"] = "5",       ["op"] = "<=",      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\David\\5.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "progressType",       ["op"] = "==",       ["value"] = "timed",      },      {       ["trigger"] = 1,       ["variable"] = "countdown",       ["value"] = 1,      },      {       ["trigger"] = 1,       ["variable"] = "countdownDuration",       ["op"] = ">=",       ["value"] = "4",      },      {       ["trigger"] = 1,       ["variable"] = "expirationTime",       ["op"] = "<=",       ["value"] = "4",      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\David\\4.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "progressType",       ["value"] = "timed",       ["op"] = "==",      },      {       ["trigger"] = 1,       ["variable"] = "countdown",       ["value"] = 1,      },      {       ["trigger"] = 1,       ["variable"] = "countdownDuration",       ["value"] = "3",       ["op"] = ">=",      },      {       ["trigger"] = 1,       ["variable"] = "expirationTime",       ["value"] = "3",       ["op"] = "<=",      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\David\\3.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "progressType",       ["op"] = "==",       ["value"] = "timed",      },      {       ["trigger"] = 1,       ["variable"] = "countdown",       ["value"] = 1,      },      {       ["trigger"] = 1,       ["variable"] = "countdownDuration",       ["op"] = ">=",       ["value"] = "2",      },      {       ["trigger"] = 1,       ["variable"] = "expirationTime",       ["op"] = "<=",       ["value"] = "2",      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\David\\2.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "progressType",       ["value"] = "timed",       ["op"] = "==",      },      {       ["trigger"] = 1,       ["variable"] = "countdown",       ["value"] = 1,      },      {       ["trigger"] = 1,       ["variable"] = "countdownDuration",       ["value"] = "1",       ["op"] = ">=",      },      {       ["trigger"] = 1,       ["variable"] = "expirationTime",       ["value"] = "1",       ["op"] = "<=",      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\David\\1.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },  },  ["uid"] = "Z76Ygb625)k",  ["inverse"] = false,  ["shadowYOffset"] = -1,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["displayIcon"] = "",  ["cooldown"] = true,  ["icon"] = true, }, ["(10) Echo Public - Rygelon - Cores 3 Soak Assignment"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["customText"] = "function()\
  if aura_env.state.progressType == \"timed\" then\
    return string.format(\"%d\", math.ceil(aura_env.state.expirationTime - GetTime()))\
  end\
  \
  return \"\"\
end",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 31,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "update",  ["url"] = "",  ["icon"] = true,  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = 365872,     ["auranames"] = {      "Dark Eclipse",     },     ["use_genericShowOn"] = true,     ["genericShowOn"] = "showOnCooldown",     ["unit"] = "player",     ["subeventSuffix"] = "_CAST_START",     ["spellIds"] = {     },     ["debuffType"] = "HARMFUL",     ["names"] = {     },     ["use_absorbMode"] = true,     ["events"] = "ENCOUNTER_START, ECHO_RYGELON_DARKECLIPSE_SOAK",     ["use_spellId"] = true,     ["spellName"] = 0,     ["custom_type"] = "stateupdate",     ["type"] = "custom",     ["use_absorbHealMode"] = true,     ["auraspellids"] = {      "368524",     },     ["useName"] = true,     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["use_unit"] = true,     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["custom"] = "-- ENCOUNTER_START, ECHO_RYGELON_DARKECLIPSE_SOAK\
function(allstates, event, playerName, soak, wave, after)\
  if event == \"ECHO_RYGELON_DARKECLIPSE_SOAK\" and playerName and soak then\
    if UnitIsUnit(playerName, \"player\") then\
      local duration = 10\
      \
      allstates[\":\"] = {\
        show = true,\
        changed = true,\
        name = soak,\
        progressType = \"timed\",\
        duration = after + duration,\
        expirationTime = GetTime() + (after + duration),\
        autoHide = true,\
        playSound = aura_env.config.playSound,\
        core = (wave == 1) and \"2nd\" or \"3rd\"\
      }\
      \
      return true\
    end\
  elseif event == \"OPTIONS\" then\
    allstates[\"options\"] = {\
      show = true,\
      changed = true,\
      name = \"MID\",\
      progressType = \"timed\",\
      duration = 15,\
      expirationTime = GetTime() + 15,\
      autoHide = true,\
      core = \"3rd\"\
    }\
    \
    return true\
  end\
end",     ["useExactSpellId"] = false,     ["check"] = "event",     ["subeventPrefix"] = "SPELL",     ["use_track"] = true,     ["customVariables"] = "{\
  expirationTime = true,\
  playSound = \"bool\"\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["selfPoint"] = "TOP",  ["displayText"] = "SOAK %core %n",  ["displayText_format_marker_format"] = "none",  ["cooldown"] = true,  ["desaturate"] = false,  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["value"] = "10",     ["op"] = ">",    },    ["changes"] = {     {      ["value"] = {       0.70196078431373,       0.094117647058824,       0.11372549019608,       0,      },      ["property"] = "color",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["op"] = "<=",     ["checks"] = {      {       ["trigger"] = -2,       ["variable"] = "AND",       ["checks"] = {        {         ["trigger"] = 1,         ["variable"] = "playSound",         ["value"] = 1,        },        {         ["trigger"] = 1,         ["variable"] = "expirationTime",         ["value"] = "10",         ["op"] = "<=",        },       },      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RingingPhone.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },  },  ["font"] = "Friz Quadrata TT",  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 55,  ["shadowYOffset"] = 0,  ["load"] = {   ["use_encounterid"] = true,   ["use_never"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2549",   ["size"] = {    ["multi"] = {    },   },  },  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "playSound",    ["useDesc"] = false,    ["default"] = true,    ["name"] = "Play Sound",    ["width"] = 2,   },  },  ["displayText_format_core_format"] = "none",  ["fontSize"] = 30,  ["displayIcon"] = "",  ["displayText_format_n_format"] = "none",  ["shadowXOffset"] = 0,  ["justify"] = "CENTER",  ["width"] = 55,  ["frameStrata"] = 1,  ["regionType"] = "text",  ["uid"] = "HqsL)uPdPKM",  ["actions"] = {   ["start"] = {   },   ["init"] = {    ["do_custom"] = false,    ["custom"] = "",   },   ["finish"] = {   },  },  ["zoom"] = 0,  ["semver"] = "1.0.4",  ["automaticWidth"] = "Auto",  ["displayText_format_p_time_precision"] = 1,  ["cooldownEdge"] = false,  ["wordWrap"] = "WordWrap",  ["cooldownTextDisabled"] = false,  ["auto"] = true,  ["tocversion"] = 90200,  ["id"] = "(10) Echo Public - Rygelon - Cores 3 Soak Assignment",  ["displayText_format_positionName_format"] = "none",  ["alpha"] = 1,  ["anchorFrameType"] = "SCREEN",  ["stickyDuration"] = false,  ["config"] = {   ["playSound"] = false,  },  ["inverse"] = false,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["xOffset"] = 0, }, ["(10) Echo Public - SOFO - Rygelon"] = {  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["borderBackdrop"] = "Blizzard Tooltip",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["scale"] = 1,  ["information"] = {  },  ["border"] = false,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 7,  ["authorOptions"] = {  },  ["borderColor"] = {   0,   0,   0,   1,  },  ["uid"] = "mc9K0)wEAWz",  ["yOffset"] = 0,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["subeventPrefix"] = "SPELL",     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["names"] = {     },     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["xOffset"] = 0,  ["internalVersion"] = 50,  ["config"] = {  },  ["selfPoint"] = "CENTER",  ["id"] = "(10) Echo Public - SOFO - Rygelon",  ["borderOffset"] = 4,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["tocversion"] = 90200,  ["borderInset"] = 1,  ["borderSize"] = 2,  ["subRegions"] = {  },  ["regionType"] = "group",  ["conditions"] = {  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },  },  ["borderEdge"] = "Square Full White", },});
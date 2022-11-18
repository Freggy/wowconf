local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({
   [" SoD - 10 - Sylvanas Windrunner - Dispell List"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = "SoD - 10 - Sylvanas Windrunner DG",
      ["displayText"] = "%dude - %dispeler",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["displayText_format_p_time_format"] = 0,
      ["displayText_format_dispeler_color"] = "class",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"ECHO_SYLV_DISPEL_ASSIGNED\")then\
        local dude,dispeler = ...;\
        if(dude)then\
            allstates[dude] =\
            {\
                show = true,\
                changed = true,\
                progressType = \"static\",\
                total = 1,\
                value = 1,\
                missing = missing,\
                dude = dude,\
                dispeler = dispeler,\
            };\
            return true;\
        end\
    elseif(event == \"ECHO_SYLV_DISPELED\")then\
        local dude = ...;\
        if(dude)then\
            local state = allstates[dude];\
            if(state)then\
                state.changed = true;\
                state.show = false;\
                \
                return true;\
            end\
        end\
    end\
end",
               ["spellIds"] = {
               },
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["names"] = {
               },
               ["events"] = "ECHO_SYLV_DISPELED ECHO_SYLV_DISPEL_ASSIGNED",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["displayText_format_dude_format"] = "Unit",
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Requires  SoD - 10 - Sylvanas Windrunner - Curse Dispell Assignment ",
      ["displayText_format_dispeler_abbreviate_max"] = 8,
      ["font"] = "Accidental Presidency",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["displayText_format_dude_abbreviate"] = false,
      ["displayText_format_dude_color"] = "class",
      ["displayText_format_dispeler_decimal_precision"] = 1,
      ["fontSize"] = 30,
      ["shadowXOffset"] = 1,
      ["displayText_format_dude_abbreviate_max"] = 8,
      ["authorOptions"] = {
      },
      ["displayText_format_dispeler_abbreviate"] = false,
      ["regionType"] = "text",
      ["conditions"] = {
      },
      ["displayText_format_dispeler_realm_name"] = "never",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_dude_realm_name"] = "never",
      ["shadowYOffset"] = -1,
      ["displayText_format_p_time_precision"] = 1,
      ["uid"] = "ie86RzPfWHq",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["wordWrap"] = "WordWrap",
      ["justify"] = "LEFT",
      ["displayText_format_dispeler_format"] = "Unit",
      ["id"] = " SoD - 10 - Sylvanas Windrunner - Dispell List",
      ["xOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["customTextUpdate"] = "event",
      ["config"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["displayText_format_target_format"] = "none",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
   },
   ["SoD - 08 - Fatescribe Roh-Kalo main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 08 - Fatescribe Roh-Kalo",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["groupIcon"] = "4062732",
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["yOffset"] = 0,
      ["borderInset"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["config"] = {
      },
      ["internalVersion"] = 53,
      ["authorOptions"] = {
      },
      ["selfPoint"] = "CENTER",
      ["id"] = "SoD - 08 - Fatescribe Roh-Kalo main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "Fatescribe Roh-Kalo main Group",
      ["xOffset"] = 0,
      ["uid"] = "gBZqXzRjSRM",
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
   ["SoD - 07 - Guardian of the First Ones - Boss3 Energy "] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.soak)then\
        if(aura_env.state.soak == 1)then\
            return \"MIDDLE\";\
        elseif(aura_env.state.soak == 2)then\
            return \"LEFT\";\
        else\
            return \"RIGHT\";\
        end\
    else\
        return \"LEFT?\";\
    end\
end\
\
\
\
",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "unit",
               ["subeventSuffix"] = "_CAST_START",
               ["use_absorbMode"] = true,
               ["event"] = "Power",
               ["names"] = {
               },
               ["use_specific_unit"] = true,
               ["spellIds"] = {
               },
               ["specificUnit"] = "boss2",
               ["use_unit"] = true,
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "boss3",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0.93725490196078,
         0.70980392156863,
         0,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["anchorXOffset"] = 0,
            ["type"] = "subtext",
            ["text_anchorXOffset"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 16,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "2",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_text_format_unit_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_n_format"] = "none",
         },
         {
            ["border_size"] = 2,
            ["border_anchor"] = "bar",
            ["type"] = "subborder",
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_offset"] = 0,
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2436",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 07 - Guardian of the First Ones DG",
      ["desc"] = "Simple power display for boss3\
",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["xOffset"] = 0,
      ["config"] = {
      },
      ["icon_side"] = "RIGHT",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["zoom"] = 0,
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["anchorFrameType"] = "SCREEN",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["width"] = 201,
      ["id"] = "SoD - 07 - Guardian of the First Ones - Boss3 Energy ",
      ["uid"] = "MIHxHcqGj5n",
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 05 - Soulrender Dormazain DG - Chain List"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    if(aura_env.state)then\
        local fucked = aura_env.state.fucked;\
        local position = aura_env.state.position;\
        \
        if(fucked == true)then\
            return \"FUCKED\";\
        else\
            local position = aura_env.state.position;\
            if(position)then\
                if(position == 1)then\
                    return \"LEFT\";\
                elseif(position == 2)then\
                    return \"MIDDLE\";\
                elseif(position ==3)then\
                    return \"RIGHT\";\
                end\
            end\
        end\
        return \"123\"; \
    end\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["showClones"] = true,
               ["type"] = "aura2",
               ["auraspellids"] = {
                  "348987",
               },
               ["group_countOperator"] = ">",
               ["event"] = "Health",
               ["unit"] = "raid",
               ["subeventSuffix"] = "_CAST_START",
               ["useExactSpellId"] = true,
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["group_count"] = "0",
               ["subeventPrefix"] = "SPELL",
               ["useGroup_count"] = true,
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         0.98039215686275,
         0.54901960784314,
         0.32941176470588,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text_format_1.p_time_legacy_floor"] = true,
            ["text_text_format_1.p_time_mod_rate"] = true,
            ["text_text_format_p_format"] = "timed",
            ["anchorXOffset"] = 0,
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_1.p_time_format"] = 0,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["text_text_format_1.p_time_precision"] = 1,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_text_format_p_time_format"] = 0,
            ["text_text_format_1.p_time_dynamic_threshold"] = 60,
            ["type"] = "subtext",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_visible"] = true,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_unit_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_text_format_1.p_format"] = "timed",
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%1.p",
            ["text_fontSize"] = 18,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["rotateText"] = "NONE",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text_format_1.unit_abbreviate"] = false,
            ["text_text"] = "%1.unit",
            ["text_text_format_1.unit_abbreviate_max"] = 8,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "LEFT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_text_format_1.unit_color"] = "class",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_fontType"] = "OUTLINE",
            ["text_shadowYOffset"] = -1,
            ["text_text_format_unit_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_1.unit_format"] = "Unit",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_1.unit_realm_name"] = "never",
         },
         {
            ["border_size"] = 2,
            ["border_anchor"] = "bar",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["type"] = "subborder",
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2434",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 05 - Soulrender Dormazain DG",
      ["desc"] = "Lists all current Chains. ",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["xOffset"] = 0,
      ["uid"] = "UeUhYj3Li8s",
      ["icon_side"] = "RIGHT",
      ["config"] = {
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Minimalist",
      ["width"] = 200,
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "SoD - 05 - Soulrender Dormazain DG - Chain List",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   ["SoD - 04 - Remnant of Ner'zhul - Spite P3"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["customVariables"] = "{\
    text = \"string\",\
    expirationTime = true,\
}",
               ["debuffType"] = "HELPFUL",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "boss",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(spellID == 354441)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                \
                allstates[0] = \
                {\
                    changed = true,\
                    show = true,\
                    progressType = \"timed\",\
                    duration = 15,\
                    expirationTime = GetTime() + 15,\
                    autoHide = true,\
                    text = \"Next\",\
                };\
                \
                \
                aura_env.ticker = C_Timer.NewTicker(15,function() WeakAuras.ScanEvents(\"SPITE_AGANE_P3\",true) end);\
            else\
                \
                if(aura_env.ticker)then\
                    aura_env.ticker:Cancel();\
                    aura_env.ticker = nil;\
                end\
                \
                for _,state in pairs(allstates)do\
                    state.changed = true;\
                    state.show = false;\
                end    \
            end\
            \
            return true;\
        end\
    elseif(event == \"SPITE_AGANE_P3\")then\
        local notFake = ...;\
        if(notFake)then\
            \
            allstates[1] = \
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = 6,\
                expirationTime = GetTime() + 6,\
                autoHide = true,\
                index = 1,\
                text = \"Safe\",\
            };\
            \
            allstates[0] = \
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = 15,\
                expirationTime = GetTime() + 15,\
                autoHide = true,\
                index = 0,\
                text = \"Next\",\
            };\
            \
            \
            return true; \
        end       \
        \
    elseif(event == \"ENCOUNTER_END\" or event == \"OPTIONS\")then\
        if(aura_env.ticker)then\
            aura_env.ticker:Cancel();\
            aura_env.ticker = nil;\
        end\
    end\
end\
\
\
",
               ["spellIds"] = {
               },
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED,SPITE_AGANE_P3,ENCOUNTER_END",
               ["check"] = "event",
               ["names"] = {
               },
               ["custom_type"] = "stateupdate",
               ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0,
         1,
         0.65999999642372,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["border_offset"] = 0,
            ["border_anchor"] = "bar",
            ["border_size"] = 2,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["type"] = "subborder",
         },
         {
            ["text_text_format_n_format"] = "none",
            ["text_text"] = "%p",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_shadowXOffset"] = 1,
            ["anchorXOffset"] = 0,
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_fontType"] = "OUTLINE",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 16,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%text",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "LEFT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_visible"] = true,
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_text_format"] = "none",
         },
      },
      ["height"] = 26,
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2432",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 04 - Remnant of Ner'zhul DG",
      ["desc"] = "Spite, raid damage, timers",
      ["icon"] = false,
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "if(aura_env.state and aura_env.state.text == \"Boom\")then\
    aura_env.region:Color(1,0,0,0.66);\
end\
\
\
",
            ["do_sound"] = false,
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "if(aura_env.ticker)then\
    aura_env.ticker:Cancel();\
    aura_env.ticker = nil;\
end",
         },
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["authorOptions"] = {
      },
      ["sparkOffsetX"] = 0,
      ["icon_side"] = "RIGHT",
      ["config"] = {
      },
      ["zoom"] = 0,
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["width"] = 200,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "SoD - 04 - Remnant of Ner'zhul - Spite P3",
      ["uid"] = "VaG)cKrmiZu",
      ["inverse"] = false,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "==",
               ["value"] = "Safe",
               ["variable"] = "text",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0,
                     0,
                     0.65000000596046,
                  },
                  ["property"] = "barColor",
               },
               {
                  ["value"] = true,
                  ["property"] = "inverse",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = -2,
               ["variable"] = "AND",
               ["checks"] = {
                  {
                     ["trigger"] = 1,
                     ["op"] = "==",
                     ["variable"] = "text",
                     ["value"] = "Next",
                  },
                  {
                     ["trigger"] = 1,
                     ["op"] = "<",
                     ["variable"] = "expirationTime",
                     ["value"] = "1",
                  },
               },
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
                     ["sound_channel"] = "Music",
                  },
                  ["property"] = "sound",
               },
            },
         },
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   [" SoD - 10 - Sylvanas Windrunner Veil DG"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         " SoD - 10 - Sylvanas Windrunner - Veil of Darkness List",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["yOffset"] = 161.10021972656,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["rowSpace"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["radius"] = 200,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["align"] = "CENTER",
      ["desc"] = "Sylvanas Windrunner Dynamic Group for Veil of Darkness\
",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["customSort"] = "function(t1,t2)\
    local ts1 = t1.region.state;\
    local ts2 = t2.region.state;\
    \
    if(ts1.tooltip2 and ts2.tooltip2)then\
        return ts1.tooltip2 > ts2.tooltip2;\
    end\
    \
    return WeakAuras.SortGreaterLast(t1,t2);\
end\
\
\
",
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["animate"] = false,
      ["space"] = 2,
      ["scale"] = 1,
      ["useLimit"] = true,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "custom",
      ["fullCircle"] = true,
      ["xOffset"] = 282.60046386719,
      ["parent"] = "SoD - 10 - Sylvanas Windrunner main Group",
      ["uid"] = "WPKINFirzqu",
      ["constantFactor"] = "RADIUS",
      ["arcLength"] = 360,
      ["borderOffset"] = 4,
      ["borderInset"] = 1,
      ["gridWidth"] = 5,
      ["id"] = " SoD - 10 - Sylvanas Windrunner Veil DG",
      ["limit"] = 3,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["internalVersion"] = 53,
      ["config"] = {
      },
      ["selfPoint"] = "TOP",
      ["groupIcon"] = 4062738,
      ["gridType"] = "RD",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["rotation"] = 0,
   },
   [" SoD - 05 - Soulrender Dormazain"] = {
      ["controlledChildren"] = {
         "  SoD - 05 - Soulrender Dormazain - Paladin Beacon",
         "SoD - 05 - Soulrender Dormazain Go to Chain Break",
         "SoD - 05 - Soulrender Dormazain Chain Broken David",
         "SoD - 05 - Soulrender Dormazain - CC Assigment",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["oName"] = "SoD - 05 - Soulrender Dormazain",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["names"] = {
               },
               ["event"] = "Health",
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "Soulrender Dormazain non-Dynamic Group",
      ["subRegions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["mVersion"] = 2,
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["selfPoint"] = "CENTER",
      ["borderOffset"] = 4,
      ["authorOptions"] = {
      },
      ["tocversion"] = 90100,
      ["id"] = " SoD - 05 - Soulrender Dormazain",
      ["echoVersion"] = 4,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["borderInset"] = 1,
      ["config"] = {
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["uid"] = "lgRRcSAiwe7",
      ["groupIcon"] = 4062737,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["parent"] = "SoD - 05 - Soulrender Dormazain main Group",
   },
   [" SoD - 04 - Remnant of Ner'zhul DG"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         "SoD - 04 - Remnant of Ner'zhul - Malevolence Timer",
         "SoD - 04 - Remnant of Ner'zhul - Malevolence",
         "SoD - 04 - Remnant of Ner'zhul - Spite P2",
         "SoD - 04 - Remnant of Ner'zhul - Spite P3",
         "SoD - 04 - Remnant of Ner'zhul - Spite P4",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "SoD - 04 - Remnant of Ner'zhul main Group",
      ["yOffset"] = 230.99975585938,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["fullCircle"] = true,
      ["space"] = 2,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["radius"] = 200,
      ["useLimit"] = false,
      ["align"] = "LEFT",
      ["desc"] = "Remnant of Ner'zhul Dynamic Auras.",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["oName"] = "SoD - 03 - Remnant of Ner'zhul DG",
      ["rotation"] = 0,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["customSort"] = "function(t1,t2)\
    local state1 = t1.region.state;\
    local state2 = t2.region.state;\
    \
    if(t1.dataIndex ~= t2.dataIndex)then\
        return t1.dataIndex < t2.dataIndex;\
    end\
    \
    if(state1.sortKey and state2.sortKey)then\
        return state1.sortKey < state2.sortKey;\
    end\
    \
    return WeakAuras.SortGreaterLast(t1,t2);\
end",
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["animate"] = false,
      ["xOffset"] = -600,
      ["scale"] = 1,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "custom",
      ["borderInset"] = 1,
      ["limit"] = 5,
      ["internalVersion"] = 53,
      ["gridWidth"] = 5,
      ["constantFactor"] = "RADIUS",
      ["gridType"] = "RD",
      ["borderOffset"] = 4,
      ["arcLength"] = 360,
      ["tocversion"] = 90100,
      ["id"] = " SoD - 04 - Remnant of Ner'zhul DG",
      ["config"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["authorOptions"] = {
      },
      ["uid"] = "Fd3YkKt)vWj",
      ["groupIcon"] = 4062736,
      ["rowSpace"] = 1,
      ["mVersion"] = 4,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["selfPoint"] = "TOPLEFT",
   },
   ["SoD - 04 - Remnant of Ner'zhul - Spite P2"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["xOffset"] = 0,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "if(aura_env.state and aura_env.state.text == \"Boom\")then\
    aura_env.region:Color(1,0,0,0.66);\
end\
\
\
",
            ["do_sound"] = false,
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "if(aura_env.ticker)then\
    aura_env.ticker:Cancel();\
    aura_env.ticker = nil;\
end",
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["custom_type"] = "stateupdate",
               ["custom_hide"] = "timed",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["names"] = {
               },
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(spellID == 354439)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                \
                allstates[0] = \
                {\
                    changed = true,\
                    show = true,\
                    progressType = \"timed\",\
                    duration = 15,\
                    expirationTime = GetTime() + 15,\
                    autoHide = true,\
                    text = \"Next\",\
                };\
                \
                aura_env.ticker = C_Timer.NewTicker(15,function() WeakAuras.ScanEvents(\"SPITE_AGANE_P2\",true) end);\
            else\
                if(aura_env.ticker)then\
                    aura_env.ticker:Cancel();\
                    aura_env.ticker = nil;\
                end\
                \
                for _,state in pairs(allstates)do\
                    state.changed = true;\
                    state.show = false;\
                end    \
            end\
            \
            return true;\
        end\
    elseif(event == \"SPITE_AGANE_P2\")then\
        local notFake = ...;\
        if(notFake)then\
            \
            allstates[1] = \
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = 3,\
                expirationTime = GetTime() + 3,\
                autoHide = true,\
                index = 1,\
                text = \"Safe\",\
            };\
            \
            allstates[0] = \
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = 15,\
                expirationTime = GetTime() + 15,\
                autoHide = true,\
                index = 0,\
                text = \"Next\",\
            };\
            \
            \
            return true; \
        end       \
        \
    elseif(event == \"ENCOUNTER_END\" or event == \"OPTIONS\")then\
        if(aura_env.ticker)then\
            aura_env.ticker:Cancel();\
            aura_env.ticker = nil;\
        end\
    end\
end\
\
\
",
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED,SPITE_AGANE_P2,ENCOUNTER_END",
               ["check"] = "event",
               ["unit"] = "boss",
               ["debuffType"] = "HELPFUL",
               ["customVariables"] = "{\
    text = \"string\",\
    expirationTime = true,\
}",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0,
         1,
         0.65999999642372,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 2,
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "%p",
            ["text_text_format_p_format"] = "timed",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_n_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_visible"] = true,
            ["text_text_format_p_time_format"] = 0,
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%text",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "LEFT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_text_format"] = "none",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
         },
      },
      ["height"] = 26,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2432",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 04 - Remnant of Ner'zhul DG",
      ["desc"] = "Spite, raid damage, timers",
      ["icon"] = false,
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["authorOptions"] = {
      },
      ["iconSource"] = -1,
      ["icon_side"] = "RIGHT",
      ["config"] = {
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["anchorFrameType"] = "SCREEN",
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 04 - Remnant of Ner'zhul - Spite P2",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["width"] = 200,
      ["sparkHidden"] = "NEVER",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["uid"] = "1ttNCXm8289",
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "==",
               ["variable"] = "text",
               ["value"] = "Safe",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0,
                     0,
                     0.65000000596046,
                  },
                  ["property"] = "barColor",
               },
               {
                  ["value"] = true,
                  ["property"] = "inverse",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = -2,
               ["variable"] = "AND",
               ["checks"] = {
                  {
                     ["trigger"] = 1,
                     ["op"] = "==",
                     ["variable"] = "text",
                     ["value"] = "Next",
                  },
                  {
                     ["trigger"] = 1,
                     ["op"] = "<",
                     ["variable"] = "expirationTime",
                     ["value"] = "1",
                  },
               },
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
                     ["sound_channel"] = "Music",
                  },
                  ["property"] = "sound",
               },
            },
         },
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   ["SoD - 05 - Soulrender Dormazain - CC Assigment"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = " SoD - 05 - Soulrender Dormazain",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["customText"] = "function()\
    local marker = aura_env.state.marker or math.random(1,5);\
    if(marker)then\
        if(marker < 10)then\
            return \"{rt\"..marker..\"}\"\
        else\
            return \"AOE\";\
        end\
    end\
end",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "local aura_env = aura_env;\
aura_env.updateIndexTarget = 0;\
\
local logPrefix = \"SoulCC\";\
function aura_env.log(...)\
    EchoInternal:RemoteLog(logPrefix,...);\
end\
\
function aura_env.logl(...)\
    if(UnitIsGroupLeader(\"player\"))then\
        EchoInternal:RemoteLog(logPrefix,...);\
    end\
end\
\
function aura_env.print(...)\
    print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.printError(...)\
    print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.TryReadNote()\
    aura_env.initialized = false;\
    aura_env.rotation = {};\
    \
    local noteData, errorString = EchoInternal:ReadEXRTNote();\
    if(errorString)then\
        aura_env.printError(\"Note parse failed,\",errorString);\
        aura_env.logl(\"Note parsing failed:\",errorString);\
        return;\
    end\
    \
    for _,noteInfo in ipairs(noteData)do\
        if(noteInfo.identifier == \"cc\")then\
            for rotationIdx,rotation in ipairs(noteInfo.rotation)do\
                for _,guy in ipairs(rotation)do\
                    table.insert(aura_env.rotation,guy);\
                end\
            end\
        end\
    end\
    \
    aura_env.logl(\"Init successful:\",#aura_env.rotation);\
    \
    aura_env.initialized = true;\
end\
\
aura_env.markers = {5,6,7,8,10};",
         },
         ["finish"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
            ["do_sound"] = true,
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["debuffType"] = "HELPFUL",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["events"] = "READY_CHECK ENCOUNTER_START EXRT_NOTE_UPDATE CLEU:SPELL_CAST_SUCCESS",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 350615)then\
            for i,guy in ipairs(aura_env.rotation)do\
                if(UnitIsUnit(\"player\",guy))then\
                    allstates[\"\"] = \
                    {\
                        changed = true,\
                        show = true,\
                        autoHide = true,\
                        progressType = \"timed\",\
                        duration = 5.15,\
                        expirationTime = GetTime() + 5.15,\
                        marker = aura_env.markers[i],\
                    };\
                    \
                    return true;\
                end\
            end\
        end\
        \
    elseif((event == \"ENCOUNTER_START\" or event == \"READY_CHECK\") and ...)then\
        if(not aura_env.initialized)then\
            aura_env.TryReadNote();\
        end\
    elseif(event == \"EXRT_NOTE_UPDATE\")then\
        aura_env.updateIndexTarget = aura_env.updateIndexTarget + 1;\
        local upEnv = aura_env;\
        local updateIndexTarget = aura_env.updateIndexTarget;\
        C_Timer.After(1,function()\
                if(upEnv.updateIndexTarget == updateIndexTarget)then\
                    upEnv.TryReadNote();\
                    upEnv.updateIndexTarget = 0;\
                end\
        end);\
    end\
end",
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["unit"] = "player",
               ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_time_mod_rate"] = true,
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = false,
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_zoneIds"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2434",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "2000",
      },
      ["fontSize"] = 45,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["wordWrap"] = "WordWrap",
      ["fixedWidth"] = 200,
      ["displayText_format_p_time_precision"] = 1,
      ["displayText_format_p_format"] = "timed",
      ["displayText_format_p_time_legacy_floor"] = true,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "CENTER",
      ["config"] = {
         ["showGlow"] = true,
         ["glowColor"] = {
            1,
            0.90980392156863,
            0,
            1,
         },
      },
      ["id"] = "SoD - 05 - Soulrender Dormazain - CC Assigment",
      ["xOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["displayText"] = "CC\
%p",
      ["uid"] = "GdGNVPKzb)m",
      ["yOffset"] = 120,
      ["authorOptions"] = {
         {
            ["type"] = "toggle",
            ["useDesc"] = false,
            ["key"] = "showGlow",
            ["name"] = "Show Glow",
            ["default"] = true,
            ["width"] = 1,
         },
         {
            ["type"] = "color",
            ["useDesc"] = false,
            ["key"] = "glowColor",
            ["name"] = "Glow Color",
            ["default"] = {
               1,
               0.90980392156863,
               0,
               1,
            },
            ["width"] = 1,
         },
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["displayText_format_c1_format"] = "none",
   },
   ["SoD - 10 - Sylvanas Windrunner main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         "SoD - 10 - Sylvanas Windrunner",
         "SoD - 10 - Sylvanas Windrunner DG",
         " SoD - 10 - Sylvanas Windrunner Veil DG",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["groupIcon"] = "4062738",
      ["borderInset"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["config"] = {
      },
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["id"] = "SoD - 10 - Sylvanas Windrunner main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "Sylvanas Windrunner main Group",
      ["selfPoint"] = "CENTER",
      ["uid"] = "RX0A2mVwfIe",
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
   ["SoD - 03 - The Nine - Call of the Valkyr"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["xOffset"] = 0,
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.color)then\
        aura_env.region:Color(unpack(aura_env.state.color));\
    end\
end\
\
\
",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "\
\
",
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "local soak = \
{\
    name = \"Soak\",\
    duration = 8,\
    color = {180/255,0,176/255,1},\
    icon = 2103905,\
};\
\
local meteor = \
{\
    name = \"Meteor\",\
    duration = 8,\
    color = {0,118/255,211/255,1},\
    icon = 135988,\
};\
\
local blade = \
{\
    name = \"Blade\",\
    duration = 0,\
    icon = 1376744,\
};\
\
local smallBomb = \
{\
    name = \"Small Bomb\",\
    duration = 6,\
    color = {1,122/255,0,1},\
    icon = 460699,\
};\
\
local bigBomb = \
{\
    name = \"Big Bomb\",\
    duration = 10,\
    color = {144/255,0,6/255,1},\
    icon = 425955,\
};\
\
local shield = \
{\
    name = \"Shield\",\
    duration = 0,\
    icon = 1320371,\
};\
\
aura_env.rotation = \
{\
    {blade,meteor,smallBomb},\
    {soak,bigBomb,shield},\
    {blade,meteor,blade},\
    {soak,smallBomb,meteor},\
    {bigBomb,smallBomb,shield},\
};\
\
aura_env.stage = 1;\
\
function aura_env.callOfTheValkyr(allstates,counter)\
    \
    local rem = counter % #aura_env.rotation;\
    local rotation = aura_env.rotation[rem == 0 and #aura_env.rotation or rem];\
    \
    local diffID = select(3,GetInstanceInfo());\
    local limit = diffID == 16 and 3 or ((aura_env.stage == 1) and 2 or 3);\
    \
    for i=1,limit do \
        \
        local spellInfo = rotation[i];\
        \
        allstates[i] = {\
            changed = true,\
            show = true,\
            color = spellInfo.color,\
            name = spellInfo.name,\
            icon = spellInfo.icon,\
            index = i,\
            progressType = \"static\",\
            total = 1,\
            value = 1\
        };\
        \
    end\
end",
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["custom_type"] = "stateupdate",
               ["debuffType"] = "HELPFUL",
               ["unit"] = "player",
               ["event"] = "Health",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(subEvent == \"SPELL_CAST_SUCCESS\")then\
            if(spellID == 350467)then\
                aura_env.counter = aura_env.counter + 1;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.counter = 1;\
        aura_env.stage = 1;   \
        \
        aura_env.callOfTheValkyr(allstates,1);\
        \
        return true;\
        \
    elseif(event == \"UNIT_SPELLCAST_SUCCEEDED\")then\
        local unit,cast,spellID = ...;\
        if(unit and UnitIsUnit(unit,\"boss1\") and spellID == 350745)then\
            aura_env.stage = 2;\
        end\
    elseif(event == \"UNIT_POWER_UPDATE\")then\
        local unit = ...;\
        if(unit)then\
            local power = UnitPower(unit);\
            if (power >= 65 and power <= 95)then\
                aura_env.callOfTheValkyr(allstates,aura_env.counter);\
                return true;\
            end\
        end\
        \
    elseif(event == \"OPTIONS\")then\
        aura_env.callOfTheValkyr(allstates,math.random(1,#aura_env.rotation));\
        return true;\
        \
    end\
end",
               ["custom_hide"] = "timed",
               ["check"] = "event",
               ["events"] = "CLEU:SPELL_CAST_SUCCESS,ENCOUNTER_START,UNIT_POWER_UPDATE:boss1,UNIT_SPELLCAST_SUCCEEDED:boss1",
               ["subeventSuffix"] = "_CAST_START",
               ["customVariables"] = "{\
    progressType = \"string\",\
}\
\
\
",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["percentpower_operator"] = "<=",
               ["type"] = "unit",
               ["percentpower"] = "30",
               ["use_unit"] = true,
               ["unit"] = "boss1",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["use_specific_unit"] = true,
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["use_absorbMode"] = true,
               ["use_percentpower"] = true,
               ["event"] = "Power",
               ["spellName"] = 0,
               ["use_track"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [3] = {
            ["trigger"] = {
               ["percentpower_operator"] = ">=",
               ["type"] = "unit",
               ["use_track"] = true,
               ["use_specific_unit"] = true,
               ["unit"] = "boss1",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["use_unit"] = true,
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["use_absorbMode"] = true,
               ["use_percentpower"] = true,
               ["event"] = "Power",
               ["debuffType"] = "HELPFUL",
               ["percentpower"] = "65",
               ["spellName"] = 0,
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[1] and (t[2] or t[3]);\
end\
\
\
",
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0.47843137254902,
         0,
         0,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "RIGHT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%n%c",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "LEFT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_n_format"] = "none",
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_c_format"] = "none",
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_size"] = 2,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_offset"] = 0,
         },
      },
      ["height"] = 35,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2429",
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 03 - The Nine - Word of Recall DG",
      ["desc"] = "Call of the Valkyr timers. \
Separate coloured timers for Soak, Shield, Big bomb, Small bomb, Blade, and Meteor. ",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["selfPoint"] = "CENTER",
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["iconSource"] = -1,
      ["config"] = {
      },
      ["icon_side"] = "LEFT",
      ["uid"] = ")RjxIDxAjqs",
      ["zoom"] = 0,
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["width"] = 200,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "SoD - 03 - The Nine - Call of the Valkyr",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["authorOptions"] = {
      },
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "progressType",
               ["value"] = "static",
               ["op"] = "==",
            },
            ["changes"] = {
               {
                  ["value"] = false,
                  ["property"] = "sub.3.text_visible",
               },
            },
         },
      },
      ["information"] = {
      },
      ["icon"] = true,
   },
   [" SoD - 09 - Kel'Thuzad"] = {
      ["controlledChildren"] = {
         "SoD - 09 - Kel'Thuzad - Kill Adds",
         "SoD - 09 - Kel'Thuzad - Scripe Trigger",
         "SoD - 09 - Kel'Thuzad - Scripe Bar",
         "SoD - 09 - Kel'Thuzad - Fixate - Nameplate Glow",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 3,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["desc"] = "Kel'Thuzad non-Dynamic Group",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["tocversion"] = 90100,
      ["id"] = " SoD - 09 - Kel'Thuzad",
      ["parent"] = " SoD - 09 - Kel'Thuzad main Group",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["uid"] = "cbDSP4bn6Ht",
      ["groupIcon"] = 4062734,
      ["config"] = {
      },
      ["borderInset"] = 1,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["xOffset"] = 0,
   },
   ["SoD - 10 - Sylvanas Windrunner - Black Arrow List"] = {
      ["outline"] = "OUTLINE",
      ["xOffset"] = 0,
      ["displayText"] = "%unit - %p",
      ["displayText_format_target_format"] = "none",
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["useMatch_count"] = false,
               ["unit"] = "raid",
               ["match_count"] = "0",
               ["debuffType"] = "HARMFUL",
               ["showClones"] = true,
               ["type"] = "aura2",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["names"] = {
               },
               ["useExactSpellId"] = true,
               ["auraspellids"] = {
                  "358705",
               },
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED ENCOUNTER_START",
               ["spellIds"] = {
               },
               ["check"] = "event",
               ["subeventPrefix"] = "SPELL",
               ["match_countOperator"] = ">",
               ["custom_type"] = "stateupdate",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["displayText_format_p_time_legacy_floor"] = true,
      ["displayText_format_dude_abbreviate_max"] = 8,
      ["wordWrap"] = "WordWrap",
      ["parent"] = "SoD - 10 - Sylvanas Windrunner DG",
      ["displayText_format_dude_realm_name"] = "never",
      ["desc"] = "Lists raiders affected by Black Arrow",
      ["displayText_format_dispeler_abbreviate_max"] = 8,
      ["font"] = "Accidental Presidency",
      ["fixedWidth"] = 200,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["displayText_format_dude_abbreviate"] = false,
      ["shadowYOffset"] = -1,
      ["displayText_format_dude_color"] = "class",
      ["displayText_format_dispeler_decimal_precision"] = 1,
      ["displayText_format_unit_realm_name"] = "never",
      ["fontSize"] = 30,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "OVFa69n6IdD",
      ["shadowXOffset"] = 1,
      ["yOffset"] = 0,
      ["displayText_format_dude_format"] = "Unit",
      ["displayText_format_dispeler_abbreviate"] = false,
      ["regionType"] = "text",
      ["selfPoint"] = "BOTTOM",
      ["displayText_format_dispeler_realm_name"] = "never",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["displayText_format_unit_format"] = "Unit",
      ["displayText_format_unit_color"] = "class",
      ["displayText_format_p_time_precision"] = 1,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["displayText_format_unit_abbreviate_max"] = 8,
      ["displayText_format_p_time_mod_rate"] = true,
      ["justify"] = "LEFT",
      ["displayText_format_dispeler_format"] = "Unit",
      ["id"] = "SoD - 10 - Sylvanas Windrunner - Black Arrow List",
      ["displayText_format_dispeler_color"] = "class",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["internalVersion"] = 53,
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["displayText_format_unit_abbreviate"] = false,
   },
   [" SoD - 06 - Painsmith Raznal - Death"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["yOffset"] = 480,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = 357735,
               ["use_exact_spellId"] = true,
               ["unit"] = "nameplate",
               ["custom_hide"] = "timed",
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["use_unit"] = true,
               ["event"] = "Cast",
               ["names"] = {
               },
               ["events"] = "CLEU:SPELL_CAST_SUCCESS ECHO_PAINSMITH_TRIGGER_FIRE",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["custom_type"] = "status",
               ["check"] = "event",
               ["use_absorbMode"] = true,
               ["subeventPrefix"] = "SPELL",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0,
         0,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["anchorXOffset"] = 0,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 30,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "DEATH",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_text_format_p_format"] = "timed",
            ["text_fontSize"] = 32,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_size"] = 1,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_offset"] = 0,
         },
      },
      ["height"] = 45,
      ["load"] = {
         ["use_encounterid"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2430",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 06 - Painsmith Raznal",
      ["selfPoint"] = "TOP",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["desc"] = "Warning for Final Scream from Shadowsteel Horror",
      ["authorOptions"] = {
      },
      ["icon_side"] = "RIGHT",
      ["sparkOffsetX"] = 0,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Minimalist",
      ["zoom"] = 0,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["width"] = 500,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = " SoD - 06 - Painsmith Raznal - Death",
      ["uid"] = "GbPEk7EkdsQ",
      ["inverse"] = false,
      ["config"] = {
      },
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
   },
   [" SoD - 06 - Painsmith Raznal - Spiked Balls"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText"] = "",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["message"] = "SIDE BALLS",
            ["custom"] = "--EchoInternal:DoTTS(\"SIDE BALLS\");",
            ["do_sound"] = false,
            ["message_type"] = "TTS",
            ["message_tts_voice"] = 0,
            ["do_custom"] = false,
            ["do_message"] = true,
         },
         ["finish"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
            ["do_sound"] = false,
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "352052",
               ["subeventSuffix"] = "_AURA_APPLIED",
               ["duration"] = "1",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_namerealm"] = false,
         ["size"] = {
            ["multi"] = {
            },
         },
         ["namerealm"] = "Rogerbrownie",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2430",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 06 - Painsmith Raznal",
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["id"] = " SoD - 06 - Painsmith Raznal - Spiked Balls",
      ["yOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["config"] = {
      },
      ["uid"] = "L6yYaw1Qof4",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["wordWrap"] = "WordWrap",
   },
   ["SoD - 07 - Guardian of the First Ones main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 07 - Guardian of the First Ones",
         " SoD - 07 - Guardian of the First Ones DG",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["groupIcon"] = "4062733",
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["yOffset"] = 0,
      ["config"] = {
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["borderInset"] = 1,
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["selfPoint"] = "CENTER",
      ["id"] = "SoD - 07 - Guardian of the First Ones main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "Guardian of the First Ones main Group",
      ["authorOptions"] = {
      },
      ["uid"] = "lrwHDH(UAiR",
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
   ["SoD - 07 - Guardian of the First Ones - Bomb Assigment"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = " SoD - 07 - Guardian of the First Ones",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["customText"] = "\
\
",
      ["yOffset"] = 229.99993896484,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 6,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["displayText_format_soakPosition_format"] = "none",
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(subEvent == \"SPELL_AURA_APPLIED\" and spellID == 350496)then\
            table.insert(aura_env.debuffBois,destName);\
            \
            if(#aura_env.debuffBois == 3)then\
                aura_env.bombCount = aura_env.bombCount + 1;\
                \
                if(not aura_env.markers[aura_env.bombCount])then\
                    return;\
                end\
                \
                table.sort(aura_env.debuffBois,function(t1,t2)\
                        return UnitInRaid(t1) < UnitInRaid(t2);\
                end);\
                \
                local duration = 4;\
                WeakAuras.ScanEvents(\"ECHO_GUARDIAN_BOMBS\",aura_env.debuffBois,duration);\
                \
                for i,guy in ipairs(aura_env.debuffBois)do\
                    if(UnitIsUnit(\"player\",guy))then\
                        local soakPosition = aura_env.soaks[i];\
                        SendChatMessage(soakPosition,\"YELL\");\
                        \
                        allstates[\"\"] = \
                        {\
                            changed = true,\
                            show = true,\
                            soakPosition = soakPosition,\
                            progressType = \"timed\",\
                            duration = duration,\
                            expirationTime = GetTime() + duration,\
                            autoHide = true\
                        };\
                    end\
                end\
                \
                wipe(aura_env.debuffBois);\
                \
                return true;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.debuffBois = {};\
        aura_env.bombCount = 0;\
    elseif(event == \"OPTIONS\")then\
        allstates[\"\"] = \
        {\
            changed = true,\
            show = true,\
            soakPosition = \"LEFT?\",\
            progressType = \"timed\",\
            duration = 4,\
            expirationTime = GetTime() + 4,\
            autoHide = true\
        };\
        return true;\
    end\
end",
               ["events"] = "CLEU:SPELL_AURA_APPLIED,ENCOUNTER_START",
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["spellIds"] = {
               },
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["wordWrap"] = "WordWrap",
      ["displayText_format_marker_format"] = "none",
      ["desc"] = "Spread position assignments during Threat Neutralization",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2436",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 70,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.soaks =\
{\
    \"MIDDLE\",\
    \"RIGHT\",\
    \"LEFT\",\
};\
\
aura_env.markers = \
{\
    {1,2},\
    {1,2},\
    {1,2},\
    {1,2},\
    \
    {3,4},\
    {3,4},\
    {3,4},\
    {3,4},\
    \
    {5,6},\
    {5,6},\
    {5,6},\
    {5,6},\
};",
         },
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["preset"] = "alphaPulse",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["conditions"] = {
      },
      ["displayText_format_p_time_precision"] = 1,
      ["displayText_format_soakPos_format"] = "none",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["authorOptions"] = {
      },
      ["justify"] = "CENTER",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 07 - Guardian of the First Ones - Bomb Assigment",
      ["config"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["shadowYOffset"] = -1,
      ["uid"] = "PTIxJs3qbVn",
      ["displayText"] = "%soakPosition",
      ["xOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["selfPoint"] = "BOTTOM",
   },
   ["SoD - 07 - Guardian of the First Ones - Bomb List"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = " SoD - 07 - Guardian of the First Ones DG",
      ["displayText"] = "%guy - %c1",
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.soak)then\
        if(aura_env.state.soak == 1)then\
            return \"MIDDLE\";\
        elseif(aura_env.state.soak == 2)then\
            return \"RIGHT\";\
        else\
            return \"LEFT\";\
        end\
    else\
        return \"LEFT?\";\
    end\
end\
\
\
\
",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["displayText_format_guy_abbreviate_max"] = 8,
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["displayText_format_guy_abbreviate"] = false,
      ["desc"] = "Display of raiders affected by Threat Neutralization",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2436",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 26,
      ["shadowXOffset"] = 1,
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["regionType"] = "text",
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["fixedWidth"] = 200,
      ["displayText_format_guy_realm_name"] = "never",
      ["wordWrap"] = "WordWrap",
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["spellIds"] = {
               },
               ["events"] = "ECHO_GUARDIAN_BOMBS",
               ["names"] = {
               },
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"ECHO_GUARDIAN_BOMBS\")then\
        local guys,duration = ...;\
        if(guys)then\
            \
            for soak,guy in ipairs(guys)do\
                \
                allstates[soak] = \
                {\
                    changed = true,\
                    show = true,\
                    soak = soak,\
                    guy = guy,\
                    progressType = \"timed\",\
                    duration = duration,\
                    expirationTime = GetTime() + duration,\
                    autoHide = true,\
                };\
                \
            end\
            \
            return true;\
        end\
    end\
end",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_time_precision"] = 1,
      ["displayText_format_guy_format"] = "Unit",
      ["uid"] = "P3HqclOphY3",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "LEFT",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 07 - Guardian of the First Ones - Bomb List",
      ["displayText_format_guy_color"] = "class",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["authorOptions"] = {
      },
      ["config"] = {
      },
      ["xOffset"] = 0,
      ["yOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["displayText_format_c1_format"] = "none",
   },
   ["SoD - 06 - Painsmith Raznal main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 06 - Painsmith Raznal",
         " SoD - 06 - Painsmith Raznal - Dance DG Sadge",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["groupIcon"] = "4062735",
      ["config"] = {
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["uid"] = "zjLBdzCLADI",
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["selfPoint"] = "CENTER",
      ["id"] = "SoD - 06 - Painsmith Raznal main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "Painsmith Raznal main Group",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["borderInset"] = 1,
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
   ["SoD - 05 - Soulrender Dormazain Chain Broken David"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText"] = "",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.LSM = LibStub(\"LibSharedMedia-3.0\");",
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["custom_hide"] = "timed",
               ["custom"] = "function(event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(subEvent == \"SPELL_DAMAGE\")then\
            if(spellID == 350801)then\
                local time = GetTime();\
                if(aura_env.last + 0.3 < GetTime())then\
                    aura_env.chainBlown = aura_env.chainBlown + 1;\
                    aura_env.last = time;\
                    \
                    local soundFile = aura_env.LSM:Fetch(aura_env.LSM.MediaType.SOUND,\"David: \".. aura_env.chainBlown);\
                    PlaySoundFile(soundFile,\"Master\");\
                    \
                    if(aura_env.chainBlown == 3)then\
                        aura_env.chainBlown = 0;\
                    end\
                end\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.last = 0;\
        aura_env.chainBlown = 0;\
    end\
    \
end",
               ["spellIds"] = {
               },
               ["events"] = "CLEU:SPELL_DAMAGE ENCOUNTER_START",
               ["custom_type"] = "event",
               ["names"] = {
               },
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["wordWrap"] = "WordWrap",
      ["desc"] = "Count sounds for chain breaks. (sounds require BigWigs)",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2434",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["parent"] = " SoD - 05 - Soulrender Dormazain",
      ["displayText_format_p_time_precision"] = 1,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["conditions"] = {
      },
      ["shadowYOffset"] = -1,
      ["justify"] = "LEFT",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 05 - Soulrender Dormazain Chain Broken David",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["config"] = {
      },
      ["uid"] = "i)sw5YiJAES",
      ["xOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["selfPoint"] = "BOTTOM",
   },
   ["Echo - Sanctum of Domination S4 - Custom"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 02 - The Eye of the Jailer",
         "SoD - 03 - The Nine main Group",
         "SoD - 04 - Remnant of Ner'zhul main Group",
         "SoD - 05 - Soulrender Dormazain main Group",
         "SoD - 06 - Painsmith Raznal main Group",
         "SoD - 07 - Guardian of the First Ones main Group",
         "SoD - 08 - Fatescribe Roh-Kalo main Group",
         " SoD - 09 - Kel'Thuzad main Group",
         "SoD - 10 - Sylvanas Windrunner main Group",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["authorOptions"] = {
      },
      ["borderInset"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["echoVersion"] = 2,
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["selfPoint"] = "CENTER",
      ["id"] = "Echo - Sanctum of Domination S4 - Custom",
      ["config"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["borderOffset"] = 4,
      ["uid"] = "hAnPe6e4dLc",
      ["scale"] = 1,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["yOffset"] = 0,
   },
   ["SoD - 10 - Sylvanas Windrunner DG"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         "SoD - 10 - Sylvanas Windrunner - Black Arrow List",
         " SoD - 10 - Sylvanas Windrunner - Arrow P3 List",
         " SoD - 10 - Sylvanas Windrunner - Dispell List",
         " SoD - 10 - Sylvanas Windrunner - Dispell Missing  List",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = -400,
      ["groupIcon"] = 4062738,
      ["gridType"] = "RD",
      ["echoVersion"] = 9,
      ["fullCircle"] = true,
      ["rowSpace"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["radius"] = 200,
      ["useLimit"] = false,
      ["align"] = "LEFT",
      ["desc"] = "Sylvanas Windrunner Dynamic Group",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["animate"] = false,
      ["authorOptions"] = {
      },
      ["scale"] = 1,
      ["selfPoint"] = "TOPLEFT",
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["limit"] = 5,
      ["yOffset"] = 150,
      ["space"] = 2,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["borderInset"] = 1,
      ["constantFactor"] = "RADIUS",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["borderOffset"] = 4,
      ["config"] = {
      },
      ["gridWidth"] = 5,
      ["id"] = "SoD - 10 - Sylvanas Windrunner DG",
      ["arcLength"] = 360,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["internalVersion"] = 53,
      ["uid"] = "qTLUE28ponX",
      ["parent"] = "SoD - 10 - Sylvanas Windrunner main Group",
      ["anchorPoint"] = "CENTER",
      ["sort"] = "none",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["rotation"] = 0,
   },
   [" SoD - 07 - Guardian of the First Ones"] = {
      ["controlledChildren"] = {
         "SoD - 07 -Guardian of the First Ones - Personals",
         "SoD - 07 -Guardian of the First Ones - Soak Assigment",
         "SoD - 07 - Guardian of the First Ones - Bomb Assigment",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["groupIcon"] = 4062733,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 4,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "Guardian of the First Ones non-Dynamic Group",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["selfPoint"] = "CENTER",
      ["borderOffset"] = 4,
      ["authorOptions"] = {
      },
      ["tocversion"] = 90100,
      ["id"] = " SoD - 07 - Guardian of the First Ones",
      ["oName"] = "SoD - 07 - Guardian of the First Ones",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "ctleS62Ws7s",
      ["mVersion"] = 2,
      ["borderInset"] = 1,
      ["yOffset"] = 0,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["parent"] = "SoD - 07 - Guardian of the First Ones main Group",
   },
   ["SoD - 09 - Kel'Thuzad - Scripe Bar"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["displayText"] = "",
      ["yOffset"] = -427.19966125488,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["sparkRotation"] = 0,
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["selfPoint"] = "BOTTOM",
      ["barColor"] = {
         0,
         0.85098039215686,
         1,
         1,
      },
      ["desaturate"] = false,
      ["font"] = "Friz Quadrata TT",
      ["sparkOffsetY"] = 0,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["shadowXOffset"] = 1,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["texture"] = "Minimalist",
      ["zoom"] = 0,
      ["spark"] = false,
      ["alpha"] = 1,
      ["config"] = {
      },
      ["fixedWidth"] = 200,
      ["outline"] = "OUTLINE",
      ["sparkOffsetX"] = 0,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowYOffset"] = -1,
      ["sparkRotationMode"] = "AUTO",
      ["automaticWidth"] = "Auto",
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["duration"] = "25",
               ["genericShowOn"] = "showOnCooldown",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["percenthealth_operator"] = "<=",
               ["spellName"] = 0,
               ["debuffType"] = "HELPFUL",
               ["spellIds"] = {
               },
               ["custom_hide"] = "timed",
               ["events"] = "ECHO_CHEESE_KT_TIMER",
               ["type"] = "custom",
               ["use_absorbHealMode"] = true,
               ["custom_type"] = "event",
               ["subeventSuffix"] = "_CAST_START",
               ["percenthealth"] = "5.5",
               ["event"] = "Health",
               ["use_absorbMode"] = true,
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["custom"] = "function(event,notFake)\
    if(event == \"ECHO_CHEESE_KT_TIMER\" and notFake)then\
        return true;\
    end \
end",
               ["use_genericShowOn"] = true,
               ["unit"] = "player",
               ["use_percenthealth"] = true,
               ["use_track"] = true,
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_text_format_n_format"] = "none",
            ["text_text"] = "%p",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_shadowXOffset"] = 1,
            ["anchorXOffset"] = 0,
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_fontType"] = "OUTLINE",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontSize"] = 12,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
         {
            ["border_offset"] = 0,
            ["border_anchor"] = "bar",
            ["type"] = "subborder",
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 1,
         },
      },
      ["height"] = 15,
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["fontSize"] = 12,
      ["parent"] = " SoD - 09 - Kel'Thuzad",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "E4)Hc(Y7GSU",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["icon_side"] = "RIGHT",
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["displayText_format_p_time_precision"] = 1,
      ["icon"] = false,
      ["sparkHeight"] = 30,
      ["wordWrap"] = "WordWrap",
      ["justify"] = "LEFT",
      ["width"] = 100,
      ["id"] = "SoD - 09 - Kel'Thuzad - Scripe Bar",
      ["desc"] = "25 second timer when KT is below 5.5%",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["sparkHidden"] = "NEVER",
      ["xOffset"] = 306.80017089844,
      ["inverse"] = false,
      ["actions"] = {
         ["start"] = {
            ["do_glow"] = false,
            ["do_custom"] = false,
            ["custom"] = "WeakAuras.ScanEvents(\"ECHO_CHEESE_KT_TIMER\",true);",
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
   },
   ["SoD - 04 - Remnant of Ner'zhul - Spite P4"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "if(aura_env.state and aura_env.state.text == \"Boom\")then\
    aura_env.region:Color(1,0,0,0.66);\
end\
\
\
",
            ["do_sound"] = false,
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "if(aura_env.ticker)then\
    aura_env.ticker:Cancel();\
    aura_env.ticker = nil;\
end",
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["custom_hide"] = "timed",
               ["custom_type"] = "stateupdate",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["names"] = {
               },
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(spellID == 354440)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                \
                allstates[0] = \
                {\
                    changed = true,\
                    show = true,\
                    progressType = \"timed\",\
                    duration = 15,\
                    expirationTime = GetTime() + 15,\
                    autoHide = true,\
                    text = \"Next\",\
                };\
                \
                \
                aura_env.ticker = C_Timer.NewTicker(15,function() WeakAuras.ScanEvents(\"SPITE_AGANE_P4\",true) end);\
            else\
                \
                if(aura_env.ticker)then\
                    aura_env.ticker:Cancel();\
                    aura_env.ticker = nil;\
                end\
                \
                for _,state in pairs(allstates)do\
                    state.changed = true;\
                    state.show = false;\
                end    \
            end\
            \
            return true;\
        end\
    elseif(event == \"SPITE_AGANE_P4\")then\
        local notFake = ...;\
        if(notFake)then\
            \
            allstates[1] = \
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = 7.5,\
                expirationTime = GetTime() + 7.5,\
                autoHide = true,\
                index = 1,\
                text = \"Safe\",\
            };\
            \
            allstates[0] = \
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = 15,\
                expirationTime = GetTime() + 15,\
                autoHide = true,\
                index = 0,\
                text = \"Next\",\
            };\
            \
            \
            return true; \
        end       \
        \
    elseif(event == \"ENCOUNTER_END\" or event == \"OPTIONS\")then\
        if(aura_env.ticker)then\
            aura_env.ticker:Cancel();\
            aura_env.ticker = nil;\
        end\
    end\
end\
\
\
",
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED,SPITE_AGANE_P4,ENCOUNTER_END",
               ["check"] = "event",
               ["unit"] = "boss",
               ["debuffType"] = "HELPFUL",
               ["customVariables"] = "{\
    text = \"string\",\
    expirationTime = true,\
}",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0,
         1,
         0.65999999642372,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["border_size"] = 2,
            ["border_anchor"] = "bar",
            ["type"] = "subborder",
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_offset"] = 0,
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text"] = "%p",
            ["text_text_format_p_format"] = "timed",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_n_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_visible"] = true,
            ["text_shadowXOffset"] = 1,
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%text",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "LEFT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_text_format"] = "none",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
         },
      },
      ["height"] = 26,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2432",
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 04 - Remnant of Ner'zhul DG",
      ["desc"] = "Spite, raid damage, timers",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["authorOptions"] = {
      },
      ["sparkOffsetX"] = 0,
      ["icon_side"] = "RIGHT",
      ["uid"] = "PWIc3SN)os7",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["anchorFrameType"] = "SCREEN",
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["width"] = 200,
      ["id"] = "SoD - 04 - Remnant of Ner'zhul - Spite P4",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["config"] = {
      },
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "==",
               ["variable"] = "text",
               ["value"] = "Safe",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0,
                     0,
                     0.65000000596046,
                  },
                  ["property"] = "barColor",
               },
               {
                  ["value"] = true,
                  ["property"] = "inverse",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = -2,
               ["variable"] = "AND",
               ["checks"] = {
                  {
                     ["trigger"] = 1,
                     ["op"] = "==",
                     ["variable"] = "text",
                     ["value"] = "Next",
                  },
                  {
                     ["trigger"] = 1,
                     ["op"] = "<",
                     ["variable"] = "expirationTime",
                     ["value"] = "1",
                  },
               },
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
                     ["sound_channel"] = "Music",
                  },
                  ["property"] = "sound",
               },
            },
         },
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   [" SoD - 07 - Guardian of the First Ones DG"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         "SoD - 07 - Guardian of the First Ones - Boss2 Energy",
         "SoD - 07 - Guardian of the First Ones - Boss3 Energy ",
         "SoD - 07 - Guardian of the First Ones - Boss4 Energy ",
         "SoD - 07 - Guardian of the First Ones - Bomb List",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["yOffset"] = 227.00018310547,
      ["gridType"] = "RD",
      ["echoVersion"] = 2,
      ["fullCircle"] = true,
      ["rowSpace"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["names"] = {
               },
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["internalVersion"] = 53,
      ["selfPoint"] = "TOP",
      ["align"] = "CENTER",
      ["desc"] = "Guardian of the First Ones Dynamic Group",
      ["rotation"] = 0,
      ["subRegions"] = {
      },
      ["parent"] = "SoD - 07 - Guardian of the First Ones main Group",
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["mVersion"] = 4,
      ["useLimit"] = false,
      ["animate"] = false,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["scale"] = 1,
      ["oName"] = "SoD - 07 - Guardian of the First Ones DG",
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "none",
      ["config"] = {
      },
      ["limit"] = 5,
      ["borderInset"] = 1,
      ["frameStrata"] = 1,
      ["constantFactor"] = "RADIUS",
      ["xOffset"] = -644.00045776367,
      ["borderOffset"] = 4,
      ["groupIcon"] = "4062733",
      ["tocversion"] = 90100,
      ["id"] = " SoD - 07 - Guardian of the First Ones DG",
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["gridWidth"] = 5,
      ["anchorFrameType"] = "SCREEN",
      ["arcLength"] = 360,
      ["uid"] = "eRzH42Ha2l5",
      ["anchorPoint"] = "CENTER",
      ["space"] = 2,
      ["radius"] = 200,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["stagger"] = 0,
   },
   [" SoD - 10 - Sylvanas Windrunner - Arrow P3 List"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.duration =\
{\
    1,\
    1,\
    1,\
    \
    1,\
    1,\
    1,\
    \
    1,\
    1,\
    1,\
    \
    1,\
    1,\
    1,\
    \
    1,\
    1,\
    1,\
};",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["useMatch_count"] = true,
               ["auranames"] = {
                  "347704",
               },
               ["names"] = {
               },
               ["match_count"] = "0",
               ["debuffType"] = "HARMFUL",
               ["showClones"] = true,
               ["useName"] = true,
               ["match_countOperator"] = ">",
               ["custom_type"] = "stateupdate",
               ["fetchTooltip"] = true,
               ["event"] = "Health",
               ["unit"] = "raid",
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_CAST_START ENCOUNTER_START",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\" and spellID == 348064 and aura_env.isP3)then -- 348064\
            aura_env.cast = aura_env.cast + 1;\
            local duration = 9 + aura_env.duration[aura_env.cast];\
            \
            allstates[destName] = {\
                show = true,\
                changed = true,\
                progressType = \"timed\",\
                duration = duration,\
                expirationTime = GetTime() + duration,\
                autoHide = true,\
                unit = destName,\
            };\
            \
            WeakAuras.ScanEvents(\"ECHO_SYLVANAS_ARROW\", destName, duration);\
            \
            return true;\
        elseif(subEvent == \"SPELL_CAST_START\" and spellID == 357102)then\
            aura_env.isP3 = true;\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.cast = 0;\
        aura_env.isP3 = false;\
    end\
end",
               ["spellIds"] = {
               },
               ["type"] = "custom",
               ["check"] = "event",
               ["subeventPrefix"] = "SPELL",
               ["subeventSuffix"] = "_CAST_START",
               ["customVariables"] = "{\
    expirationTime = true,\
}",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         0.9843137254902,
         0.13333333333333,
         0,
         1,
      },
      ["desc"] = "Timers for P3 Wailing Arrow",
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text_format_1.unit_abbreviate"] = true,
            ["text_text"] = "%1.unit",
            ["text_text_format_1.unit_abbreviate_max"] = 6,
            ["text_text_format_1.unit_realm_name"] = "never",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_1.unit_color"] = "class",
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "OUTLINE",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_1.unitt_format"] = "none",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["text_text_format_1.unit_format"] = "Unit",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%p",
            ["text_text_format_1.unit_abbreviate_max"] = 5,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["rotateText"] = "NONE",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_shadowYOffset"] = -1,
            ["text_text_format_1.unit_color"] = "class",
            ["text_visible"] = true,
            ["text_fontSize"] = 20,
            ["text_text_format_1.tooltip2_format"] = "BigNumber",
            ["text_text_format_1.unit_format"] = "Unit",
            ["text_text_format_1.unit_abbreviate"] = true,
            ["text_text_format_1.unitt_format"] = "none",
            ["text_text_format_p_format"] = "timed",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_1.unit_realm_name"] = "never",
            ["text_text_format_n_format"] = "none",
            ["text_text_format_p_time_format"] = 0,
            ["type"] = "subtext",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["anchorXOffset"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_wordWrap"] = "WordWrap",
            ["text_text_format_p_time_precision"] = 1,
            ["text_text_format_1.s_format"] = "none",
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 1,
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = "SoD - 10 - Sylvanas Windrunner DG",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["selfPoint"] = "CENTER",
      ["xOffset"] = 0,
      ["icon_side"] = "RIGHT",
      ["sparkOffsetX"] = 0,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Minimalist",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["zoom"] = 0,
      ["spark"] = false,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = " SoD - 10 - Sylvanas Windrunner - Arrow P3 List",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["width"] = 150,
      ["sparkHidden"] = "NEVER",
      ["config"] = {
      },
      ["inverse"] = false,
      ["uid"] = "921b3Vp2oaA",
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "expirationTime",
               ["op"] = "<",
               ["value"] = "4",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0.87450980392157,
                     0,
                     1,
                  },
                  ["property"] = "barColor",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "expirationTime",
               ["op"] = "<",
               ["value"] = "1",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     0.15294117647059,
                     1,
                     0,
                     1,
                  },
                  ["property"] = "barColor",
               },
            },
         },
      },
      ["information"] = {
      },
      ["desaturate"] = false,
   },
   [" SoD - 06 - Painsmith Raznal - Paladin Beacon"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText"] = "",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 6,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_glow"] = true,
            ["glow_color"] = {
               1,
               0.8078431372549,
               0,
               1,
            },
            ["do_sound"] = false,
            ["use_glow_color"] = true,
            ["glow_type"] = "buttonOverlay",
            ["glow_frame_type"] = "UNITFRAME",
            ["glow_action"] = "show",
         },
         ["init"] = {
         },
         ["finish"] = {
            ["hide_all_glows"] = true,
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, sourceName, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\")then\
            if(spellID == 355505)then\
                if(aura_env.last + 1 < GetTime())then\
                    aura_env.counter = 0;\
                    aura_env.last = 0;\
                end\
                \
                aura_env.counter = aura_env.counter + 1;\
                aura_env.last = GetTime();\
                \
                local paladin = aura_env.paladins[aura_env.counter];\
                if(paladin and UnitIsUnit(\"player\",paladin))then\
                    \
                    elog(\"PAIN_ASSIGN_PALADIN\",paladin,destName);\
                    \
                    allstates[\"\"] = \
                    {\
                        changed = true,\
                        show = true,\
                        unit = destName,\
                        progressType = \"timed\",\
                        duration = 15,\
                        expirationTime = GetTime() + 15,\
                        autoHide = true,\
                    };\
                    \
                    return true;\
                end\
            elseif(spellID == 156910 or spellID == 53563)then\
                local state = allstates[\"\"];\
                if(state and UnitIsUnit(\"player\",sourceName))then\
                    state.changed = true;\
                    state.show = false;\
                    \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.counter = 0;\
        aura_env.last = 0;\
        \
        aura_env.paladins = {};\
        for unit in WA_IterateGroupMembers() do\
            local class = select(2,UnitClassBase(unit));\
            if(class == 2 and UnitGroupRolesAssigned(unit) == \"HEALER\")then\
                table.insert(aura_env.paladins,unit);\
            end\
        end  \
        \
    end\
end",
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["names"] = {
               },
               ["events"] = "CLEU:SPELL_AURA_APPLIED ENCOUNTER_START",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Holy Paladin Beacon assignments for Shadowsteel Chains\
",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["encounterid"] = "2430",
         ["class_and_spec"] = {
            ["single"] = 65,
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["use_class_and_spec"] = true,
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 06 - Painsmith Raznal",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["fixedWidth"] = 200,
      ["justify"] = "LEFT",
      ["yOffset"] = 0,
      ["id"] = " SoD - 06 - Painsmith Raznal - Paladin Beacon",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["uid"] = ")E(L(rVSRuY",
      ["config"] = {
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["wordWrap"] = "WordWrap",
   },
   ["SoD - 07 - Guardian of the First Ones - Boss2 Energy"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.soak)then\
        if(aura_env.state.soak == 1)then\
            return \"MIDDLE\";\
        elseif(aura_env.state.soak == 2)then\
            return \"LEFT\";\
        else\
            return \"RIGHT\";\
        end\
    else\
        return \"LEFT?\";\
    end\
end\
\
\
\
",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "unit",
               ["subeventSuffix"] = "_CAST_START",
               ["use_absorbMode"] = true,
               ["event"] = "Power",
               ["names"] = {
               },
               ["use_specific_unit"] = true,
               ["spellIds"] = {
               },
               ["specificUnit"] = "boss2",
               ["unit"] = "boss2",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         0.93725490196078,
         0.70980392156863,
         0,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["type"] = "subtext",
            ["text_anchorXOffset"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "1",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_text_format_unit_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_1.unit_format"] = "none",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_fontType"] = "OUTLINE",
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 2,
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2436",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 07 - Guardian of the First Ones DG",
      ["desc"] = "Simple power display for boss2",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["selfPoint"] = "CENTER",
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["sparkOffsetX"] = 0,
      ["config"] = {
      },
      ["icon_side"] = "RIGHT",
      ["uid"] = "SIXwl7LhbNH",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["width"] = 201,
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 07 - Guardian of the First Ones - Boss2 Energy",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["sparkHidden"] = "NEVER",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["xOffset"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
   },
   ["SoD - 09 - Kel'Thuzad - Kill Adds"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = 352293,
               ["use_exact_spellId"] = true,
               ["unit"] = "boss",
               ["remaining"] = "12",
               ["debuffType"] = "HELPFUL",
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Cast",
               ["names"] = {
               },
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_absorbMode"] = true,
               ["use_remaining"] = true,
               ["remaining_operator"] = "<=",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["useName"] = false,
               ["auraspellids"] = {
                  "348787",
               },
               ["matchesShowOn"] = "showOnMissing",
               ["event"] = "Health",
               ["unit"] = "player",
               ["auranames"] = {
                  "Phylactery",
               },
               ["names"] = {
               },
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["subeventSuffix"] = "_CAST_START",
               ["type"] = "aura2",
               ["useExactSpellId"] = true,
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Reminder to kill big adds during Vengeful Destruction",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_itemequiped"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 45,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 09 - Kel'Thuzad",
      ["wordWrap"] = "WordWrap",
      ["conditions"] = {
      },
      ["justify"] = "CENTER",
      ["displayText"] = "KILL ADDS",
      ["id"] = "SoD - 09 - Kel'Thuzad - Kill Adds",
      ["yOffset"] = 120,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["config"] = {
      },
      ["uid"] = "1zRHwMwoC1k",
      ["authorOptions"] = {
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["preset"] = "alphaPulse",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["  SoD - 05 - Soulrender Dormazain - Paladin Beacon"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 6,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_glow"] = true,
            ["glow_action"] = "show",
            ["do_sound"] = false,
            ["glow_frame_type"] = "UNITFRAME",
            ["use_glow_color"] = true,
            ["glow_type"] = "buttonOverlay",
            ["glow_color"] = {
               1,
               0.12549019607843,
               0,
               1,
            },
         },
         ["finish"] = {
            ["hide_all_glows"] = true,
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["events"] = "CLEU:SPELL_AURA_APPLIED ENCOUNTER_START",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, sourceName, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\")then\
            if(spellID == 350647)then\
                if(aura_env.last + 1 < GetTime())then\
                    aura_env.counter = 0;\
                    aura_env.last = 0;\
                end\
                \
                aura_env.counter = aura_env.counter + 1;\
                aura_env.last = GetTime();\
                \
                local paladin = aura_env.paladins[aura_env.counter];\
                if(paladin and UnitIsUnit(\"player\",paladin))then\
                    \
                    elog(\"SOUL_ASSIGN_PALADIN\",paladin,destName);\
                    \
                    allstates[\"\"] = \
                    {\
                        changed = true,\
                        show = true,\
                        unit = destName,\
                        progressType = \"timed\",\
                        duration = 4,\
                        expirationTime = GetTime() + 4,\
                        autoHide = true,\
                    };\
                    \
                    return true;\
                end\
            elseif(spellID == 156910 or spellID == 53563)then\
                local state = allstates[\"\"];\
                if(state and UnitIsUnit(\"player\",sourceName))then\
                    state.changed = true;\
                    state.show = false;\
                    \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.counter = 0;\
        aura_env.last = 0;\
        \
        aura_env.paladins = {};\
        for unit in WA_IterateGroupMembers() do\
            local class = select(2,UnitClassBase(unit));\
            if(class == 2 and UnitGroupRolesAssigned(unit) == \"HEALER\")then\
                table.insert(aura_env.paladins,unit);\
            end\
        end  \
        \
    end\
end",
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["spellIds"] = {
               },
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "Assigns holy Paladins to Beacon raiders affected by Brand of Torment (glows raid frame)",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class_and_spec"] = {
            ["single"] = 65,
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2434",
         ["use_class_and_spec"] = true,
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 05 - Soulrender Dormazain",
      ["wordWrap"] = "WordWrap",
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["shadowYOffset"] = -1,
      ["id"] = "  SoD - 05 - Soulrender Dormazain - Paladin Beacon",
      ["displayText"] = "",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["uid"] = "F8rzBcfQVGc",
      ["config"] = {
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["selfPoint"] = "BOTTOM",
   },
   ["SoD - 10 - Sylvanas Windrunner - P2 Bridges"] = {
      ["sparkWidth"] = 3,
      ["stacksSize"] = 12,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["displayText"] = "%p",
      ["yOffset"] = 243,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 5,
      ["displayText_format_p_time_format"] = 0,
      ["rotateText"] = "NONE",
      ["icon"] = true,
      ["fontFlags"] = "OUTLINE",
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0.6,
         0,
         1,
         1,
      },
      ["desc"] = "Phase 2 timers for the Ruin ability. ",
      ["font"] = "Friz Quadrata TT",
      ["sparkOffsetY"] = 0,
      ["load"] = {
         ["instance_type"] = {
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "mythic",
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["use_difficulty"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["timerColor"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowXOffset"] = 1,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["stacks"] = true,
      ["texture"] = "Minimalist",
      ["textFont"] = "Friz Quadrata TT",
      ["borderOffset"] = 5,
      ["spark"] = false,
      ["timerFont"] = "Friz Quadrata TT",
      ["alpha"] = 1,
      ["config"] = {
      },
      ["uid"] = "kOSb7ck6XeW",
      ["stacksFont"] = "Friz Quadrata TT",
      ["fixedWidth"] = 200,
      ["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
      ["textColor"] = {
         1,
         1,
         1,
         1,
      },
      ["outline"] = "OUTLINE",
      ["orientation"] = "HORIZONTAL",
      ["sparkOffsetX"] = 0,
      ["color"] = {
      },
      ["parent"] = "SoD - 10 - Sylvanas Windrunner",
      ["backgroundColor"] = {
         0.17647058823529,
         0.17647058823529,
         0.17647058823529,
         0.7818441838026,
      },
      ["customText"] = "function()\
    return aura_env.count\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
      ["shadowYOffset"] = -1,
      ["desaturate"] = false,
      ["wordWrap"] = "WordWrap",
      ["width"] = 250,
      ["justify"] = "LEFT",
      ["sparkRotationMode"] = "AUTO",
      ["automaticWidth"] = "Auto",
      ["displayTextLeft"] = "%n",
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "addons",
               ["spellId"] = "355540",
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["remaining_operator"] = "<=",
               ["event"] = "BigWigs Timer",
               ["names"] = {
               },
               ["use_remaining"] = true,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["remaining"] = "15",
               ["extend"] = "-6",
               ["unit"] = "player",
               ["use_extend"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["customTextUpdate"] = "update",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["backdropInFront"] = false,
      ["text"] = true,
      ["id"] = "SoD - 10 - Sylvanas Windrunner - P2 Bridges",
      ["stickyDuration"] = false,
      ["adjustedMax"] = "15",
      ["timerSize"] = 12,
      ["textFlags"] = "None",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "DEADLINE",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_text_format_1.destName_color"] = "class",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_1.destName_realm_name"] = "never",
            ["type"] = "subtext",
            ["text_anchorXOffset"] = 4,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Expressway",
            ["text_shadowYOffset"] = -1,
            ["text_anchorYOffset"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_1.destName_abbreviate"] = false,
            ["text_text_format_1.destName_format"] = "Unit",
            ["text_fontSize"] = 15,
            ["anchorXOffset"] = 0,
            ["text_text_format_1.destName_abbreviate_max"] = 8,
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["anchorXOffset"] = 0,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Expressway",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_time_precision"] = 1,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_format"] = "timed",
            ["text_visible"] = true,
            ["text_fontSize"] = 15,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_offset"] = 2,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 2,
         },
      },
      ["height"] = 24,
      ["timerFlags"] = "None",
      ["sparkRotation"] = 0,
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = true,
      ["fontSize"] = 12,
      ["timer"] = true,
      ["sparkHeight"] = 14,
      ["displayIcon"] = 1035040,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["border"] = false,
      ["borderEdge"] = "None",
      ["borderSize"] = 16,
      ["borderInFront"] = false,
      ["zoom"] = 0.25,
      ["icon_side"] = "LEFT",
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["stacksFlags"] = "None",
      ["displayText_format_p_time_precision"] = 1,
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["borderColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["stacksColor"] = {
         1,
         1,
         1,
         1,
      },
      ["displayTextRight"] = "%p",
      ["authorOptions"] = {
      },
      ["sparkHidden"] = "NEVER",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["textSize"] = 12,
      ["inverse"] = false,
      ["auto"] = true,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = false,
      },
      ["borderInset"] = 11,
   },
   [" SoD - The Eye of the Jailer - Debuff Pairs"] = {
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    if(aura_env.state)then\
        local range;\
        \
        local minRange = aura_env.state.minRange;\
        if(minRange > 30)then\
            range = \"\"..minRange..\"\";\
        elseif(minRange > 20)then\
            range = \"\"..minRange..\"\";\
        elseif(minRange > 10)then\
            range = \"\"..minRange..\"\";\
        else\
            range = \"\"..minRange..\"\";\
        end\
        \
        return (range..\"y\");\
    end\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["cooldownSwipe"] = true,
      ["cooldownEdge"] = false,
      ["icon"] = true,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["customVariables"] = "{\
    minRange = \"number\",\
};\
\
\
",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\")then\
            if(spellID == aura_env.scornID)then\
                aura_env.scorns[destName] = true;\
            elseif(spellID == aura_env.ireID)then\
                aura_env.ires[destName] = true;\
            else\
                return;\
            end\
            \
            if(UnitIsUnit(\"player\",destName))then\
                \
                allstates[\"\"] = {\
                    show = true,\
                    changed = true,\
                    progressType = \"static\",\
                    value = 1,\
                    total = 1,\
                    isScorn = spellID == aura_env.scornID,\
                    icon = select(3,GetSpellInfo(spellID)),\
                    \
                    closestDude = nil,\
                    minRange = 99,\
                    lastUpdate = GetTime(),\
                };\
                \
                return true;\
            end\
            \
        elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
            if(spellID == aura_env.scornID)then\
                aura_env.scorns[destName] = nil;\
            elseif(spellID == aura_env.ireID)then\
                aura_env.ires[destName] = nil;\
            else\
                return;\
            end\
            \
            if(UnitIsUnit(\"player\",destName))then\
                local state = allstates[\"\"];\
                if(state)then\
                    state.changed = true;\
                    state.show = false;\
                    \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"FRAME_UPDATE\")then\
        local state = allstates[\"\"];\
        \
        if(state and (state.lastUpdate < GetTime() - 0.1)) then\
            state.lastUpdate = GetTime();\
            \
            local people = state.isScorn and aura_env.ires or aura_env.scorns;\
            local minRange,dude;\
            for unit in pairs(people) do\
                local range = WeakAuras.GetRange(unit);\
                if(not minRange or range < minRange)then\
                    minRange = range;\
                    dude = unit;\
                end\
            end\
            \
            if(dude and (dude ~= state.closestDude or minRange ~= state.minRange))then\
                state.changed = true;\
                state.closestDude = dude;\
                state.minRange = minRange;\
                \
                return true;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.scorns = {};\
        aura_env.ires = {};\
    elseif(event == \"OPTIONS\")then\
        local spellID = math.random(1,2) == 1 and aura_env.scornID or aura_env.ireID;\
        \
        allstates[\"\"] = {\
            show = true,\
            changed = true,\
            progressType = \"static\",\
            value = 1,\
            total = 1,\
            isScorn = spellID == aura_env.scornID,\
            icon = select(3,GetSpellInfo(spellID)),\
            \
            closestDude = \"player\",\
            minRange = math.random(1,50),\
            lastUpdate = GetTime(),\
        };\
        \
        return true;\
    end\
end",
               ["events"] = "FRAME_UPDATE CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED ENCOUNTER_START",
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["names"] = {
               },
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["internalVersion"] = 53,
      ["keepAspectRatio"] = false,
      ["selfPoint"] = "CENTER",
      ["desc"] = "Range checking for Scorn and Ire debuffs. ",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_shadowXOffset"] = 0,
            ["text_text_format_s_format"] = "none",
            ["text_text"] = "%c1",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_minRange_format"] = "none",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = 0,
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_c1_format"] = "none",
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["text_text_format_closestDude_format"] = "none",
         },
         {
            ["text_shadowXOffset"] = 0,
            ["text_text_format_closestDude_abbreviate"] = false,
            ["text_text"] = "%closestDude",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "BOTTOM",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_s_format"] = "none",
            ["text_text_format_minRange_format"] = "none",
            ["type"] = "subtext",
            ["text_text_format_closestDude_abbreviate_max"] = 8,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_closestDude_realm_name"] = "never",
            ["text_shadowYOffset"] = 0,
            ["text_text_format_closestDude_color"] = "class",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = false,
            ["text_anchorPoint"] = "OUTER_TOP",
            ["text_text_format_c1_format"] = "none",
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 24,
            ["anchorXOffset"] = 0,
            ["text_text_format_closestDude_format"] = "Unit",
         },
         {
            ["glowFrequency"] = 0.25,
            ["type"] = "subglow",
            ["useGlowColor"] = true,
            ["glowType"] = "buttonOverlay",
            ["glowLength"] = 10,
            ["glowYOffset"] = 0,
            ["glowColor"] = {
               1,
               0.44705882352941,
               0,
               1,
            },
            ["glow"] = false,
            ["glowXOffset"] = 0,
            ["glowThickness"] = 1,
            ["glowScale"] = 1,
            ["glowLines"] = 8,
            ["glowBorder"] = false,
         },
      },
      ["height"] = 50,
      ["load"] = {
         ["use_never"] = false,
         ["instance_type"] = {
         },
         ["encounterid"] = "2433",
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "mythic",
            ["multi"] = {
               ["mythic"] = true,
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["use_difficulty"] = true,
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["regionType"] = "icon",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["cooldown"] = false,
      ["displayIcon"] = 1396973,
      ["desaturate"] = false,
      ["zoom"] = 0,
      ["config"] = {
      },
      ["cooldownTextDisabled"] = false,
      ["useCooldownModRate"] = true,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = " SoD - The Eye of the Jailer - Debuff Pairs",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["width"] = 50,
      ["xOffset"] = 0,
      ["uid"] = "esX)DTDjTpL",
      ["inverse"] = false,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.scornID = 355240\
aura_env.ireID = 355245",
         },
         ["finish"] = {
         },
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<",
               ["value"] = "30",
               ["variable"] = "minRange",
            },
            ["changes"] = {
               {
                  ["value"] = 60,
                  ["property"] = "height",
               },
               {
                  ["value"] = 60,
                  ["property"] = "width",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<=",
               ["variable"] = "minRange",
               ["value"] = "25",
            },
            ["changes"] = {
               {
                  ["value"] = 75,
                  ["property"] = "height",
               },
               {
                  ["value"] = 75,
                  ["property"] = "width",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.3.text_visible",
               },
               {
                  ["value"] = 30,
                  ["property"] = "sub.2.text_fontSize",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<=",
               ["value"] = "20",
               ["variable"] = "minRange",
            },
            ["changes"] = {
               {
                  ["value"] = 90,
                  ["property"] = "height",
               },
               {
                  ["value"] = 90,
                  ["property"] = "width",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.4.glow",
               },
               {
                  ["value"] = 40,
                  ["property"] = "sub.2.text_fontSize",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<=",
               ["variable"] = "minRange",
               ["value"] = "15",
            },
            ["changes"] = {
               {
                  ["value"] = 120,
                  ["property"] = "height",
               },
               {
                  ["value"] = 120,
                  ["property"] = "width",
               },
               {
                  ["value"] = {
                     1,
                     0,
                     0,
                     1,
                  },
                  ["property"] = "sub.4.glowColor",
               },
            },
         },
      },
      ["information"] = {
      },
      ["parent"] = " SoD - 02 - The Eye of the Jailer",
   },
   [" SoD - 06 - Painsmith Raznal - Phasing"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 220,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 5,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["npcId"] = "176523",
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["use_absorbMode"] = true,
               ["event"] = "Health",
               ["names"] = {
               },
               ["use_npcId"] = true,
               ["percenthealth"] = "75",
               ["spellIds"] = {
               },
               ["use_unit"] = true,
               ["unit"] = "boss",
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = "<=",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["npcId"] = "176523",
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["use_absorbMode"] = true,
               ["event"] = "Health",
               ["names"] = {
               },
               ["use_npcId"] = true,
               ["percenthealth"] = "74",
               ["spellIds"] = {
               },
               ["use_unit"] = true,
               ["unit"] = "boss",
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = ">=",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [3] = {
            ["trigger"] = {
               ["npcId"] = "176523",
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["use_absorbMode"] = true,
               ["event"] = "Health",
               ["names"] = {
               },
               ["use_npcId"] = true,
               ["percenthealth"] = "45",
               ["spellIds"] = {
               },
               ["use_unit"] = true,
               ["unit"] = "boss",
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = "<=",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [4] = {
            ["trigger"] = {
               ["npcId"] = "176523",
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["use_absorbMode"] = true,
               ["event"] = "Health",
               ["names"] = {
               },
               ["use_npcId"] = true,
               ["percenthealth"] = "44",
               ["spellIds"] = {
               },
               ["use_unit"] = true,
               ["unit"] = "boss",
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = ">=",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return (t[1] and t[2]) or (t[3] and t[4])\
end",
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Phase warnings. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_namerealm"] = false,
         ["namerealm"] = "Meeresm",
         ["use_ignoreNameRealm"] = true,
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
         ["ignoreNameRealm"] = "Meeresm",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2430",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 57,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 06 - Painsmith Raznal",
      ["wordWrap"] = "WordWrap",
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["shadowYOffset"] = -1,
      ["id"] = " SoD - 06 - Painsmith Raznal - Phasing",
      ["displayText"] = "PHASING",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["authorOptions"] = {
      },
      ["config"] = {
      },
      ["uid"] = "nZw8PjoscXF",
      ["xOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["preset"] = "alphaPulse",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   [" SoD - 02 - The Eye of the Jailer"] = {
      ["controlledChildren"] = {
         " SoD - The Eye of the Jailer - Debuff Pairs",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 150,
      ["groupIcon"] = 4062740,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 4,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["desc"] = "Eye of the Jailer main group.",
      ["subRegions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = " SoD - 02 - The Eye of the Jailer",
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["authorOptions"] = {
      },
      ["config"] = {
      },
      ["yOffset"] = 90,
      ["borderInset"] = 1,
      ["uid"] = "ZJ3GX1Vlrq8",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 09 - Kel'Thuzad - Scripe Trigger"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_glow"] = false,
            ["do_custom"] = true,
            ["custom"] = "WeakAuras.ScanEvents(\"ECHO_CHEESE_KT_TIMER\",true);",
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["npcId"] = "175559",
               ["use_absorbMode"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["unit"] = "boss",
               ["debuffType"] = "HELPFUL",
               ["spellName"] = 0,
               ["use_track"] = true,
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["use_genericShowOn"] = true,
               ["percenthealth"] = "5.5",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["spellIds"] = {
               },
               ["use_unit"] = true,
               ["use_npcId"] = true,
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = "<=",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "25 second timer when KT is below 5.5%",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 09 - Kel'Thuzad",
      ["wordWrap"] = "WordWrap",
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["displayText"] = "",
      ["id"] = "SoD - 09 - Kel'Thuzad - Scripe Trigger",
      ["yOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["config"] = {
      },
      ["uid"] = "xO5KKSdtU(O",
      ["authorOptions"] = {
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 03 - The Nine - Word of Recall Cast"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.color)then\
        aura_env.region:Color(unpack(aura_env.state.color));\
    end\
end\
\
\
",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = 350687,
               ["use_exact_spellId"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "boss",
               ["spellName"] = 0,
               ["custom_hide"] = "timed",
               ["debuffType"] = "HELPFUL",
               ["use_unit"] = true,
               ["type"] = "unit",
               ["custom_type"] = "stateupdate",
               ["subeventSuffix"] = "_CAST_START",
               ["events"] = "CLEU:SPELL_CAST_SUCCESS",
               ["use_spellName"] = true,
               ["event"] = "Cast",
               ["use_genericShowOn"] = true,
               ["realSpellName"] = 0,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_absorbMode"] = true,
               ["check"] = "event",
               ["names"] = {
               },
               ["use_track"] = true,
               ["customVariables"] = "{\
    progressType = \"string\",\
}\
\
\
",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0.89803921568627,
         0,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "RIGHT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%n%c",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "LEFT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_n_format"] = "none",
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_c_format"] = "none",
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_size"] = 2,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_offset"] = 0,
         },
      },
      ["height"] = 40,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2429",
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 03 - The Nine - Word of Recall DG",
      ["desc"] = "Bar for Word of Recall casts. ",
      ["icon"] = true,
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "\
\
",
         },
         ["init"] = {
            ["do_custom"] = false,
            ["custom"] = "\
\
",
         },
         ["finish"] = {
         },
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["xOffset"] = 0,
      ["uid"] = "q4m8JQwyoxW",
      ["icon_side"] = "LEFT",
      ["config"] = {
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["anchorFrameType"] = "SCREEN",
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["width"] = 300,
      ["id"] = "SoD - 03 - The Nine - Word of Recall Cast",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = true,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "progressType",
               ["value"] = "static",
               ["op"] = "==",
            },
            ["changes"] = {
               {
                  ["value"] = false,
                  ["property"] = "sub.5.border_visible",
               },
               {
                  ["property"] = "sub.3.text_visible",
               },
               {
                  ["value"] = {
                     1,
                     1,
                     1,
                     0,
                  },
                  ["property"] = "backgroundColor",
               },
               {
               },
            },
         },
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   ["SoD - 03 - The Nine - Fragment of Destiny - Dispel Assigment"] = {
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.order)then\
        return aura_env.state.order == 1 and \"GO\" or (\"WAIT \"..(aura_env.state.order - 1));\
    else\
        return \"Test\"\
    end\
end",
      ["yOffset"] = 10,
      ["anchorPoint"] = "CENTER",
      ["actions"] = {
         ["start"] = {
            ["do_sound"] = false,
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.dispellOrder = {};\
aura_env.stacker = \"raid20\";",
         },
         ["finish"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
            ["do_sound"] = true,
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["customVariables"] = "{\
    order = \"number\",\
    isPlayer = \"bool\",\
}\
\
\
",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(spellID == 350542 and not UnitIsUnit(aura_env.stacker,destName) and UnitIsPlayer(destName))then\
            \
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                table.insert(aura_env.dispellOrder,destName);\
                elogl(\"New dispell debuff\",destName);\
            else\
                elogl(\"Dispell debuff\",destName);\
                for i,guy in ipairs(aura_env.dispellOrder) do\
                    if(guy == destName)then\
                        table.remove(aura_env.dispellOrder,i);\
                        break;\
                    end\
                end\
            end\
            \
            for _, state in pairs(allstates) do\
                state.show = false\
                state.changed = true\
            end\
            \
            for i,guy in ipairs(aura_env.dispellOrder) do\
                if(UnitIsUnit(guy,\"player\"))then\
                    allstates[\"\"] = {\
                        changed = true,\
                        show = true,\
                        progressType = \"static\",\
                        value = 1,\
                        total = 1,\
                        order = i,\
                    };\
                    break;\
                end\
            end\
            \
            WeakAuras.ScanEvents(\"ECHO_FRAGMENT_UPDATE\",aura_env.dispellOrder[1],aura_env.stacker);\
            \
            return true;\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        wipe(aura_env.dispellOrder);\
    end\
end\
\
\
\
",
               ["spellIds"] = {
               },
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED,ENCOUNTER_START",
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["names"] = {
               },
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desaturate"] = false,
      ["rotation"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%c1",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "CENTER",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_text_format_order_format"] = "none",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_c1_format"] = "none",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
         },
      },
      ["height"] = 50,
      ["rotate"] = true,
      ["load"] = {
         ["use_encounterid"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2429",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["mirror"] = false,
      ["regionType"] = "texture",
      ["blendMode"] = "BLEND",
      ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["discrete_rotation"] = 0,
      ["selfPoint"] = "TOP",
      ["alpha"] = 1,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 03 - The Nine - Fragment of Destiny - Dispel Assigment",
      ["width"] = 50,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["uid"] = "lXep32eQKmt",
      ["config"] = {
      },
      ["color"] = {
         0,
         1,
         0.047058823529412,
         0.73076811432838,
      },
      ["parent"] = " SoD - 03 - The Nine",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "isPlayer",
               ["value"] = 0,
            },
            ["changes"] = {
               {
                  ["property"] = "alpha",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = ">",
               ["value"] = "1",
               ["variable"] = "order",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0.027450980392157,
                     0,
                     0.6538450717926,
                  },
                  ["property"] = "color",
               },
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RingingPhone.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
      },
      ["information"] = {
      },
      ["desc"] = "Shows a colour for when you're next to be dispelled. \
Dispell target is \"raid20\"\
",
   },
   ["SoD - 07 -Guardian of the First Ones - Personals"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = " SoD - 07 - Guardian of the First Ones",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["displayText_format_msg_format"] = "none",
      ["yOffset"] = 120,
      ["anchorPoint"] = "CENTER",
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.personals =\
{\
    {\
        [1] = \"\",\
        [2] = \"\",\
        [3] = \"\",\
        [4] = \"\",\
        [5] = \"\",\
        [6] = \"\",\
    },\
    {\
        [1] = \"\",\
        [2] = \"\",\
        [3] = \"\",\
        [4] = \"\",\
        [5] = \"\",\
        [6] = \"\",\
    },\
    {\
        [1] = \"\",\
        [2] = \"\",\
        [3] = \"\",\
        [4] = \"\",\
        [5] = \"\",\
        [6] = \"\",\
    },\
    {\
        [1] = \"\",\
        [2] = \"\",\
        [3] = \"\",\
        [4] = \"\",\
        [5] = \"\",\
        [6] = \"\",\
    },\
};",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["events"] = "CLEU:SPELL_CAST_START:SPELL_CAST_SUCCESS ENCOUNTER_START",
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        if(subEvent == \"SPELL_CAST_START\")then\
            if(spellID == 352538)then\
                aura_env.cast = aura_env.cast + 1;\
                \
                local msg = aura_env.personals[aura_env.set][aura_env.cast];\
                if(msg and msg ~= \"\")then\
                    allstates[\"\"] = \
                    {\
                        changed = true,\
                        show = true,\
                        progressType = \"timed\",\
                        duration = 5,\
                        expirationTime = GetTime() + 5,\
                        autoHide = true,\
                        msg = msg,\
                    };\
                    return true;\
                end\
            end\
        elseif(subEvent == \"SPELL_CAST_SUCCESS\")then\
            if(spellID == 352589)then\
                aura_env.set = aura_env.set + 1;\
                aura_env.cast = 0;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.set = 1;\
        aura_env.cast = 0;\
    elseif(event == \"OPTIONS\")then\
        allstates[\"\"] = \
        {\
            changed = true,\
            show = true,\
            progressType = \"timed\",\
            duration = 5,\
            expirationTime = GetTime() + 5,\
            autoHide = true,\
            msg = \"Your text?\",\
        };\
        return true;\
    end\
end",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["displayText_format_p_time_legacy_floor"] = true,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "Reminder for personal CDs during Purging Protocol. Add your own spells to Actions - Init as needed. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2436",
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 35,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["internalVersion"] = 53,
      ["displayText_format_p_time_mod_rate"] = true,
      ["displayText_format_p_time_precision"] = 1,
      ["conditions"] = {
      },
      ["authorOptions"] = {
      },
      ["wordWrap"] = "WordWrap",
      ["justify"] = "CENTER",
      ["shadowYOffset"] = -1,
      ["id"] = "SoD - 07 -Guardian of the First Ones - Personals",
      ["uid"] = "TvXA10H2GxT",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["config"] = {
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText"] = "%msg\
%p",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["selfPoint"] = "BOTTOM",
   },
   ["SoD - 07 -Guardian of the First Ones - Soak Assigment"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = " SoD - 07 - Guardian of the First Ones",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["customText"] = "function()\
    return aura_env.state.marker and (\"{rt\"..aura_env.state.marker..\"}\") or \"{rt2}\";\
end",
      ["yOffset"] = 120,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 3,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "local aura_env = aura_env;\
aura_env.updateIndexTarget = 0;\
\
local logPrefix = \"GOFOAss\";\
function aura_env.log(...)\
    EchoInternal:RemoteLog(logPrefix,...);\
end\
\
function aura_env.logl(...)\
    if(UnitIsGroupLeader(\"player\"))then\
        EchoInternal:RemoteLog(logPrefix,...);\
    end\
end\
\
function aura_env.print(...)\
    print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.printError(...)\
    print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.TryReadNote()\
    aura_env.initialized = false;\
    aura_env.rotations = {};\
    \
    local noteData, errorString = EchoInternal:ReadEXRTNote();\
    if(errorString)then\
        aura_env.printError(\"Note parse failed,\",errorString);\
        aura_env.logl(\"Note parsing failed:\",errorString);\
        return;\
    end\
    \
    for _,noteInfo in ipairs(noteData)do\
        local rotation = {};\
        if(noteInfo.identifier == \"soak\")then\
            for rotationIdx,currentRotation in ipairs(noteInfo.rotation)do\
                table.insert(rotation,currentRotation[1]);\
            end\
        end\
        table.insert(aura_env.rotations,rotation);\
    end\
    \
    aura_env.logl(\"Init successful:\",#aura_env.rotations);\
    \
    aura_env.initialized = true;\
end",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["customVariables"] = "{TTS = \"bool\",}",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_CAST_START\")then\
            if(spellID == 355352)then\
                aura_env.obliterateCast = aura_env.obliterateCast + 1;\
                local rotation = aura_env.rotations[aura_env.obliterateCast];\
                if(rotation)then\
                    for _,guy in ipairs(rotation)do\
                        if(UnitIsUnit(\"player\",guy))then\
                            allstates[\"\"] = \
                            {\
                                changed = true,\
                                show = true,\
                                autoHide = true,\
                                progressType = \"timed\",\
                                duration = 2,\
                                expirationTime = GetTime() + 2,\
                                msg = \"SOAK\",\
                                TTS = true,\
                            };\
                            \
                            --EchoInternal:DoTTS(\"SOAK\");\
                        end\
                        \
                        if(aura_env.config.showGlow)then\
                            EchoInternal:ShowGlowForTimePeriod(guy,{\
                                    glowType = \"Pixel\",\
                                    color = aura_env.config.glowColor,\
                            },2);\
                        end\
                    end\
                    \
                    return true;\
                end\
            elseif(spellID == 350732)then\
                local rotation = aura_env.rotations[aura_env.obliterateCast + 1];\
                if(rotation)then\
                    for _,guy in ipairs(rotation)do\
                        if(UnitIsUnit(\"player\",guy))then\
                            allstates[\"\"] = \
                            {\
                                changed = true,\
                                show = true,\
                                autoHide = true,\
                                progressType = \"timed\",\
                                duration = 2,\
                                expirationTime = GetTime() + 2,\
                                msg = \"SOAK SOONISH\",\
                            };\
                            \
                            return true;\
                        end\
                    end                  \
                end\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\" and ...)then\
        aura_env.obliterateCast = 0;\
        if(not aura_env.initialized)then\
            aura_env.TryReadNote();\
        end\
    elseif(event == \"EXRT_NOTE_UPDATE\")then\
        aura_env.updateIndexTarget = aura_env.updateIndexTarget + 1;\
        local upEnv = aura_env;\
        local updateIndexTarget = aura_env.updateIndexTarget;\
        C_Timer.After(1,function()\
                if(upEnv.updateIndexTarget == updateIndexTarget)then\
                    upEnv.TryReadNote();\
                    upEnv.updateIndexTarget = 0;\
                end\
        end);\
    end\
end",
               ["names"] = {
               },
               ["check"] = "event",
               ["spellIds"] = {
               },
               ["events"] = "ECHO_OBLITERATE_CAST ENCOUNTER_START EXRT_NOTE_UPDATE CLEU:SPELL_CAST_START",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["displayText_format_p_time_legacy_floor"] = true,
      ["selfPoint"] = "BOTTOM",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_zoneIds"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = false,
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["encounterid"] = "2436",
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "2001",
      },
      ["fontSize"] = 45,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["shadowYOffset"] = -1,
      ["displayText_format_p_time_mod_rate"] = true,
      ["fixedWidth"] = 200,
      ["displayText_format_p_time_precision"] = 1,
      ["displayText"] = "%msg\
%p",
      ["displayText_format_msg_format"] = "none",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "CENTER",
      ["config"] = {
         ["showGlow"] = true,
         ["glowColor"] = {
            1,
            0.90980392156863,
            0,
            1,
         },
      },
      ["id"] = "SoD - 07 -Guardian of the First Ones - Soak Assigment",
      ["authorOptions"] = {
         {
            ["type"] = "toggle",
            ["key"] = "showGlow",
            ["useDesc"] = false,
            ["default"] = true,
            ["name"] = "Show Glow",
            ["width"] = 1,
         },
         {
            ["type"] = "color",
            ["key"] = "glowColor",
            ["useDesc"] = false,
            ["default"] = {
               1,
               0.90980392156863,
               0,
               1,
            },
            ["name"] = "Glow Color",
            ["width"] = 1,
         },
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["wordWrap"] = "WordWrap",
      ["uid"] = "EfAWXogc8Oc",
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["xOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "TTS",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["message_type"] = "TTS",
                     ["message_voice"] = 0,
                     ["message"] = "%msg",
                     ["message_format_msg_format"] = "none",
                  },
                  ["property"] = "chat",
               },
            },
         },
      },
      ["information"] = {
      },
      ["internalVersion"] = 53,
   },
   [" SoD - 03 - The Nine"] = {
      ["controlledChildren"] = {
         "SoD - 03 - The Nine - Soak Assigment",
         "SoD - 03 - The Nine - Fragment of Destiny - Dispel Assigment",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["oName"] = "SoD - 03 - The Nine",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "The Nine, non-Dynamic Auras. \
",
      ["subRegions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["mVersion"] = 4,
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["selfPoint"] = "CENTER",
      ["borderOffset"] = 4,
      ["authorOptions"] = {
      },
      ["tocversion"] = 90100,
      ["id"] = " SoD - 03 - The Nine",
      ["echoVersion"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "Yr2J932ll8b",
      ["borderInset"] = 1,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["config"] = {
      },
      ["groupIcon"] = 4062741,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["parent"] = "SoD - 03 - The Nine main Group",
   },
   ["SoD - 10 - Sylvanas Windrunner - Wailing Arrow P3"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["parent"] = "SoD - 10 - Sylvanas Windrunner",
      ["yOffset"] = 10,
      ["anchorPoint"] = "CENTER",
      ["desaturateBackground"] = false,
      ["sameTexture"] = false,
      ["desaturateForeground"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["customVariables"] = "{\
    expirationTime = true,\
}",
               ["subeventSuffix"] = "_CAST_START",
               ["useExactSpellId"] = true,
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Combat Log",
               ["names"] = {
               },
               ["unit"] = "player",
               ["spellIds"] = {
               },
               ["events"] = "ECHO_SYLVANAS_ARROW",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"ECHO_SYLVANAS_ARROW\")then\
        local guy, duration = ...;\
        \
        if(guy and UnitIsUnit(guy,\"player\"))then\
            \
            elog(\"SYLV P3 ARROW\",duration - 1);\
            \
            allstates[\"\"] = {\
                show = true,\
                changed = true,\
                progressType = \"timed\",\
                duration = duration - 2,\
                expirationTime = GetTime() + duration - 2,\
                autoHide = true,\
            };                \
            \
            return true;\
        end\
    end\
end",
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["auraspellids"] = {
                  "348064",
               },
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["endAngle"] = 360,
      ["internalVersion"] = 53,
      ["selfPoint"] = "TOP",
      ["desc"] = "Wailing Arrow in P3 timer",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "%p",
            ["text_text_format_p_format"] = "timed",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_n_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "CENTER",
            ["text_visible"] = true,
            ["text_text_format_p_time_format"] = 0,
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
      },
      ["height"] = 50,
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
      ["crop_y"] = 0.41,
      ["backgroundColor"] = {
         1,
         0,
         0,
         0.5,
      },
      ["useAdjustededMax"] = false,
      ["fontSize"] = 12,
      ["crop_x"] = 0.41,
      ["startAngle"] = 0,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
            ["do_custom"] = false,
            ["custom"] = "--EchoInternal:DoTTS(\"GO\");",
            ["do_sound"] = false,
         },
      },
      ["mirror"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["blendMode"] = "BLEND",
      ["uid"] = "9ZC6(Jt1elk",
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["slantMode"] = "INSIDE",
      ["width"] = 50,
      ["frameStrata"] = 1,
      ["echoVersion"] = 1,
      ["xOffset"] = 0,
      ["compress"] = false,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 10 - Sylvanas Windrunner - Wailing Arrow P3",
      ["foregroundColor"] = {
         1,
         0,
         0,
         1,
      },
      ["alpha"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["config"] = {
      },
      ["inverse"] = false,
      ["authorOptions"] = {
      },
      ["orientation"] = "CLOCKWISE",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<",
               ["value"] = "4",
               ["variable"] = "expirationTime",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     0.95686274509804,
                     0.92549019607843,
                     0.13333333333333,
                     0.51000002026558,
                  },
                  ["property"] = "backgroundColor",
               },
               {
                  ["value"] = {
                     1,
                     1,
                     0,
                     1,
                  },
                  ["property"] = "foregroundColor",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<",
               ["value"] = "1",
               ["variable"] = "expirationTime",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     0.18039215686275,
                     1,
                     0,
                     0.38999998569489,
                  },
                  ["property"] = "backgroundColor",
               },
               {
                  ["value"] = {
                     0.21960784313725,
                     1,
                     0,
                     1,
                  },
                  ["property"] = "foregroundColor",
               },
            },
         },
      },
      ["information"] = {
      },
      ["backgroundOffset"] = 0,
   },
   ["SoD - 03 - The Nine - Word of Recall"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.color)then\
        aura_env.region:Color(unpack(aura_env.state.color));\
    end\
end\
\
\
",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["oName"] = "SoD - 03 - The Nine - Word of Recall",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "\
\
",
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "local soak = \
{\
    name = \"Soak\",\
    duration = 8,\
    color = {180/255,0,176/255,1},\
    icon = 2103905,\
};\
\
local meteor = \
{\
    name = \"Meteor\",\
    duration = 8,\
    color = {0,118/255,211/255,1},\
    icon = 135988,\
};\
\
local blade = \
{\
    name = \"Blade\",\
    duration = 0,\
    icon = 1376744,\
};\
\
local smallBomb = \
{\
    name = \"Small Bomb\",\
    duration = 6,\
    color = {1,122/255,0,1},\
    icon = 460699,\
};\
\
local bigBomb = \
{\
    name = \"Big Bomb\",\
    duration = 10,\
    color = {144/255,0,6/255,1},\
    icon = 425955,\
};\
\
local shield = \
{\
    name = \"Shield\",\
    duration = 0,\
    icon = 1320371,\
};\
\
aura_env.rotation = \
{\
    {blade,meteor,smallBomb},\
    {soak,bigBomb,shield},\
    {blade,meteor,blade},\
    {soak,smallBomb,meteor},\
    {bigBomb,smallBomb,shield},\
};\
\
function aura_env.wordOfRecallStart(allstates,counter)\
    \
    local rem = (counter - 1) % #aura_env.rotation;\
    local rotation = aura_env.rotation[rem == 0 and #aura_env.rotation or rem];\
    \
    for i,spellInfo in ipairs(rotation)do\
        allstates[i] = {\
            changed = true,\
            show = true,\
            color = spellInfo.color,\
            name = spellInfo.name,\
            icon = spellInfo.icon,\
        };\
        \
        local state = allstates[i];\
        \
        if(spellInfo.duration > 0)then\
            state.progressType = \"timed\";\
            state.duration = spellInfo.duration;\
            state.expirationTime = GetTime() + spellInfo.duration;\
        else\
            state.progressType = \"static\";\
            state.value = 0;\
            state.total = 1;\
        end\
        \
        if(state.name == \"Soak\" and not WeakAuras.IsOptionsOpen())then\
            WeakAuras.ScanEvents(\"ECHO_NINE_ARMAGEDON_SOAK\",spellInfo.duration);\
        end\
    end\
end\
\
function aura_env.wordOfRecallPre(allstates,counter)\
    local rem = (counter - 1) % #aura_env.rotation;\
    local rotation = tDClone(aura_env.rotation[rem == 0 and #aura_env.rotation or rem]);\
    \
    table.sort(rotation,function(t1,t2)\
            return t1.duration < t2.duration;\
    end);\
    \
    for i,spellInfo in ipairs(rotation)do\
        allstates[i] = {\
            changed = true,\
            show = true,\
            color = spellInfo.color,\
            name = spellInfo.name,\
            icon = spellInfo.icon,\
            progressType = \"static\",\
            total = 1,\
            value = 1,\
        };  \
    end\
end",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["custom_type"] = "stateupdate",
               ["customVariables"] = "{\
    progressType = \"string\",\
}\
\
\
",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["names"] = {
               },
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(subEvent == \"SPELL_CAST_SUCCESS\")then\
            if(spellID == 350687)then\
                aura_env.wordOfRecallStart(allstates,aura_env.counter);\
                return true;\
            elseif(spellID == 350467)then\
                aura_env.counter = aura_env.counter + 1;\
                if(aura_env.stage == 2)then\
                    aura_env.active = true;\
                end\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.counter = 1;\
        aura_env.stage = 1;\
        aura_env.active = false;\
    elseif(event == \"UNIT_SPELLCAST_SUCCEEDED\")then\
        local unit,cast,spellID = ...;\
        if(unit and UnitIsUnit(unit,\"boss1\") and spellID == 350745)then\
            aura_env.stage = 2;\
        end\
        \
    elseif(event == \"UNIT_POWER_UPDATE\")then\
        local unit = ...;\
        if(unit)then\
            local power = UnitPower(unit);\
            if(aura_env.stage == 2 and aura_env.active)then\
                if(power >= 65)then\
                    if(allstates[1])then\
                        for _,state in pairs(allstates)do\
                            state.changed = true;\
                            state.show = false;\
                        end\
                        return true;\
                    end\
                elseif(power >= 31)then\
                    if(not allstates[1])then\
                        aura_env.wordOfRecallPre(allstates,aura_env.counter );\
                        return true;\
                    end\
                end\
            end\
        end        \
    elseif(event == \"OPTIONS\")then\
        aura_env.wordOfRecallStart(allstates, math.random(1,#aura_env.rotation));\
        --aura_env.wordOfRecallPre(allstates, math.random(1,#aura_env.rotation));\
        \
        return true;\
    end\
end",
               ["events"] = "CLEU:SPELL_CAST_SUCCESS,ENCOUNTER_START,UNIT_POWER_UPDATE:boss1,UNIT_SPELLCAST_SUCCEEDED:boss1",
               ["spellIds"] = {
               },
               ["custom_hide"] = "timed",
               ["check"] = "event",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0.47843137254902,
         0,
         0,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "RIGHT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["anchorXOffset"] = 0,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_visible"] = true,
            ["text_fontSize"] = 20,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%n%c",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "LEFT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_fontType"] = "OUTLINE",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_c_format"] = "none",
         },
         {
            ["border_size"] = 2,
            ["border_anchor"] = "bar",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["type"] = "subborder",
         },
      },
      ["height"] = 35,
      ["load"] = {
         ["use_encounterid"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2429",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 03 - The Nine - Word of Recall DG",
      ["desc"] = "Word of Recall timers. \
Separate coloured timers for Soak, Shield, Big bomb, Small bomb, Blade, and Meteor. ",
      ["icon"] = true,
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["authorOptions"] = {
      },
      ["uid"] = "5TQuegppD()",
      ["icon_side"] = "LEFT",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["zoom"] = 0,
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["width"] = 200,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "SoD - 03 - The Nine - Word of Recall",
      ["config"] = {
      },
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "progressType",
               ["op"] = "==",
               ["value"] = "static",
            },
            ["changes"] = {
               {
                  ["value"] = false,
                  ["property"] = "sub.3.text_visible",
               },
            },
         },
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   [" SoD - 03 - The Nine - Word of Recall DG"] = {
      ["arcLength"] = 360,
      ["controlledChildren"] = {
         "SoD - 03 - The Nine - Word of Recall Cast",
         "SoD - 03 - The Nine - Word of Recall",
         "SoD - 03 - The Nine - Call of the Valkyr",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["groupIcon"] = "4062741",
      ["anchorPoint"] = "CENTER",
      ["oName"] = "SoD - 03 - The Nine - Word of Recall DG",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["space"] = 2,
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["internalVersion"] = 53,
      ["useLimit"] = false,
      ["align"] = "CENTER",
      ["desc"] = "The Nine, Dynamic Auras. ",
      ["stagger"] = 0,
      ["rotation"] = 0,
      ["subRegions"] = {
      },
      ["selfPoint"] = "TOP",
      ["echoVersion"] = 1,
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["yOffset"] = 224.99981689453,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["radius"] = 200,
      ["animate"] = false,
      ["uid"] = "1gGnMYrgSA9",
      ["scale"] = 1,
      ["fullCircle"] = true,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["limit"] = 5,
      ["sort"] = "hybrid",
      ["frameStrata"] = 1,
      ["parent"] = "SoD - 03 - The Nine main Group",
      ["hybridSortMode"] = "ascending",
      ["constantFactor"] = "RADIUS",
      ["config"] = {
      },
      ["borderOffset"] = 4,
      ["rowSpace"] = 1,
      ["tocversion"] = 90100,
      ["id"] = " SoD - 03 - The Nine - Word of Recall DG",
      ["hybridPosition"] = "hybridFirst",
      ["gridWidth"] = 5,
      ["anchorFrameType"] = "SCREEN",
      ["grow"] = "DOWN",
      ["borderInset"] = 1,
      ["xOffset"] = -470.00006103516,
      ["mVersion"] = 6,
      ["gridType"] = "RD",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 07 - Guardian of the First Ones - Boss4 Energy "] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.soak)then\
        if(aura_env.state.soak == 1)then\
            return \"MIDDLE\";\
        elseif(aura_env.state.soak == 2)then\
            return \"LEFT\";\
        else\
            return \"RIGHT\";\
        end\
    else\
        return \"LEFT?\";\
    end\
end\
\
\
\
",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "unit",
               ["subeventSuffix"] = "_CAST_START",
               ["use_absorbMode"] = true,
               ["event"] = "Power",
               ["names"] = {
               },
               ["use_specific_unit"] = true,
               ["spellIds"] = {
               },
               ["specificUnit"] = "boss2",
               ["unit"] = "boss4",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0.93725490196078,
         0.70980392156863,
         0,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["type"] = "subtext",
            ["text_anchorXOffset"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_visible"] = true,
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "3",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_text_format_unit_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_fontType"] = "OUTLINE",
         },
         {
            ["border_offset"] = 0,
            ["border_anchor"] = "bar",
            ["border_size"] = 2,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["type"] = "subborder",
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2436",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 07 - Guardian of the First Ones DG",
      ["desc"] = "Simple power display for boss4\
",
      ["icon"] = false,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["xOffset"] = 0,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["icon_side"] = "RIGHT",
      ["uid"] = "p1cLlsv(CzO",
      ["zoom"] = 0,
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["width"] = 201,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "SoD - 07 - Guardian of the First Ones - Boss4 Energy ",
      ["config"] = {
      },
      ["inverse"] = false,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 09 - Kel'Thuzad - Blizzard End"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    return aura_env.state.hpPerc and string.format(\"%.0f\",aura_env.state.hpPerc * 100) or \"5\"\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "354198",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["use_absorbMode"] = true,
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["duration"] = "20",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["unit"] = "boss",
               ["names"] = {
               },
               ["use_unit"] = true,
               ["use_exact_spellId"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["npcId"] = "175559",
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["use_absorbMode"] = true,
               ["event"] = "Health",
               ["unit"] = "boss",
               ["use_npcId"] = true,
               ["percenthealth"] = "5",
               ["use_unit"] = true,
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = ">",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0.55294117647059,
         0,
         1,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["border_offset"] = 0,
            ["border_anchor"] = "bar",
            ["border_size"] = 2,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["type"] = "subborder",
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text"] = "%p",
            ["text_text_format_p_format"] = "timed",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_n_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_visible"] = true,
            ["text_shadowXOffset"] = 1,
            ["text_fontSize"] = 17,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "DONT PUSH",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_text_format_p_time_format"] = 0,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["anchorXOffset"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_n_format"] = "none",
            ["text_text_format_p_format"] = "timed",
            ["text_fontSize"] = 17,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_p_time_precision"] = 1,
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["use_encounterid"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 09 - Kel'Thuzad DG",
      ["desc"] = "Warning timer during Howling Blizzard when boss health > 5%",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["xOffset"] = 0,
      ["uid"] = ")lo9VQO7spa",
      ["icon_side"] = "RIGHT",
      ["config"] = {
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["width"] = 200,
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "SoD - 09 - Kel'Thuzad - Blizzard End",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = true,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 04 - Remnant of Ner'zhul - Malevolence Timer"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = " SoD - 04 - Remnant of Ner'zhul DG",
      ["displayText"] = "%p",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["debuffType"] = "HARMFUL",
               ["useMatch_count"] = true,
               ["useGroup_count"] = false,
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["group_count"] = "0",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "raid",
               ["auranames"] = {
                  "350469",
               },
               ["spellIds"] = {
               },
               ["type"] = "aura2",
               ["match_count"] = "0",
               ["useName"] = true,
               ["match_countOperator"] = ">",
               ["group_countOperator"] = ">",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["displayText_format_p_time_legacy_floor"] = true,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "Bomb timer. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2432",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 40,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["wordWrap"] = "WordWrap",
      ["selfPoint"] = "BOTTOM",
      ["conditions"] = {
      },
      ["displayText_format_p_time_precision"] = 1,
      ["displayText_format_p_time_mod_rate"] = true,
      ["internalVersion"] = 53,
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["justify"] = "LEFT",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 04 - Remnant of Ner'zhul - Malevolence Timer",
      ["config"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "Ar06dno2Uq8",
      ["authorOptions"] = {
      },
      ["yOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["xOffset"] = 0,
   },
   [" SoD - 09 - Kel'Thuzad main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 09 - Kel'Thuzad",
         " SoD - 09 - Kel'Thuzad DG",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["selfPoint"] = "CENTER",
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["groupIcon"] = "4062734",
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["yOffset"] = 0,
      ["borderInset"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["uid"] = "1W5svhfVcA2",
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["id"] = " SoD - 09 - Kel'Thuzad main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "Kel'Thuzad main Group",
      ["authorOptions"] = {
      },
      ["config"] = {
      },
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
   ["SoD - 03 - The Nine - Soak Assigment"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = " SoD - 03 - The Nine",
      ["displayText"] = "%c1 SOAK %c1",
      ["customText"] = "function()\
    return aura_env.state.marker and (\"{rt\"..aura_env.state.marker..\"}\") or \"{rt2}\";\
end",
      ["yOffset"] = 120,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 4,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "local aura_env = aura_env;\
aura_env.updateIndexTarget = 0;\
\
local logPrefix = \"NineAss\";\
function aura_env.log(...)\
    EchoInternal:RemoteLog(logPrefix,...);\
end\
\
function aura_env.logl(...)\
    if(UnitIsGroupLeader(\"player\"))then\
        EchoInternal:RemoteLog(logPrefix,...);\
    end\
end\
\
function aura_env.print(...)\
    print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.printError(...)\
    print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.TryReadNote()\
    aura_env.initialized = false;\
    aura_env.rotation = {};\
    \
    local noteData, errorString = EchoInternal:ReadEXRTNote();\
    if(errorString)then\
        aura_env.printError(\"Note parse failed,\",errorString);\
        aura_env.logl(\"Note parsing failed:\",errorString);\
        return;\
    end\
    \
    for _,noteInfo in ipairs(noteData)do\
        if(noteInfo.identifier == \"soak\")then\
            for rotationIdx,rotation in ipairs(noteInfo.rotation)do\
                for _,guy in ipairs(rotation)do\
                    table.insert(aura_env.rotation,guy);\
                end\
            end\
        end        \
    end\
    \
    if(#aura_env.rotation ~= 4)then\
        local log = \"Not enough people in #soak. Found: \"..#aura_env.rotation..\" Need: 4\";\
        aura_env.printError(log);\
        aura_env.logl(log);\
        return;\
    end\
    \
    aura_env.logl(\"Init successful:\",#aura_env.rotation);\
    \
    aura_env.initialized = true;\
end",
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\" and spellID == 350078)then\
            \
            local duration = 6;\
            for marker,guy in ipairs(aura_env.rotation)do\
                if(UnitIsUnit(\"player\",guy))then\
                    allstates[\"\"] = \
                    {\
                        changed = true,\
                        show = true,\
                        autoHide = true,\
                        progressType = \"timed\",\
                        duration = duration,\
                        expirationTime = GetTime() + duration,\
                        marker = marker,\
                    };\
                end\
            end\
            \
            if(aura_env.config.showGlow)then\
                EchoInternal:ShowGlowForTimePeriod(destName,{\
                        glowType = \"Pixel\",\
                        color = aura_env.config.glowColor,\
                },duration);\
            end\
            \
            return true;\
        end\
    elseif((event == \"ENCOUNTER_START\" or event == \"READY_CHECK\") and ...)then\
        if(not aura_env.initialized)then\
            aura_env.TryReadNote();\
        end\
    elseif(event == \"EXRT_NOTE_UPDATE\")then\
        aura_env.updateIndexTarget = aura_env.updateIndexTarget + 1;\
        local upEnv = aura_env;\
        local updateIndexTarget = aura_env.updateIndexTarget;\
        C_Timer.After(1,function()\
                if(upEnv.updateIndexTarget == updateIndexTarget)then\
                    upEnv.TryReadNote();\
                    upEnv.updateIndexTarget = 0;\
                end\
        end);\
    end\
end",
               ["events"] = "READY_CHECK ENCOUNTER_START EXRT_NOTE_UPDATE CLEU:SPELL_AURA_APPLIED",
               ["check"] = "event",
               ["names"] = {
               },
               ["custom_type"] = "stateupdate",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["displayText_format_c1SOAK_format"] = "none",
      ["fontSize"] = 45,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["load"] = {
         ["use_encounterid"] = false,
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_zoneIds"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2429",
         ["size"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "1999",
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["displayText_format_p_time_precision"] = 1,
      ["fixedWidth"] = 200,
      ["wordWrap"] = "WordWrap",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["justify"] = "LEFT",
      ["authorOptions"] = {
         {
            ["type"] = "toggle",
            ["useDesc"] = false,
            ["key"] = "showGlow",
            ["name"] = "Show Glow",
            ["default"] = true,
            ["width"] = 1,
         },
         {
            ["type"] = "color",
            ["useDesc"] = false,
            ["key"] = "glowColor",
            ["name"] = "Glow Color",
            ["default"] = {
               1,
               0.51372549019608,
               0,
               1,
            },
            ["width"] = 1,
         },
      },
      ["id"] = "SoD - 03 - The Nine - Soak Assigment",
      ["config"] = {
         ["showGlow"] = true,
         ["glowColor"] = {
            1,
            0.51372549019608,
            0,
            1,
         },
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["displayText_format_c1_format"] = "none",
      ["uid"] = "SxMg7GGxxSr",
      ["shadowYOffset"] = -1,
      ["xOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
   },
   [" SoD - 08 - Fatescribe Roh-Kalo"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 08 - Fatescribe Roh-Kalo - Adds Too Close Warning ",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["selfPoint"] = "CENTER",
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["groupIcon"] = 4062732,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["yOffset"] = 0,
      ["parent"] = "SoD - 08 - Fatescribe Roh-Kalo main Group",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["borderInset"] = 1,
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["id"] = " SoD - 08 - Fatescribe Roh-Kalo",
      ["config"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["borderOffset"] = 4,
      ["uid"] = "odLHjigP(Ng",
      ["borderSize"] = 2,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["authorOptions"] = {
      },
   },
   [" SoD - 06 - Painsmith Raznal - Dance DG Sadge"] = {
      ["grow"] = "GRID",
      ["controlledChildren"] = {
         "SoD - 06 - Painsmith Raznal - Dance",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "SoD - 06 - Painsmith Raznal main Group",
      ["groupIcon"] = 4062735,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 10,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["rowSpace"] = 2,
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["radius"] = 200,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["align"] = "CENTER",
      ["desc"] = "Painsmith Raznal Dynamic Group",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["space"] = 2,
      ["animate"] = false,
      ["useLimit"] = false,
      ["scale"] = 1,
      ["gridType"] = "RU",
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["limit"] = 5,
      ["selfPoint"] = "BOTTOMLEFT",
      ["sort"] = "none",
      ["borderInset"] = 1,
      ["config"] = {
      },
      ["constantFactor"] = "RADIUS",
      ["fullCircle"] = true,
      ["borderOffset"] = 4,
      ["frameStrata"] = 1,
      ["tocversion"] = 90100,
      ["id"] = " SoD - 06 - Painsmith Raznal - Dance DG Sadge",
      ["internalVersion"] = 53,
      ["gridWidth"] = 13,
      ["anchorFrameType"] = "SCREEN",
      ["arcLength"] = 360,
      ["uid"] = "CmXmC(qCqLt",
      ["authorOptions"] = {
      },
      ["xOffset"] = -703.79963684082,
      ["yOffset"] = 53.100280761719,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["rotation"] = 0,
   },
   ["SoD - 05 - Soulrender Dormazain main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 05 - Soulrender Dormazain",
         " SoD - 05 - Soulrender Dormazain DG",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["groupIcon"] = "4062737",
      ["uid"] = "uew3bfS2GJL",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["config"] = {
      },
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["id"] = "SoD - 05 - Soulrender Dormazain main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "Soulrender Dormazain main Group",
      ["selfPoint"] = "CENTER",
      ["borderInset"] = 1,
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
   ["SoD - 10 - Sylvanas Windrunner - Chains"] = {
      ["outline"] = "OUTLINE",
      ["xOffset"] = 0,
      ["displayText"] = "%c1\
%p",
      ["customText"] = "function()\
    if not WeakAuras.IsOptionsOpen() then\
        local soak = aura_env.state.isLeft and \"LEFT\" or \"RIGHT\";\
        if(aura_env.state.shouldSoak and (not aura_env.last or aura_env.last < GetTime() - 1))then\
            aura_env.last = GetTime();\
            SendChatMessage(soak .. \" \" ..aura_env.state.stacks,aura_env.state.isLeft and \"YELL\" or \"SAY\");\
        end\
        return aura_env.state.shouldSoak and (soak..\" CHAIN\") or \"GO AWAY\"\
    end\
end",
      ["yOffset"] = 120,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 10,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "update",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["debuffType"] = "HELPFUL",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["custom_type"] = "stateupdate",
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_APPLIED_DOSE:SPELL_AURA_REMOVED:SPELL_CAST_START ENCOUNTER_START",
               ["spellIds"] = {
               },
               ["unit"] = "player",
               ["check"] = "event",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(spellID == 347807)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                aura_env.debuffs[destName] = 1;\
            elseif(subEvent == \"SPELL_AURA_APPLIED_DOSE\")then\
                aura_env.debuffs[destName] = aura_env.debuffs[destName] + 1;\
            elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
                aura_env.debuffs[destName] = nil;\
                local state = allstates[\"\"];\
                if(state and UnitIsUnit(\"player\",destName))then\
                    state.changed = true;\
                    state.show = false;\
                    \
                    return true;\
                end\
            end\
        elseif(subEvent == \"SPELL_CAST_START\" and spellID == 349419)then\
            aura_env.count = aura_env.count + 1;\
            \
            if(aura_env.count < 4)then\
                local sortedList = {};\
                for guy,stacks in pairs(aura_env.debuffs)do\
                    table.insert(sortedList,{guy,stacks});\
                end\
                \
                table.sort(sortedList,function(t1,t2)\
                        if(t1[2] ~= t2[2])then\
                            return t1[2] > t2[2];\
                        end\
                        return UnitInRaid(t1[1]) > UnitInRaid(t2[1]);\
                end);\
                \
                for i=1,8 do\
                    local dudeInfo = sortedList[i];\
                    \
                    if(dudeInfo and UnitIsUnit(\"player\",dudeInfo[1]))then\
                        --elog(\"SYLV CHAINS\",dudeInfo[2]);\
                        \
                        allstates[\"\"] = \
                        {\
                            changed = true,\
                            show = true,\
                            autoHide = true,\
                            progressType = \"timed\",\
                            duration = 7,\
                            expirationTime = GetTime() + 7,\
                            stacks = dudeInfo[2],\
                            shouldSoak = true,\
                            breakpoint = 3,\
                            isLeft = (i % 2 == 0) and true or false,\
                        };\
                        \
                        break;\
                    end\
                end\
                \
                return true;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.debuffs = {};\
        aura_env.count = 0;\
    elseif(event == \"OPTIONS\")then\
        \
        allstates[\"\"] = \
        {\
            changed = true,\
            show = true,\
            autoHide = true,\
            progressType = \"timed\",\
            duration = 7,\
            expirationTime = GetTime() + 7,\
            stacks = 0,\
            shouldSoak = true,\
            breakpoint = 3,\
            isLeft = (math.random(1,2) == 1) and true or false,\
        };\
        \
        return true;\
    end\
end",
               ["names"] = {
               },
               ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["wordWrap"] = "WordWrap",
      ["displayText_format_c2_format"] = "none",
      ["desaturate"] = false,
      ["discrete_rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["height"] = 200,
      ["rotate"] = true,
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "SoD - 10 - Sylvanas Windrunner",
      ["fontSize"] = 40,
      ["desc"] = "Timer, chat bubble, and direction assignment for Barbed Arrow",
      ["fixedWidth"] = 200,
      ["shadowXOffset"] = 1,
      ["shadowYOffset"] = -1,
      ["mirror"] = false,
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["regionType"] = "text",
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["blendMode"] = "BLEND",
      ["uid"] = "xQwLHswkxvJ",
      ["displayText_format_p_time_mod_rate"] = true,
      ["anchorFrameType"] = "SCREEN",
      ["displayText_format_p_time_precision"] = 1,
      ["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
      ["alpha"] = 1,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "CENTER",
      ["displayText_format_c1_format"] = "none",
      ["id"] = "SoD - 10 - Sylvanas Windrunner - Chains",
      ["selfPoint"] = "CENTER",
      ["frameStrata"] = 1,
      ["width"] = 200,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_legacy_floor"] = true,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["rotation"] = 0,
   },
   [" SoD - 06 - Painsmith Raznal - Auto Mark raider"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 220,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = true,
            ["custom"] = "if(UnitIsGroupLeader(\"player\"))then\
    SetRaidTarget(aura_env.config.name,7);\
end",
         },
         ["finish"] = {
            ["do_message"] = false,
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["npcId"] = "176523",
               ["spellId"] = "355525",
               ["duration"] = "1",
               ["names"] = {
               },
               ["debuffType"] = "HELPFUL",
               ["type"] = "combatlog",
               ["use_absorbHealMode"] = true,
               ["subeventSuffix"] = "_AURA_APPLIED",
               ["percenthealth"] = "72",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["use_npcId"] = true,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_absorbMode"] = true,
               ["unit"] = "boss",
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = "<=",
               ["use_unit"] = true,
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "any",
         ["customTriggerLogic"] = "function(t)\
    return (t[1] and t[2]) or (t[3] and t[4])\
end",
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Marks a specific character when Forge Weapon is cast. \
Set in Custom Options\
",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_namerealm"] = false,
         ["size"] = {
            ["multi"] = {
            },
         },
         ["namerealm"] = "Meeresm",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2430",
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 57,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 06 - Painsmith Raznal",
      ["wordWrap"] = "WordWrap",
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["shadowYOffset"] = -1,
      ["id"] = " SoD - 06 - Painsmith Raznal - Auto Mark raider",
      ["displayText"] = "",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["authorOptions"] = {
         {
            ["type"] = "input",
            ["useDesc"] = false,
            ["width"] = 1,
            ["default"] = "Rogerbrown",
            ["key"] = "name",
            ["multiline"] = false,
            ["length"] = 10,
            ["name"] = "Name",
            ["useLength"] = false,
         },
      },
      ["config"] = {
         ["name"] = "Rogerbrownie",
      },
      ["uid"] = "(xcsFGGLOLS",
      ["xOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["preset"] = "alphaPulse",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   [" SoD - 09 - Kel'Thuzad DG"] = {
      ["arcLength"] = 360,
      ["controlledChildren"] = {
         "SoD - 09 - Kel'Thuzad - Vengeful Destruction",
         "SoD - 09 - Kel'Thuzad - Remant HP",
         "SoD - 09 - Kel'Thuzad - Blizzard End",
         "SoD - 09 - Kel'Thuzad - Blizzard HP",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["groupIcon"] = 4062734,
      ["gridType"] = "RD",
      ["echoVersion"] = 5,
      ["fullCircle"] = true,
      ["rowSpace"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["names"] = {
               },
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["radius"] = 200,
      ["useLimit"] = false,
      ["align"] = "CENTER",
      ["desc"] = "Kel'Thuzad Dynamic Group",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["parent"] = " SoD - 09 - Kel'Thuzad main Group",
      ["animate"] = false,
      ["selfPoint"] = "TOP",
      ["scale"] = 1,
      ["yOffset"] = 165.60028076172,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["limit"] = 5,
      ["sort"] = "none",
      ["anchorPoint"] = "CENTER",
      ["borderInset"] = 1,
      ["rotation"] = 0,
      ["constantFactor"] = "RADIUS",
      ["config"] = {
      },
      ["borderOffset"] = 4,
      ["gridWidth"] = 5,
      ["tocversion"] = 90100,
      ["id"] = " SoD - 09 - Kel'Thuzad DG",
      ["space"] = 2,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["uid"] = "yKgsj9)qYab",
      ["internalVersion"] = 53,
      ["grow"] = "DOWN",
      ["xOffset"] = -455.40002441406,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   [" SoD - 08 - Fatescribe Roh-Kalo - Adds Too Close Warning "] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["parent"] = " SoD - 08 - Fatescribe Roh-Kalo",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = true,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["npcId"] = "180323",
               ["type"] = "unit",
               ["spellId"] = 357144,
               ["subeventSuffix"] = "_CAST_START",
               ["use_unit"] = true,
               ["use_exact_spellId"] = true,
               ["event"] = "Cast",
               ["names"] = {
               },
               ["use_npcId"] = true,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["use_absorbMode"] = true,
               ["unit"] = "boss",
               ["use_absorbHealMode"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["use_absorbMode"] = true,
               ["event"] = "Range Check",
               ["unit"] = "boss2",
               ["use_unit"] = true,
               ["use_range"] = true,
               ["range"] = "20",
               ["use_specific_unit"] = true,
               ["range_operator"] = "<=",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [3] = {
            ["trigger"] = {
               ["type"] = "unit",
               ["use_absorbHealMode"] = true,
               ["use_absorbMode"] = true,
               ["event"] = "Range Check",
               ["unit"] = "boss3",
               ["use_unit"] = true,
               ["use_range"] = true,
               ["range"] = "20",
               ["use_specific_unit"] = true,
               ["range_operator"] = "<=",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[1] and (t[2] or t[3]);\
end",
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0.53333333333333,
         0,
         1,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_p_time_format"] = 0,
            ["text_visible"] = true,
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "TOO CLOSE",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["text_fontType"] = "OUTLINE",
         },
         {
            ["glowFrequency"] = 0.25,
            ["type"] = "subglow",
            ["useGlowColor"] = false,
            ["glowType"] = "Pixel",
            ["glowLength"] = 10,
            ["glowYOffset"] = 0,
            ["glowColor"] = {
               1,
               1,
               1,
               1,
            },
            ["glow"] = true,
            ["glowThickness"] = 3,
            ["glowXOffset"] = 0,
            ["glow_anchor"] = "bar",
            ["glowScale"] = 1,
            ["glowLines"] = 8,
            ["glowBorder"] = true,
         },
      },
      ["height"] = 35,
      ["load"] = {
         ["affixes"] = {
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "mythic",
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_difficulty"] = true,
         ["encounterid"] = "2431",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["displayIcon"] = 237552,
      ["desc"] = "Fatespawn Monstrosity distance warning during Despair",
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon_side"] = "RIGHT",
      ["uid"] = "nbM1Bmql(JY",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Minimalist",
      ["anchorFrameType"] = "SCREEN",
      ["zoom"] = 0,
      ["spark"] = false,
      ["frameStrata"] = 1,
      ["id"] = " SoD - 08 - Fatescribe Roh-Kalo - Adds Too Close Warning ",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["alpha"] = 1,
      ["width"] = 250,
      ["sparkHidden"] = "NEVER",
      ["config"] = {
      },
      ["inverse"] = false,
      ["xOffset"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
   },
   [" SoD - 10 - Sylvanas Windrunner - Veil of Darkness List"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["authorOptions"] = {
      },
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = false,
            ["custom"] = "\
\
",
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["useMatch_count"] = true,
               ["useStacks"] = true,
               ["auranames"] = {
                  "347704",
               },
               ["unit"] = "raid",
               ["stacks"] = "1",
               ["match_count"] = "0",
               ["debuffType"] = "HARMFUL",
               ["showClones"] = true,
               ["useName"] = true,
               ["stacksOperator"] = ">",
               ["match_countOperator"] = ">",
               ["fetchTooltip"] = true,
               ["event"] = "Health",
               ["spellIds"] = {
               },
               ["type"] = "aura2",
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0.58823529411765,
         0.30196078431373,
         0.95294117647059,
         1,
      },
      ["desc"] = "Lists players affected by Veil of Darkness",
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text_format_1.unit_abbreviate"] = true,
            ["text_text"] = "%1.unit",
            ["text_text_format_1.unit_abbreviate_max"] = 5,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_text_format_1.unit_format"] = "Unit",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_wordWrap"] = "WordWrap",
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_text_format_1.unit_color"] = "class",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_n_format"] = "none",
            ["text_text_format_1.unitt_format"] = "none",
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["text_text_format_1.unit_realm_name"] = "never",
         },
         {
            ["text_text_format_1.unit_format"] = "Unit",
            ["text_text_format_1.unit_abbreviate"] = true,
            ["text_text"] = "%1.s",
            ["text_text_format_1.unit_abbreviate_max"] = 5,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["anchorXOffset"] = 0,
            ["text_text_format_1.tooltip1_format"] = "none",
            ["text_text_format_1.unit_realm_name"] = "never",
            ["type"] = "subtext",
            ["text_text_format_1.unitt_format"] = "none",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_wordWrap"] = "WordWrap",
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_text_format_1.unit_color"] = "class",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_CENTER",
            ["text_text_format_n_format"] = "none",
            ["text_shadowXOffset"] = 1,
            ["text_fontSize"] = 20,
            ["text_text_format_1.tooltip2_format"] = "none",
            ["text_text_format_1.s_format"] = "none",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text_format_1.unit_abbreviate"] = true,
            ["text_text"] = "%1.tooltip2",
            ["text_text_format_1.unit_abbreviate_max"] = 5,
            ["text_text_format_1.unit_realm_name"] = "never",
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",
            ["text_text_format_1.tooltip2_format"] = "BigNumber",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["type"] = "subtext",
            ["text_text_format_n_format"] = "none",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_1.unit_color"] = "class",
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_1.unitt_format"] = "none",
            ["text_text_format_1.unit_format"] = "Unit",
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["text_text_format_1.s_format"] = "none",
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 10 - Sylvanas Windrunner Veil DG",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0,
      },
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["xOffset"] = 0,
      ["icon_side"] = "RIGHT",
      ["iconSource"] = -1,
      ["config"] = {
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Minimalist",
      ["zoom"] = 0,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["width"] = 150,
      ["id"] = " SoD - 10 - Sylvanas Windrunner - Veil of Darkness List",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["sparkHidden"] = "NEVER",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["uid"] = "Ryce4xMl1Jl",
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["desaturate"] = false,
   },
   ["SoD - 10 - Sylvanas Windrunner - Santinel Fixate"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText"] = "",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 5,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["glow_color"] = {
               0.65882352941176,
               0.27450980392157,
               0.97254901960784,
               1,
            },
            ["glow_thickness"] = 5,
            ["glow_XOffset"] = 5,
            ["glow_YOffset"] = 5,
            ["do_glow"] = true,
            ["glow_lines"] = 12,
            ["glow_border"] = true,
            ["glow_length"] = 8,
            ["use_glow_color"] = true,
            ["glow_type"] = "Pixel",
            ["glow_frame_type"] = "NAMEPLATE",
            ["glow_action"] = "show",
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.targets = {};\
\
aura_env.findNameplateUnit = function(unitGUID)\
    for i=1,40 do\
        local unit = \"nameplate\"..i;\
        if(UnitGUID(unit) == unitGUID)then\
            return unit;\
        end\
    end\
end",
         },
         ["finish"] = {
            ["hide_all_glows"] = true,
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["use_absorbMode"] = true,
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["unit"] = "nameplate",
               ["events"] = "ENCOUNTER_END ENCOUNTER_START CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED NAME_PLATE_UNIT_ADDED NAME_PLATE_UNIT_REMOVED",
               ["custom_hide"] = "timed",
               ["check"] = "event",
               ["type"] = "custom",
               ["use_health"] = false,
               ["health_operator"] = ">",
               ["spellIds"] = {
               },
               ["percenthealth"] = "0",
               ["event"] = "Health",
               ["health"] = "0",
               ["custom_type"] = "stateupdate",
               ["subeventSuffix"] = "_CAST_START",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, sourceGUID, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(spellID == 358711 and destName == WeakAuras.me)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                \
                aura_env.targets[sourceGUID] = true;\
                \
                local unit = aura_env.findNameplateUnit(sourceGUID);\
                if(unit)then\
                    allstates[sourceGUID] = \
                    {\
                        changed = true,\
                        show = true,\
                        unit = unit,\
                        progressType = \"static\",\
                        total = 1,\
                        value = 1,\
                    };\
                    \
                    return true;\
                end\
            else\
                aura_env.targets[sourceGUID] = nil;\
                \
                local state = allstates[sourceGUID];\
                if(state)then\
                    state.changed = true;\
                    state.show = false;\
                    \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"NAME_PLATE_UNIT_ADDED\" or event == \"NAME_PLATE_UNIT_REMOVED\")then\
        local unit = ...;\
        if(unit)then\
            local guid = UnitGUID(unit);\
            if(aura_env.targets[guid])then\
                if(event == \"NAME_PLATE_UNIT_ADDED\")then\
                    allstates[guid] = \
                    {\
                        changed = true,\
                        show = true,\
                        unit = unit,\
                        progressType = \"static\",\
                        total = 1,\
                        value = 1,\
                    };\
                else\
                    allstates[guid].changed = true;\
                    allstates[guid].show = false;\
                end\
                \
                return true;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.targets = {};\
    elseif(event == \"ENCOUNTER_END\")then\
        for _,state in pairs(allstates)do\
            state.changed = true;\
            state.show = false;\
        end\
        \
        return true;\
    end\
end\
\
\
",
               ["names"] = {
               },
               ["use_nameplateType"] = false,
               ["use_percenthealth"] = false,
               ["percenthealth_operator"] = ">",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "any",
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Glows the nameplate frame for the sentinal fixated on you. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["parent"] = "SoD - 10 - Sylvanas Windrunner",
      ["displayText_format_p_time_precision"] = 1,
      ["wordWrap"] = "WordWrap",
      ["conditions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["justify"] = "LEFT",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 10 - Sylvanas Windrunner - Santinel Fixate",
      ["yOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "WAFAcGe9iy7",
      ["config"] = {
      },
      ["xOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 10 - Sylvanas Windrunner"] = {
      ["controlledChildren"] = {
         "SoD - 10 - Sylvanas Windrunner - P2 Bridges",
         " SoD - 10 - Sylvanas Windrunner - P1 Phasing",
         "SoD - 10 - Sylvanas Windrunner - Santinel Fixate",
         "SoD - 10 - Sylvanas Windrunner - Fake Summoner Debuff",
         "SoD - 10 - Sylvanas Windrunner - Pre Rive",
         "SoD - 10 - Sylvanas Windrunner - Chains",
         "SoD - 10 - Sylvanas Windrunner - Wailing Arrow P3",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 22,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["names"] = {
               },
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "Sylvanas Windrunner non-Dynamic Group",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 10 - Sylvanas Windrunner",
      ["parent"] = "SoD - 10 - Sylvanas Windrunner main Group",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["selfPoint"] = "CENTER",
      ["uid"] = "D7H4Lv1JSVL",
      ["groupIcon"] = "4062738",
      ["config"] = {
      },
      ["borderInset"] = 1,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["authorOptions"] = {
      },
   },
   ["SoD - 09 - Kel'Thuzad - Remant HP"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["customText"] = "function()\
    return aura_env.state.hpPerc and string.format(\"%.0f\",aura_env.state.hpPerc * 100) or \"5\"\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "function aura_env.findRemnant()\
end",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["unit"] = "boss",
               ["type"] = "custom",
               ["spellId"] = 352355,
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["use_absorbMode"] = true,
               ["event"] = "Cast",
               ["use_unit"] = true,
               ["events"] = "FRAME_UPDATE UNIT_SPELLCAST_START:boss1 UNIT_SPELLCAST_STOP:boss1 ENCOUNTER_START",
               ["use_spellId"] = true,
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"FRAME_UPDATE\")then\
        if not aura_env.last or aura_env.last < GetTime() - 0.05 then\
            aura_env.last = GetTime();\
            local state = allstates[\"\"];\
            if(state)then\
                state.changed = true;\
                \
                if(not state.initDone)then\
                    local maxHp = UnitHealthMax(\"boss2\");\
                    if(maxHp ~= 0)then\
                        \
                        state.total = maxHp * (aura_env.insidePhaseCounter == 3 and 0.2 or 0.4);\
                        state.value = state.total;\
                        state.startHp = (1 - ((aura_env.insidePhaseCounter -1) * 0.4)) * maxHp;\
                        \
                        state.initDone = true;\
                    end                    \
                else\
                    state.value = state.total - (state.startHp - UnitHealth(\"boss2\"));\
                    state.hpPerc = state.value / state.total;\
                end\
                \
                state.show = state.value > 0;\
                \
                return true;\
            end\
        end\
    elseif(event == \"UNIT_SPELLCAST_START\" or event == \"UNIT_SPELLCAST_STOP\")then\
        local unit,_,spellID = ...;\
        \
        if(spellID == 352293)then\
            if(event == \"UNIT_SPELLCAST_START\")then\
                aura_env.insidePhaseCounter = aura_env.insidePhaseCounter + 1\
                \
                allstates[\"\"] = \
                {\
                    changed = true,\
                    show = true,\
                    startHp = bossHp,\
                    progressType = \"static\",\
                    total = 1,\
                    value = 1,\
                    hpPerc = 1,\
                };\
                \
            else\
                allstates[\"\"].changed = true;\
                allstates[\"\"].show = false;\
            end\
            \
            return true;\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.insidePhaseCounter = 0;\
    end\
end",
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         0.49411764705882,
         0.71764705882353,
         0,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["border_size"] = 2,
            ["border_anchor"] = "bar",
            ["type"] = "subborder",
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_offset"] = 0,
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "%c%%",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_c_format"] = "none",
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_format"] = 0,
            ["type"] = "subtext",
            ["anchorXOffset"] = 0,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_n_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_format"] = "timed",
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 17,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 09 - Kel'Thuzad DG",
      ["desc"] = "Track the Remnant of Kel'Thuzad health loss",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["authorOptions"] = {
      },
      ["uid"] = "bmPjw(Sy9Kz",
      ["icon_side"] = "RIGHT",
      ["config"] = {
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["anchorFrameType"] = "SCREEN",
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 09 - Kel'Thuzad - Remant HP",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["width"] = 200,
      ["sparkHidden"] = "NEVER",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   [" SoD - 10 - Sylvanas Windrunner - Dispell Missing  List"] = {
      ["outline"] = "OUTLINE",
      ["xOffset"] = 0,
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["customText"] = "function()\
    return \"Missing\";\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["sound_repeat"] = 1,
            ["do_loop"] = false,
            ["sound"] = "Interface\\AddOns\\!!!EchoInternal\\assets\\sounds\\alarmbuzz.ogg",
            ["do_sound"] = false,
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["events"] = "ECHO_SYLV_DISPELED ECHO_SYLV_DISPEL_ASSIGN_FAILED",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"ECHO_SYLV_DISPEL_ASSIGN_FAILED\")then\
        local missing = ...;\
        if(missing)then\
            allstates[missing] =\
            {\
                show = true,\
                changed = true,\
                static = \"static\",\
                value = 1,\
                total = 1,\
                missing = missing,\
            };\
            return true;\
        end\
    elseif(event == \"ECHO_SYLV_DISPELED\")then\
        local dude = ...;\
        if(dude)then\
            local state = allstates[dude];\
            if(state)then\
                state.changed = true;\
                state.show = false;\
                \
                return true;\
            end\
        end\
    end\
end",
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["spellIds"] = {
               },
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["preset"] = "alphaPulse",
            ["easeStrength"] = 3,
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["displayText_format_missing_abbreviate_max"] = 8,
      ["desc"] = "Requires  SoD - 10 - Sylvanas Windrunner - Curse Dispell Assignment ",
      ["font"] = "Accidental Presidency",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 30,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["parent"] = "SoD - 10 - Sylvanas Windrunner DG",
      ["wordWrap"] = "WordWrap",
      ["displayText_format_missing_realm_name"] = "never",
      ["conditions"] = {
      },
      ["selfPoint"] = "BOTTOM",
      ["displayText_format_p_time_precision"] = 1,
      ["displayText_format_missing_format"] = "Unit",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["authorOptions"] = {
      },
      ["justify"] = "LEFT",
      ["displayText_format_missing_abbreviate"] = false,
      ["id"] = " SoD - 10 - Sylvanas Windrunner - Dispell Missing  List",
      ["config"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["displayText_format_missing_color"] = "class",
      ["uid"] = "PfeduDzTenb",
      ["displayText"] = "%c - %missing",
      ["shadowYOffset"] = -1,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["displayText_format_c_format"] = "none",
   },
   ["SoD - 09 - Kel'Thuzad - Blizzard HP"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["authorOptions"] = {
         {
            ["type"] = "number",
            ["useDesc"] = false,
            ["max"] = 100,
            ["step"] = 0.05,
            ["width"] = 1,
            ["min"] = 0,
            ["name"] = "Lower bound HP%",
            ["default"] = 7.5,
            ["key"] = "lowerBoundHPp",
         },
         {
            ["type"] = "number",
            ["useDesc"] = false,
            ["max"] = 100,
            ["step"] = 0.05,
            ["width"] = 1,
            ["min"] = 0,
            ["name"] = "Upper bound HP%",
            ["key"] = "upperBounbHPp",
            ["default"] = 30,
         },
      },
      ["customText"] = "function()\
    return aura_env.state.total and string.format(\"%.0f\",(aura_env.state.value/aura_env.state.total) * 100) or \"5\"\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "custom",
               ["spellId"] = 352355,
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["use_absorbMode"] = true,
               ["event"] = "Cast",
               ["unit"] = "boss",
               ["spellIds"] = {
               },
               ["use_spellId"] = true,
               ["events"] = "FRAME_UPDATE UNIT_SPELLCAST_SUCCEEDED:boss1",
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"FRAME_UPDATE\")then\
        if not aura_env.last or aura_env.last < GetTime() - 0.05 then\
            aura_env.last = GetTime();\
            local state = allstates[\"\"];\
            if(state)then\
                state.changed = true;\
                \
                state.value = UnitHealth(state.unit) - state.lowerBandHP;\
                state.show = state.value > 0;\
                \
                return true;\
            end\
        end\
    elseif(event == \"UNIT_SPELLCAST_SUCCEEDED\")then\
        local unit,_,spellID = ...;\
        \
        if(spellID == 354198)then\
            \
            local maxHP = UnitHealthMax(unit);\
            local currentHP = UnitHealth(unit);\
            \
            local lowerBandHP = aura_env.config.lowerBoundHPp/100 * maxHP;\
            local upperBandHP = aura_env.config.upperBounbHPp/100 * maxHP;\
            local scaledMaxHp = upperBandHP - lowerBandHP;\
            local scaledHP = currentHP - lowerBandHP;\
            \
            allstates[\"\"] = \
            {\
                changed = true,\
                show = true,\
                startHp = bossHp,\
                progressType = \"static\",\
                lowerBandHP = lowerBandHP,\
                upperBandHP = upperBandHP,\
                total = scaledMaxHp,\
                value = scaledHP,\
                unit = unit,\
            };\
            \
            elog(\"BLIZZARD INIT\",lowerBandHP,upperBandHP,scaledMaxHp,scaledHP);\
            \
            return true;\
        end\
    end\
end",
               ["use_unit"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         0,
         0.71764705882353,
         0.70196078431373,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 2,
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text"] = "%c%%",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_c_format"] = "none",
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_shadowXOffset"] = 1,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_n_format"] = "none",
            ["text_visible"] = true,
            ["text_fontSize"] = 17,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["use_encounterid"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 09 - Kel'Thuzad DG",
      ["desc"] = "Track HP during Blizzard",
      ["icon"] = false,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = false,
            ["custom"] = "",
         },
         ["finish"] = {
         },
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["sparkOffsetX"] = 0,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["icon_side"] = "RIGHT",
      ["config"] = {
         ["lowerBoundHPp"] = 5,
         ["upperBounbHPp"] = 20,
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["anchorFrameType"] = "SCREEN",
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 09 - Kel'Thuzad - Blizzard HP",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["width"] = 200,
      ["sparkHidden"] = "NEVER",
      ["uid"] = "EiplUgpdAVf",
      ["inverse"] = false,
      ["xOffset"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   [" SoD - 06 - Painsmith Raznal"] = {
      ["controlledChildren"] = {
         " SoD - 06 - Painsmith Raznal - Phasing",
         " SoD - 06 - Painsmith Raznal - Auto Mark raider",
         " SoD - 06 - Painsmith Raznal - Spiked Balls",
         " SoD - 06 - Painsmith Raznal - Mine Count",
         " SoD - 06 - Painsmith Raznal - Paladin Beacon",
         " SoD - 06 - Painsmith Raznal - Intermission Blobs",
         " SoD - 06 - Painsmith Raznal - Death",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["groupIcon"] = 4062735,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 6,
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["names"] = {
               },
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["desc"] = "Painsmith Raznal non-Dynamic Group",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = " SoD - 06 - Painsmith Raznal",
      ["parent"] = "SoD - 06 - Painsmith Raznal main Group",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["borderInset"] = 1,
      ["yOffset"] = 0,
      ["uid"] = "ELT7Qmlplz(",
      ["config"] = {
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["authorOptions"] = {
      },
   },
   ["SoD - 10 - Sylvanas Windrunner - Pre Rive"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["authorOptions"] = {
      },
      ["displayText"] = "DODGE IN\
%p",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["displayText_format_p_time_mod_rate"] = true,
      ["wordWrap"] = "WordWrap",
      ["barColor"] = {
         0.4156862745098,
         0,
         0.87843137254902,
         1,
      },
      ["desaturate"] = false,
      ["font"] = "Friz Quadrata TT",
      ["sparkOffsetY"] = 0,
      ["load"] = {
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "heroic",
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_difficulty"] = true,
         ["encounterid"] = "2435",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["shadowXOffset"] = 1,
      ["useAdjustededMin"] = false,
      ["regionType"] = "text",
      ["texture"] = "Minimalist",
      ["zoom"] = 0,
      ["spark"] = false,
      ["alpha"] = 1,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["fixedWidth"] = 200,
      ["outline"] = "OUTLINE",
      ["sparkOffsetX"] = 0,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowYOffset"] = -1,
      ["sparkRotationMode"] = "AUTO",
      ["automaticWidth"] = "Auto",
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["debuffType"] = "HELPFUL",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_CAST_START\")then\
            if(spellID == 353417)then                \
                WeakAuras.ScanEvents(\"ECHO_RIVE_PRE\",2.7);\
                C_Timer.After(3.5,function() WeakAuras.ScanEvents(\"ECHO_RIVE_PRE\",2.7);end);\
                C_Timer.After(7,function() WeakAuras.ScanEvents(\"ECHO_RIVE_PRE\",2.7);end);\
                C_Timer.After(10.5,function() WeakAuras.ScanEvents(\"ECHO_RIVE_PRE\",2.7);end);\
            end\
        end\
    elseif(event == \"ECHO_RIVE_PRE\")then\
        local duration = ...;\
        if(duration)then\
            allstates[\"\"] =\
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = duration,\
                expirationTime = GetTime() + duration,\
                autoHide = true,\
            };\
            \
            return true;\
        end\
    end\
end",
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["check"] = "event",
               ["events"] = "CLEU:SPELL_CAST_START ECHO_RIVE_PRE",
               ["unit"] = "player",
               ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["height"] = 30,
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["fontSize"] = 20,
      ["parent"] = "SoD - 10 - Sylvanas Windrunner",
      ["xOffset"] = 0,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["orientation"] = "HORIZONTAL",
      ["config"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["sparkHeight"] = 30,
      ["icon_side"] = "RIGHT",
      ["sparkRotation"] = 0,
      ["customTextUpdate"] = "event",
      ["displayText_format_p_time_precision"] = 1,
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_legacy_floor"] = true,
      ["justify"] = "CENTER",
      ["width"] = 500,
      ["sparkHidden"] = "NEVER",
      ["selfPoint"] = "CENTER",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["icon"] = false,
      ["desc"] = "Warning for incoming Rive projectiles",
      ["inverse"] = true,
      ["id"] = "SoD - 10 - Sylvanas Windrunner - Pre Rive",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["uid"] = "UtPQpW3zESZ",
   },
   ["SoD - 05 - Soulrender Dormazain Go to Chain Break"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText"] = "GO TO {rt1}",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "addons",
               ["spellId"] = "350411",
               ["subeventSuffix"] = "_CAST_START",
               ["remaining_operator"] = "<=",
               ["event"] = "BigWigs Timer",
               ["subeventPrefix"] = "SPELL",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["remaining"] = "5",
               ["use_remaining"] = true,
               ["names"] = {
               },
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Positioning during chain break phase. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2434",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 30,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 05 - Soulrender Dormazain",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["preset"] = "alphaPulse",
            ["easeStrength"] = 3,
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["fixedWidth"] = 200,
      ["justify"] = "LEFT",
      ["yOffset"] = 120,
      ["id"] = "SoD - 05 - Soulrender Dormazain Go to Chain Break",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["config"] = {
      },
      ["uid"] = "YGATiteXcYI",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["wordWrap"] = "WordWrap",
   },
   ["SoD - 06 - Painsmith Raznal - Dance"] = {
      ["outline"] = "OUTLINE",
      ["iconSource"] = -1,
      ["authorOptions"] = {
         {
            ["type"] = "number",
            ["useDesc"] = false,
            ["max"] = 10,
            ["step"] = 1,
            ["width"] = 1,
            ["min"] = 1,
            ["name"] = "Num Shown",
            ["key"] = "numShown",
            ["default"] = 2,
         },
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["customText"] = "function()\
    if(aura_env.state)then\
        if(aura_env.state.isGood)then\
            if(aura_env.state.rotationIndex == aura_env.nextIndex)then\
                aura_env.region:Color(0,1,0,0.6);\
            else\
                aura_env.region:Color(1,1,0,0.6);\
            end\
        elseif(aura_env.state.isGigaBad)then\
            aura_env.region:Color(1,0,0,0.6);\
        else            \
            aura_env.region:Color(0,0,0,0.6);\
        end\
    end\
end\
\
\
",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["cooldownSwipe"] = true,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "\
\
",
         },
         ["finish"] = {
            ["do_custom"] = false,
            ["custom"] = "",
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.rotation = \
{\
    --Intermission 1\
    {\
        {\
            [6] = true,\
            [8] = true\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [12] = true,\
            [13] = true\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [3] = true,\
            [11] = true,\
            [12] = true,\
            [13] = true\
        },\
        {\
            [3] = true,\
            [4] = true,\
            [5] = true,\
            [9] = true,\
            [10] = true,\
            [11] = true,\
        },\
        {\
            [0] = true\
        },\
        {\
            [7] = true\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [3] = true,\
            [11] = true,\
            [12] = true,\
            [13] = true\
        },\
        {\
            [6] = true,\
            [7] = true,\
            [8] = true\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [12] = true,\
            [13] = true\
        },\
    },\
    --Intermission 2\
    {\
        {\
            [6] = true,\
            [8] = true\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [12] = true,\
            [13] = true\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [3] = true,\
            [11] = true,\
            [12] = true,\
            [13] = true\
        },\
        {\
            [3] = true,\
            [4] = true,\
            [5] = true,\
            [9] = true,\
            [10] = true,\
            [11] = true,\
        },\
        {\
            [0] = true\
        },\
        {\
            [7] = true\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [3] = true,\
            [11] = true,\
            [12] = true,\
            [13] = true\
        },\
        {\
            [2] = true,\
            [3] = true,\
            [4] = true,\
            [10] = true,\
            [11] = true,\
            [12] = true,\
        },\
        {\
            [1] = true,\
            [2] = true,\
            [12] = true,\
            [13] = true\
        },\
    },\
};",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["customVariables"] = "{\
    shouldHide = {\
        display = \"Should Hide\",\
        type = \"bool\",\
        test = function(state,needle)\
            if(state.rotationIndex)then\
                local hideIndex = aura_env.nextIndex + aura_env.config.numShown;\
                if(needle == 1)then\
                    return hideIndex <= state.rotationIndex;\
                else\
                    return hideIndex > state.rotationIndex;\
                end\
            end\
        end,\
    },\
    \
    j = \"number\",\
}\
\
\
",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(spellID == 355525)then--355525\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                \
                aura_env.nextIndex = 1;\
                aura_env.intermission = aura_env.intermission + 1;\
                \
                for i=1,9 do\
                    local currentRotation = aura_env.rotation[aura_env.intermission][i];\
                    for j = 1,13 do\
                        local index = (i-1) * 13 + j;\
                        allstates[index] = {\
                            changed = true,\
                            show = true,\
                            \
                            progressType = \"static\",\
                            value = 1,\
                            total = 1,\
                            \
                            index = index,\
                            rotationIndex = i,\
                            isGood = currentRotation[j];\
                            isGigaBad = i == 5,\
                            j = j,\
                        };\
                        \
                    end\
                end\
                \
                C_Timer.After(5,function() WeakAuras.ScanEvents(\"ECHO_PAINSMITH_UPDATE\",true)end);\
                \
                return true;\
            end\
        end\
    elseif(event == \"ECHO_PAINSMITH_UPDATE\" and not WeakAuras.IsOptionsOpen()) then\
        local notFake = ...;\
        if(notFake)then\
            aura_env.nextIndex = aura_env.nextIndex + 1;\
            \
            for i,state in pairs(allstates)do\
                state.changed = true;\
                state.show = aura_env.nextIndex <= state.rotationIndex;\
            end\
            \
            if(aura_env.nextIndex <= 9)then\
                C_Timer.After(5,function() WeakAuras.ScanEvents(\"ECHO_PAINSMITH_UPDATE\",true); end);\
            end\
            \
            return true;\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.intermission = 0;\
    elseif(event == \"OPTIONS\")then\
        \
        aura_env.nextIndex = 1;\
        \
        for i=1,aura_env.config.numShown do\
            \
            local currentRotation = aura_env.rotation[2][i];\
            for j = 1,13 do\
                local index = (i-1) * 13 + j;\
                allstates[index] = {\
                    changed = true,\
                    show = true,\
                    progressType = \"static\",\
                    value = 1,\
                    total = 1,\
                    \
                    index = index,\
                    \
                    rotationIndex = i,\
                    isGood = currentRotation[j],\
                    isGigaBad = i == 5,\
                    j = j,\
                };\
            end\
        end\
        \
        return true;\
    end\
end",
               ["names"] = {
               },
               ["check"] = "event",
               ["events"] = "ENCOUNTER_START CLEU:SPELL_AURA_APPLIED,ECHO_PAINSMITH_UPDATE",
               ["custom_type"] = "stateupdate",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["keepAspectRatio"] = false,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["icon"] = true,
      ["cooldown"] = false,
      ["desc"] = "Graphical Aura to help guide through the \"Dance\" phase. ",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["fixedWidth"] = 200,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%c DONT CHANGE ME",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "BOTTOMLEFT",
            ["text_text_format_n_format"] = "none",
            ["text_visible"] = false,
            ["text_fontSize"] = 6,
            ["anchorXOffset"] = 0,
            ["text_text_format_c_format"] = "none",
         },
         {
            ["type"] = "subborder",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 1,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%rotationIndex",
            ["text_text_format_rotationIndex_format"] = "none",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "RIGHT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "LEFT",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
         },
      },
      ["height"] = 20,
      ["rotate"] = true,
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2430",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["cooldownEdge"] = false,
      ["xOffset"] = 0,
      ["fontSize"] = 12,
      ["color"] = {
         0,
         0,
         0,
         0.33000004291534,
      },
      ["uid"] = "(se23KNINGN",
      ["shadowXOffset"] = 1,
      ["selfPoint"] = "BOTTOM",
      ["mirror"] = false,
      ["anchorFrameType"] = "SCREEN",
      ["regionType"] = "texture",
      ["frameStrata"] = 1,
      ["blendMode"] = "BLEND",
      ["textureWrapMode"] = "MIRROR",
      ["parent"] = " SoD - 06 - Painsmith Raznal - Dance DG Sadge",
      ["discrete_rotation"] = 0,
      ["displayText_format_p_time_precision"] = 1,
      ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
      ["cooldownTextDisabled"] = false,
      ["zoom"] = 0,
      ["justify"] = "LEFT",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 06 - Painsmith Raznal - Dance",
      ["desaturate"] = false,
      ["alpha"] = 1,
      ["width"] = 20,
      ["displayText"] = "%p",
      ["config"] = {
         ["numShown"] = 3,
      },
      ["inverse"] = false,
      ["yOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "shouldHide",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["property"] = "alpha",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "j",
               ["op"] = "~=",
               ["value"] = "1",
            },
            ["changes"] = {
               {
                  ["property"] = "sub.4.text_visible",
               },
            },
         },
      },
      ["information"] = {
      },
      ["wordWrap"] = "WordWrap",
   },
   [" SoD - 05 - Soulrender Dormazain DG"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         "SoD - 05 - Soulrender Dormazain DG - Chain List",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "SoD - 05 - Soulrender Dormazain main Group",
      ["groupIcon"] = "4062737",
      ["gridType"] = "RD",
      ["oName"] = "SoD - 05 - Soulrender Dormazain DG",
      ["fullCircle"] = true,
      ["space"] = 2,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["debuffType"] = "HELPFUL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
      },
      ["columnSpace"] = 1,
      ["radius"] = 200,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["align"] = "CENTER",
      ["desc"] = "Soulrender Dormazain Dynamic Group",
      ["rotation"] = 0,
      ["subRegions"] = {
      },
      ["yOffset"] = 214.99993896484,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["stagger"] = 0,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["internalVersion"] = 53,
      ["animate"] = false,
      ["useLimit"] = false,
      ["scale"] = 1,
      ["echoVersion"] = 9,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "none",
      ["uid"] = "KD4L24uvc)q",
      ["xOffset"] = -475.99981689453,
      ["config"] = {
      },
      ["gridWidth"] = 5,
      ["constantFactor"] = "RADIUS",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["borderOffset"] = 4,
      ["rowSpace"] = 1,
      ["tocversion"] = 90100,
      ["id"] = " SoD - 05 - Soulrender Dormazain DG",
      ["arcLength"] = 360,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["limit"] = 5,
      ["borderInset"] = 1,
      ["authorOptions"] = {
      },
      ["selfPoint"] = "TOP",
      ["anchorPoint"] = "CENTER",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["mVersion"] = 1,
   },
   ["SoD - 04 - Remnant of Ner'zhul - Malevolence"] = {
      ["outline"] = "OUTLINE",
      ["displayText_format_text_format"] = "none",
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["customText"] = "function()\
    if not aura_env.last or aura_env.last < GetTime() - 0.1 then\
        aura_env.last = GetTime()\
        \
        if(aura_env.state.cds)then\
            local cdText = \"\";\
            for i,cdData in ipairs(aura_env.state.cds)do\
                if(GetTime() >= cdData.expiration)then\
                    cdText = \" R\";\
                else\
                    cdText = string.format(\" %.1f\",cdData.expiration - GetTime());\
                end\
                \
                local cdIcon = \"\";\
                cdText = cdText..\"-\"..cdIcon;\
                \
                aura_env.state.cdText= cdText;\
                \
                print(cdText);\
            end\
        end\
    end\
    return aura_env.state.cdText;\
end\
\
\
",
      ["shadowYOffset"] = -1,
      ["displayText_format_unit_abbreviate_max"] = 8,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "update",
      ["automaticWidth"] = "Auto",
      ["displayText_format_unit_abbreviate"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(spellID == 350469 and UnitIsPlayer(destName))then--350469\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                local unitGUID = UnitGUID(destName);\
                local sortKey = select(3,strsplit(\"-\",unitGUID));\
                \
                local duration = select(5,WA_GetUnitDebuff(destName,350469));\
                duration = duration or 21;\
                \
                allstates[destName] = \
                {\
                    changed = true,\
                    show = true,\
                    unit = destName,\
                    progressType = \"timed\",\
                    duration = duration,\
                    expirationTime = GetTime() + duration,\
                    autoHide = true,\
                    sortKey = sortKey,\
                };\
            else\
                local state = allstates[destName];\
                if(state)then\
                    state.changed = true;\
                    state.show = false;\
                end\
            end\
            \
            return true;\
        end\
    elseif(event == \"OPTIONS\")then\
        local unitGUID = UnitGUID(\"player\");\
        local sortKey = select(3,strsplit(\"-\",unitGUID));\
        for i=1,2 do \
            allstates[i] = \
            {\
                changed = true,\
                show = true,\
                unit = \"player\",\
                text = i == 1 and \"A\" or \"B\",\
                progressType = \"timed\",\
                duration = 21,\
                expirationTime = GetTime() + 21,\
                autoHide = true,\
                sortKey = i == 1 and \"A\" or \"B\",\
            };\
        end\
        return true;\
    end\
end\
\
\
",
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED",
               ["check"] = "event",
               ["names"] = {
               },
               ["custom_type"] = "stateupdate",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "any",
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["displayText_format_test_format"] = "none",
      ["desc"] = "Currently active Bombs",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2432",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["displayText_format_abillitiesText_format"] = "none",
      ["fontSize"] = 26,
      ["shadowXOffset"] = 1,
      ["parent"] = " SoD - 04 - Remnant of Ner'zhul DG",
      ["regionType"] = "text",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "\
\
",
         },
         ["finish"] = {
         },
      },
      ["conditions"] = {
      },
      ["displayText_format_unit_realm_name"] = "never",
      ["displayText"] = "%unit %text",
      ["displayText_format_unit_color"] = "class",
      ["displayText_format_p_time_precision"] = 1,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "1AC(nyHEim6",
      ["xOffset"] = 0,
      ["justify"] = "LEFT",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 04 - Remnant of Ner'zhul - Malevolence",
      ["anchorPoint"] = "CENTER",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["displayText_format_unit_format"] = "Unit",
      ["config"] = {
      },
      ["wordWrap"] = "WordWrap",
      ["yOffset"] = 0,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["selfPoint"] = "BOTTOM",
   },
   ["SoD - 10 - Sylvanas Windrunner - Fake Summoner Debuff"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["customText"] = "function()\
    if(aura_env.state.isPlayer and (not aura_env.state.last or aura_env.state.last < GetTime() - 1))then\
        aura_env.state.last = GetTime()\
        \
        SendChatMessage(\"FAKE\");\
    end\
    \
    return nil;\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 5,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "update",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["debuffType"] = "HELPFUL",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, sourceGUID, _, _, _, destGUID, destName, _, _, spellID = ...;\
        if(subEvent == \"SPELL_AURA_APPLIED\")then\
            if(spellID == 351117)then\
                aura_env.debuffs[destName] = sourceGUID;\
            end\
        elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
            if(spellID == 351117)then\
                aura_env.debuffs[destName] = nil;\
                local state = allstates[destName];\
                if(state)then\
                    state.changed = true;\
                    state.show = false;\
                    \
                    return true;\
                end\
            end\
        elseif(subEvent == \"UNIT_DIED\")then\
            local npcID = select(6,strsplit(\"-\", destGUID));\
            if(npcID == \"177889\")then\
                for unit, judgeGUID in pairs(aura_env.debuffs)do\
                    if(judgeGUID == destGUID)then\
                        allstates[unit] =\
                        {\
                            show = true,\
                            changed = true,\
                            progressType = \"static\",\
                            value = 1,\
                            total = 1,\
                            unit  = unit,\
                            isPlayer = UnitIsUnit(\"player\",unit),\
                        };\
                    end\
                end\
                \
                return true;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.debuffs = {};\
    end\
end",
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["check"] = "event",
               ["events"] = "ENCOUNTER_START CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:UNIT_DIED",
               ["unit"] = "player",
               ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["wordWrap"] = "WordWrap",
      ["desc"] = "Chat bubble saying \"FAKE\" during Crushing Dread",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_itemequiped"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["parent"] = "SoD - 10 - Sylvanas Windrunner",
      ["displayText_format_p_time_precision"] = 1,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["fixedWidth"] = 200,
      ["shadowYOffset"] = -1,
      ["justify"] = "LEFT",
      ["displayText"] = "Fake\
%c",
      ["id"] = "SoD - 10 - Sylvanas Windrunner - Fake Summoner Debuff",
      ["xOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "UNITFRAME",
      ["config"] = {
      },
      ["uid"] = "wP9P6XmK7T0",
      ["selfPoint"] = "BOTTOM",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["displayText_format_c_format"] = "none",
   },
   ["SoD - 09 - Kel'Thuzad - Vengeful Destruction"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["authorOptions"] = {
      },
      ["customText"] = "function()\
    return aura_env.state.hpPerc and string.format(\"%.0f\",aura_env.state.hpPerc * 100) or \"5\"\
end",
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "unit",
               ["spellId"] = 352293,
               ["subeventSuffix"] = "_CAST_START",
               ["use_absorbMode"] = true,
               ["event"] = "Cast",
               ["names"] = {
               },
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_exact_spellId"] = true,
               ["unit"] = "boss",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0.55294117647059,
         0,
         1,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["type"] = "subborder",
            ["border_anchor"] = "bar",
            ["border_offset"] = 0,
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 2,
         },
         {
            ["text_text_format_n_format"] = "none",
            ["text_text"] = "%p",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_shadowXOffset"] = 1,
            ["anchorXOffset"] = 0,
            ["type"] = "subtext",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_fontType"] = "OUTLINE",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 17,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "Dead",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_shadowXOffset"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "OUTLINE",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 17,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_format"] = 0,
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 09 - Kel'Thuzad DG",
      ["desc"] = "Vengeful Destruction timer - kill adds",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["xOffset"] = 0,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["icon_side"] = "RIGHT",
      ["uid"] = "8OM4GSo8vyF",
      ["zoom"] = 0,
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["anchorFrameType"] = "SCREEN",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90100,
      ["id"] = "SoD - 09 - Kel'Thuzad - Vengeful Destruction",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["width"] = 200,
      ["sparkHidden"] = "NEVER",
      ["config"] = {
      },
      ["inverse"] = true,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   [" SoD - 06 - Painsmith Raznal - Intermission Blobs"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["yOffset"] = 480,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["events"] = "CLEU:SPELL_CAST_SUCCESS ECHO_PAINSMITH_TRIGGER_FIRE",
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 355525)then\
            for i=0,40,5 do\
                C_Timer.After(i,function() WeakAuras.ScanEvents(\"ECHO_PAINSMITH_TRIGGER_FIRE\",true); end);\
            end\
        end\
    elseif(event == \"ECHO_PAINSMITH_TRIGGER_FIRE\")then\
        local notFake = ...;\
        if(notFake)then\
            allstates[\"\"] = \
            {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                duration = 5,\
                expirationTime = GetTime() + 5,\
                autoHide = true,\
            };\
            return true;\
        end\
    end\
end",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["barColor"] = {
         1,
         0.45882352941176,
         0,
         1,
      },
      ["desaturate"] = false,
      ["sparkOffsetY"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%p",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_format"] = "timed",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 24,
            ["anchorXOffset"] = 0,
            ["anchorYOffset"] = 0,
         },
         {
            ["text_text_format_p_time_precision"] = 1,
            ["text_text"] = "FIRE",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_fontType"] = "OUTLINE",
            ["text_shadowYOffset"] = -1,
            ["anchorXOffset"] = 0,
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_time_format"] = 0,
            ["text_text_format_p_format"] = "timed",
            ["text_fontSize"] = 24,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_shadowXOffset"] = 1,
         },
         {
            ["border_offset"] = 0,
            ["border_anchor"] = "bar",
            ["type"] = "subborder",
            ["border_color"] = {
               0,
               0,
               0,
               1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Square Full White",
            ["border_size"] = 1,
         },
      },
      ["height"] = 35,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2430",
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["parent"] = " SoD - 06 - Painsmith Raznal",
      ["selfPoint"] = "TOP",
      ["icon"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["desc"] = "Timers for the fire patched in the Intermission. ",
      ["authorOptions"] = {
      },
      ["icon_side"] = "RIGHT",
      ["sparkOffsetX"] = 0,
      ["config"] = {
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Minimalist",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["zoom"] = 0,
      ["spark"] = false,
      ["anchorFrameType"] = "SCREEN",
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["width"] = 500,
      ["id"] = " SoD - 06 - Painsmith Raznal - Intermission Blobs",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = true,
      ["uid"] = "lP7RRkzkceA",
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
   },
   ["SoD - 09 - Kel'Thuzad - Fixate - Nameplate Glow"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["glow_frame_type"] = "NAMEPLATE",
            ["glow_thickness"] = 5,
            ["glow_action"] = "show",
            ["glow_XOffset"] = 5,
            ["do_glow"] = true,
            ["glow_color"] = {
               0,
               1,
               0.13333333333333,
               1,
            },
            ["glow_border"] = true,
            ["glow_length"] = 8,
            ["glow_type"] = "Pixel",
            ["use_glow_color"] = true,
            ["glow_lines"] = 12,
            ["glow_YOffset"] = 5,
         },
         ["finish"] = {
            ["hide_all_glows"] = true,
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.targets = {};\
\
aura_env.findNameplateUnit = function(unitGUID)\
    for i=1,40 do\
        local unit = \"nameplate\"..i;\
        if(UnitGUID(unit) == unitGUID)then\
            return unit;\
        end\
    end\
end",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["use_absorbMode"] = true,
               ["names"] = {
               },
               ["unit"] = "nameplate",
               ["use_unit"] = true,
               ["spellIds"] = {
               },
               ["custom_hide"] = "timed",
               ["use_nameplateType"] = false,
               ["type"] = "custom",
               ["use_health"] = false,
               ["subeventSuffix"] = "_CAST_START",
               ["events"] = "ENCOUNTER_START CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED NAME_PLATE_UNIT_ADDED NAME_PLATE_UNIT_REMOVED",
               ["percenthealth"] = "0",
               ["event"] = "Health",
               ["health"] = "0",
               ["custom_type"] = "stateupdate",
               ["health_operator"] = ">",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, sourceGUID, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(spellID == 355389 and destName == WeakAuras.me)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                \
                aura_env.targets[sourceGUID] = true;\
                \
                local unit = aura_env.findNameplateUnit(sourceGUID);\
                if(unit)then\
                    allstates[sourceGUID] = \
                    {\
                        changed = true,\
                        show = true,\
                        unit = unit,\
                        progressType = \"static\",\
                        total = 1,\
                        value = 1,\
                    };\
                    \
                    return true;\
                end\
            else\
                aura_env.targets[sourceGUID] = nil;\
                \
                local state = allstates[sourceGUID];\
                if(state)then\
                    state.changed = true;\
                    state.show = false;\
                    \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"NAME_PLATE_UNIT_ADDED\" or event == \"NAME_PLATE_UNIT_REMOVED\")then\
        local unit = ...;\
        if(unit)then\
            local guid = UnitGUID(unit);\
            if(aura_env.targets[guid])then\
                if(event == \"NAME_PLATE_UNIT_ADDED\")then\
                    allstates[guid] = \
                    {\
                        changed = true,\
                        show = true,\
                        unit = unit,\
                        progressType = \"static\",\
                        total = 1,\
                        value = 1,\
                    };\
                else\
                    allstates[guid].changed = true;\
                    allstates[guid].show = false;\
                end\
                \
                return true;\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.targets = {};\
    end\
end\
\
\
",
               ["subeventPrefix"] = "SPELL",
               ["check"] = "event",
               ["use_percenthealth"] = false,
               ["percenthealth_operator"] = ">",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "any",
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Glows plates for fixates on you. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2422",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 12,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["parent"] = " SoD - 09 - Kel'Thuzad",
      ["displayText_format_p_time_precision"] = 1,
      ["wordWrap"] = "WordWrap",
      ["fixedWidth"] = 200,
      ["shadowYOffset"] = -1,
      ["justify"] = "LEFT",
      ["tocversion"] = 90100,
      ["id"] = "SoD - 09 - Kel'Thuzad - Fixate - Nameplate Glow",
      ["xOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["config"] = {
      },
      ["uid"] = "LRGPsbENLdB",
      ["displayText"] = "",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   [" SoD - 06 - Painsmith Raznal - Mine Count"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.last = GetTime();",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["events"] = "ENCOUNTER_END CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_AURA_APPLIED_DOSE",
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        local state = allstates[\"\"];\
        if((subEvent == \"SPELL_AURA_APPLIED\" or subEvent == \"SPELL_AURA_APPLIED_DOSE\") and spellID == 356870 and aura_env.last + 0.1 < GetTime())then\
            aura_env.last = GetTime();\
            \
            state.changed = true;\
            state.stacks = state.stacks - 1;\
            \
            state.show = state.stacks ~= 0;\
            \
            return true;\
            \
        elseif(subEvent == \"SPELL_AURA_REMOVED\" and spellID == 348456)then\
            if(state)then\
                state.changed = true;\
                state.stacks = state.stacks + 1;\
            else\
                allstates[\"\"] = \
                {\
                    changed = true,\
                    show = true,\
                    progressType = \"static\",\
                    total = 1,\
                    value = 1,\
                    stacks = 1,\
                };\
            end\
            \
            return true;\
        end\
    elseif(event == \"ENCOUNTER_END\")then\
        local state = allstates[\"\"];\
        if(state)then\
            state.changed = true;\
            state.show = false;\
            \
            return true;\
        end\
    end\
end\
\
\
",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desc"] = "Flameclasp Eruption count",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2430",
         ["use_encounterid"] = true,
      },
      ["displayText_format_s_format"] = "none",
      ["fontSize"] = 30,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = " SoD - 06 - Painsmith Raznal",
      ["yOffset"] = 318.59991455078,
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["authorOptions"] = {
      },
      ["id"] = " SoD - 06 - Painsmith Raznal - Mine Count",
      ["displayText"] = "Mines: %s",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["selfPoint"] = "BOTTOM",
      ["config"] = {
      },
      ["uid"] = "fIvfyOID(nV",
      ["xOffset"] = -146.70031738281,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["wordWrap"] = "WordWrap",
   },
   ["SoD - 04 - Remnant of Ner'zhul main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 04 - Remnant of Ner'zhul DG",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["groupIcon"] = "4062736",
      ["config"] = {
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["borderInset"] = 1,
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["id"] = "SoD - 04 - Remnant of Ner'zhul main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "Remnant of Ner'zhul main Group",
      ["selfPoint"] = "CENTER",
      ["uid"] = "wgVsBTCcIIw",
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
   [" SoD - 10 - Sylvanas Windrunner - P1 Phasing"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["npcId"] = "175732",
               ["use_absorbMode"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["unit"] = "boss",
               ["subeventPrefix"] = "SPELL",
               ["use_track"] = true,
               ["names"] = {
               },
               ["spellName"] = 0,
               ["debuffType"] = "HELPFUL",
               ["use_absorbHealMode"] = true,
               ["type"] = "unit",
               ["use_health"] = false,
               ["health_operator"] = "<=",
               ["spellIds"] = {
               },
               ["percenthealth"] = "85.3",
               ["event"] = "Health",
               ["realSpellName"] = 0,
               ["use_npcId"] = true,
               ["use_spellName"] = true,
               ["health"] = "85.3",
               ["subeventSuffix"] = "_CAST_START",
               ["use_genericShowOn"] = true,
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = "<=",
               ["use_unit"] = true,
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["npcId"] = "175732",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["use_track"] = true,
               ["unit"] = "boss",
               ["spellName"] = 0,
               ["debuffType"] = "HELPFUL",
               ["use_absorbHealMode"] = true,
               ["type"] = "unit",
               ["use_health"] = false,
               ["subeventSuffix"] = "_CAST_START",
               ["health"] = "84.7",
               ["percenthealth"] = "84.7",
               ["event"] = "Health",
               ["realSpellName"] = 0,
               ["use_npcId"] = true,
               ["use_spellName"] = true,
               ["spellIds"] = {
               },
               ["health_operator"] = ">=",
               ["use_absorbMode"] = true,
               ["use_percenthealth"] = true,
               ["percenthealth_operator"] = ">=",
               ["use_unit"] = true,
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Warning for phase 1 change coming soon. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["difficulty"] = {
            ["single"] = "mythic",
         },
         ["size"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2435",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_difficulty"] = true,
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 55,
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_precision"] = 1,
      ["parent"] = "SoD - 10 - Sylvanas Windrunner",
      ["wordWrap"] = "WordWrap",
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["displayText"] = "CHECK HP",
      ["id"] = " SoD - 10 - Sylvanas Windrunner - P1 Phasing",
      ["yOffset"] = 250,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = 0,
      ["uid"] = "trggnceVOFt",
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["preset"] = "alphaPulse",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["SoD - 03 - The Nine main Group"] = {
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["controlledChildren"] = {
         " SoD - 03 - The Nine",
         " SoD - 03 - The Nine - Word of Recall DG",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["scale"] = 1,
      ["information"] = {
      },
      ["border"] = false,
      ["groupIcon"] = "4062741",
      ["anchorPoint"] = "CENTER",
      ["borderSize"] = 2,
      ["borderEdge"] = "Square Full White",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["yOffset"] = 0,
      ["uid"] = "veKS8nd9NJy",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["borderInset"] = 1,
      ["internalVersion"] = 53,
      ["xOffset"] = 0,
      ["selfPoint"] = "CENTER",
      ["id"] = "SoD - 03 - The Nine main Group",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["desc"] = "The Nine main group. \
",
      ["authorOptions"] = {
      },
      ["config"] = {
      },
      ["borderOffset"] = 4,
      ["subRegions"] = {
      },
      ["regionType"] = "group",
      ["conditions"] = {
      },
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
      },
      ["parent"] = "Echo - Sanctum of Domination S4 - Custom",
   },
});
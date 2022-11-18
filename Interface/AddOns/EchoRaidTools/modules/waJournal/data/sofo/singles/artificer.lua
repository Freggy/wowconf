local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ [" (03) Echo Public - Artificer - Stasis Trap Bait Done (gunshot sound)"] = {  ["outline"] = "OUTLINE",  ["displayText_format_2.p_format"] = "timed",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",    ["do_sound"] = false,   },   ["finish"] = {   },   ["init"] = {   },  },  ["displayText_format_1.p_time_format"] = 0,  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["displayText_format_1.p_time_precision"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2553",   ["class"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["ingroup"] = {    ["multi"] = {    },   },   ["use_never"] = true,   ["zoneIds"] = "",  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["displayText_format_2.p_time_precision"] = 1,  ["regionType"] = "text",  ["selfPoint"] = "CENTER",  ["conditions"] = {  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = "362885",     ["auranames"] = {      "361966",      "Infused Strikes",     },     ["use_genericShowOn"] = true,     ["group_count"] = "0",     ["group_countOperator"] = ">",     ["showClones"] = true,     ["name_operator"] = "find('%s')",     ["use_debuffClass"] = false,     ["custom_type"] = "event",     ["fetchTooltip"] = true,     ["event"] = "Combat Log",     ["use_spellId"] = true,     ["name"] = "Plasma Discharge",     ["use_sourceUnit"] = false,     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["useGroup_count"] = true,     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["subeventPrefix"] = "SPELL",     ["custom_hide"] = "timed",     ["use_tooltip"] = false,     ["ignoreSelf"] = true,     ["spellName"] = 0,     ["useExactSpellId"] = false,     ["use_unit"] = true,     ["matchesShowOn"] = "showOnActive",     ["buffShowOn"] = "showOnActive",     ["spellIds"] = {      283573,     },     ["type"] = "combatlog",     ["duration"] = "2",     ["auraspellids"] = {     },     ["debuffType"] = "HARMFUL",     ["names"] = {      "Sacred Blade",     },     ["useName"] = true,     ["unevent"] = "auto",     ["realSpellName"] = 0,     ["use_spellName"] = false,     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["unit"] = "boss",     ["remOperator"] = "<",     ["use_absorbHealMode"] = true,     ["subeventSuffix"] = "_CAST_SUCCESS",     ["useRem"] = true,    },    ["untrigger"] = {    },   },   ["disjunctive"] = "all",   ["activeTriggerMode"] = -10,  },  ["yOffset"] = 200,  ["authorOptions"] = {  },  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["config"] = {  },  ["color"] = {   1,   1,   1,   1,  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(03) Echo Public - Artificer - Stasis Trap Bait Done (gunshot sound)",  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["uid"] = "irwkgoI5Zme",  ["xOffset"] = 0,  ["displayText"] = "DONE",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["subRegions"] = {   {    ["type"] = "subbackground",   },  }, }, [" (03) Echo Public - Artificer - Nameplate Trap Rearm"] = {  ["sparkWidth"] = 10,  ["sparkOffsetX"] = 0,  ["authorOptions"] = {  },  ["yOffset"] = -10,  ["anchorPoint"] = "BOTTOM",  ["echoVersion"] = 3,  ["sparkRotation"] = 0,  ["sparkRotationMode"] = "AUTO",  ["icon"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "stateupdate",     ["custom_hide"] = "timed",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED NAMEPLATE_UNIT_ADDED NAMEPLATE_UNIT_REMOVED ENCOUNTER_START",     ["spellIds"] = {     },     ["names"] = {     },     ["check"] = "event",     ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, sourceGUID, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(spellID == 362882)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                aura_env.targets[destGUID] = GetTime();\
                local unit = aura_env.findNameplateUnit(destGUID);\
                if(unit)then\
                    allstates[destGUID] = {\
                        show = true,\
                        changed = true,\
                        progressType = \"timed\",\
                        expirationTime = GetTime() + 12;\
                        duration = 12;\
                        unit = unit,\
                        autoHide = true;\
                    };\
                    return true;\
                end\
                \
            elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
                aura_env.targets[destGUID] = nil;\
                local state = allstates[destGUID];\
                if(state)then\
                    state.changed = true;\
                    state.show = false; \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"NAME_PLATE_UNIT_ADDED\" or event == \"NAME_PLATE_UNIT_REMOVED\")then\
        local unit = ...;\
        if(unit)then\
            local guid = UnitGUID(unit);\
            if(guid)then\
                local time = aura_env.targets[guid];\
                if(time)then\
                    if(event == \"NAME_PLATE_UNIT_ADDED\")then\
                        allstates[guid] = {\
                            show = true,\
                            changed = true,\
                            progressType = \"timed\",\
                            expirationTime = time + 12;\
                            duration = 12;\
                            unit = unit,\
                            autoHide = true;\
                        };\
                        return true;\
                    else\
                        local state = allstates[guid];\
                        if(state)then\
                            state.changed = true;\
                            state.show = false; \
                            return true;\
                        end\
                    end     \
                end\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.targets = {};\
    end\
end",     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["icon_color"] = {   1,   1,   1,   1,  },  ["internalVersion"] = 50,  ["selfPoint"] = "TOP",  ["barColor"] = {   0.96470588235294,   0.83137254901961,   0.83137254901961,   1,  },  ["desaturate"] = false,  ["sparkOffsetY"] = 0,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["type"] = "subforeground",   },   {    ["text_shadowXOffset"] = 1,    ["text_text"] = "%p",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["type"] = "subtext",    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_fontType"] = "OUTLINE",    ["text_shadowYOffset"] = -1,    ["anchorXOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = true,    ["text_anchorPoint"] = "INNER_RIGHT",    ["text_text_format_p_time_format"] = 0,    ["text_text_format_p_format"] = "timed",    ["text_fontSize"] = 12,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_time_precision"] = 1,   },   {    ["border_offset"] = 0,    ["border_anchor"] = "bar",    ["border_size"] = 1,    ["border_color"] = {     0,     0,     0,     1,    },    ["border_visible"] = true,    ["border_edge"] = "Square Full White",    ["type"] = "subborder",   },  },  ["height"] = 15,  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2553",   ["class"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,  },  ["sparkBlendMode"] = "ADD",  ["useAdjustededMax"] = false,  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "aura_env.targets = {};\
\
aura_env.findNameplateUnit = function(unitGUID)\
  for i=1,40 do\
    local unit = \"nameplate\"..i;\
    if(UnitGUID(unit) == unitGUID)then\
      return unit;\
    end\
  end\
end",   },  },  ["backgroundColor"] = {   0,   0,   0,   0.5,  },  ["xOffset"] = 0,  ["useAdjustededMin"] = false,  ["regionType"] = "aurabar",  ["sparkColor"] = {   1,   1,   1,   1,  },  ["iconSource"] = -1,  ["icon_side"] = "RIGHT",  ["sparkHidden"] = "NEVER",  ["uid"] = "Er0YmDDLERg",  ["sparkHeight"] = 30,  ["texture"] = "Blizzard",  ["zoom"] = 0,  ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",  ["spark"] = false,  ["tocversion"] = 90200,  ["id"] = "(03) Echo Public - Artificer - Nameplate Trap Rearm",  ["width"] = 150,  ["frameStrata"] = 1,  ["anchorFrameType"] = "NAMEPLATE",  ["alpha"] = 1,  ["config"] = {  },  ["inverse"] = false,  ["anchorFrameParent"] = false,  ["orientation"] = "HORIZONTAL",  ["conditions"] = {  },  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["(03) Echo Public - SOFO - Artificer"] = {  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["borderBackdrop"] = "Blizzard Tooltip",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["scale"] = 1,  ["information"] = {  },  ["border"] = false,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 7,  ["authorOptions"] = {  },  ["borderColor"] = {   0,   0,   0,   1,  },  ["uid"] = "mdgBdoCFODA",  ["yOffset"] = 0,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["subeventPrefix"] = "SPELL",     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["names"] = {     },     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["xOffset"] = 0,  ["internalVersion"] = 50,  ["config"] = {  },  ["selfPoint"] = "CENTER",  ["id"] = "(03) Echo Public - SOFO - Artificer",  ["borderOffset"] = 4,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["tocversion"] = 90200,  ["borderInset"] = 1,  ["borderSize"] = 2,  ["subRegions"] = {  },  ["regionType"] = "group",  ["conditions"] = {  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },  },  ["borderEdge"] = "Square Full White", }, [" (03) Echo Public - Artificer - Stasis Trap bait inc"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",    ["do_sound"] = true,   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["auranames"] = {      "334228",     },     ["remaining_operator"] = "<",     ["subeventPrefix"] = "SPELL",     ["remaining"] = "3",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HARMFUL",     ["use_remaining"] = true,     ["subeventSuffix"] = "_CAST_START",     ["text"] = "Traps",     ["event"] = "BigWigs Timer",     ["names"] = {     },     ["unit"] = "player",     ["use_text"] = true,     ["spellIds"] = {     },     ["useName"] = true,     ["remOperator"] = "<",     ["type"] = "addons",     ["duration"] = "3",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "CENTER",  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["size"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["class_and_spec"] = {    ["multi"] = {     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,    },   },   ["encounterid"] = "2553",   ["use_class_and_spec"] = false,   ["zoneIds"] = "",  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["regionType"] = "text",  ["wordWrap"] = "WordWrap",  ["conditions"] = {  },  ["displayText_format_1.p_time_format"] = 0,  ["displayText"] = "BAIT TRAPS %1.p",  ["displayText_format_2.p_format"] = "timed",  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["config"] = {  },  ["authorOptions"] = {  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(03) Echo Public - Artificer - Stasis Trap bait inc",  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["uid"] = "4hZvQ8ucIPl",  ["yOffset"] = 200,  ["color"] = {   1,   1,   1,   1,  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["displayText_format_1.p_time_precision"] = 1, },});
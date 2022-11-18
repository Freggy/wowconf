local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({
   ["09 Stone Legion Generals"] = {
      ["controlledChildren"] = {
         "09 Stone Legion Generals - DOUBLE ORB",
         "09 Stone Legion Generals - Idiot Detector Hardened Stone Form",
         "09 Stone Legion Generals - Personal Anima Display",
         "09 Stone Legion Generals - Prince Energy Bar",
         "09 Stone Legion Generals - Reverberating Eruption Drop Off Location",
         "09 Stone Legion Generals - Reverberating Eruption Nameplate",
         "09 Stone Legion Generals - Reverberating Eruption Soak Assigment",
         "09 Stone Legion Generals - Seismic Upheaval",
         "09 Stone Legion Generals - Seismic dance",
         "09 Stone Legion Generals - Thing applied",
         "09 Stone Legion Generals - Wicked Blade Player",
         "09 Stone Legion Generals - Wicked Blade Raidframe Glow",
         "09 Stone Legion Generals Anima Orb display for scripe so he can see. Send help :)",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 71,
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
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["tocversion"] = 90002,
      ["id"] = "09 Stone Legion Generals",
      ["authorOptions"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["borderInset"] = 1,
      ["config"] = {
      },
      ["groupIcon"] = 3614362,
      ["selfPoint"] = "BOTTOMLEFT",
      ["xOffset"] = 0,
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
         ["groupOffset"] = true,
      },
      ["uid"] = "yNHrDR3pz4b",
   },
   ["06 Lady Inerva Darkvein Scripe/Phil DG"] = {
      ["arcLength"] = 360,
      ["controlledChildren"] = {
         "Sins Duration",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
      ["groupIcon"] = 3614366,
      ["sortHybridTable"] = {
         ["Sins Duration"] = false,
      },
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
      ["useLimit"] = false,
      ["align"] = "CENTER",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["radius"] = 200,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["animate"] = false,
      ["source"] = "import",
      ["selfPoint"] = "TOP",
      ["scale"] = 1,
      ["xOffset"] = -699.30003356934,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "none",
      ["authorOptions"] = {
      },
      ["config"] = {
      },
      ["gridType"] = "RD",
      ["limit"] = 5,
      ["constantFactor"] = "RADIUS",
      ["frameStrata"] = 1,
      ["borderOffset"] = 4,
      ["grow"] = "DOWN",
      ["uid"] = "MFURhTadvB4",
      ["id"] = "06 Lady Inerva Darkvein Scripe/Phil DG",
      ["fullCircle"] = true,
      ["gridWidth"] = 5,
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
      ["yOffset"] = 110.69982910156,
      ["anchorPoint"] = "CENTER",
      ["space"] = 15,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["rotation"] = 0,
   },
   ["Occulist Energy "] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = -20,
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
               ["npcId"] = "165763",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["unit"] = "nameplate",
               ["powertype"] = 3,
               ["use_powertype"] = true,
               ["spellName"] = 0,
               ["type"] = "unit",
               ["use_unit"] = true,
               ["unevent"] = "auto",
               ["duration"] = "1",
               ["debuffType"] = "HELPFUL",
               ["event"] = "Power",
               ["subeventSuffix"] = "_CAST_START",
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["use_nameplateType"] = false,
               ["use_npcId"] = true,
               ["use_track"] = true,
               ["names"] = {
               },
            },
            ["untrigger"] = {
               ["unit"] = "nameplate",
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
         0.74117647058824,
         0.54509803921569,
         0,
         1,
      },
      ["desc"] = "Anchors an energy bar to Vile Occultist's nameplates",
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
            ["text_selfPoint"] = "CENTER",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 8,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
         },
         {
            ["border_offset"] = 1,
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
      ["height"] = 10,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2402",
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
      ["desaturate"] = false,
      ["source"] = "import",
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
      ["icon"] = false,
      ["parent"] = "03 Sun Kings Salvation",
      ["authorOptions"] = {
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["uid"] = "JLinh0Ls9xb",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["icon_side"] = "RIGHT",
      ["sparkHeight"] = 30,
      ["anchorFrameType"] = "NAMEPLATE",
      ["anchorFrameParent"] = true,
      ["texture"] = "Solid",
      ["frameStrata"] = 1,
      ["zoom"] = 0,
      ["auto"] = true,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHidden"] = "NEVER",
      ["id"] = "Occulist Energy ",
      ["alpha"] = 1,
      ["width"] = 100,
      ["spark"] = false,
      ["config"] = {
      },
      ["inverse"] = false,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
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
   ["Afterimage spawn"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
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
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "event",
               ["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
               ["unevent"] = "timed",
               ["names"] = {
               },
               ["duration"] = "1",
               ["event"] = "Chat Message",
               ["unit"] = "player",
               ["message"] = "An afterimage of Baroness Frieda manifests to cast",
               ["message_operator"] = "find('%s')",
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["use_message"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["use_messageType"] = true,
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
      ["desc"] = "Afterimage alert\
",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
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
      ["fontSize"] = 72,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
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
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "LEFT",
      ["xOffset"] = 0,
      ["id"] = "Afterimage spawn",
      ["yOffset"] = 270,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "PwYHGKRQOkJ",
      ["config"] = {
      },
      ["parent"] = "07 The Council of Blood",
      ["displayText"] = "Afterimage SPAWN!!!",
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
      ["selfPoint"] = "BOTTOM",
   },
   ["09 Stone Legion Generals - DOUBLE ORB"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = "09 Stone Legion Generals",
      ["displayText"] = "DOUBLE ORB",
      ["yOffset"] = 330,
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
               ["useName"] = false,
               ["auraspellids"] = {
                  "342655",
               },
               ["event"] = "Health",
               ["unit"] = "player",
               ["useExactSpellId"] = true,
               ["names"] = {
               },
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["subeventSuffix"] = "_CAST_START",
               ["auranames"] = {
                  "342655",
               },
               ["type"] = "aura2",
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["useName"] = false,
               ["debuffType"] = "HARMFUL",
               ["auranames"] = {
                  "342698",
               },
               ["type"] = "aura2",
               ["auraspellids"] = {
                  "342698",
               },
               ["useExactSpellId"] = true,
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Double Volatile Anima Infection",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["difficulty"] = {
         },
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
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
         ["encounterid"] = "2417",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 72,
      ["source"] = "import",
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
      ["shadowYOffset"] = -1,
      ["displayText_format_p_time_precision"] = 1,
      ["fixedWidth"] = 200,
      ["preferToUpdate"] = true,
      ["authorOptions"] = {
      },
      ["justify"] = "LEFT",
      ["tocversion"] = 90002,
      ["id"] = "09 Stone Legion Generals - DOUBLE ORB",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "XJ6fHlNHlY3",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
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
      ["wordWrap"] = "WordWrap",
   },
   ["10 Sire Denathrius - Night hunter assigment"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = "10 Sire Denathrius",
      ["displayText"] = "%mark",
      ["yOffset"] = 293.39990234375,
      ["displayText_format_unit_abbreviate_max"] = 8,
      ["echoVersion"] = 1,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["displayText_format_unit_abbreviate"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["duration"] = "1",
               ["genericShowOn"] = "showOnCooldown",
               ["names"] = {
               },
               ["debuffType"] = "HELPFUL",
               ["spellName"] = 0,
               ["type"] = "custom",
               ["unit"] = "player",
               ["custom_type"] = "stateupdate",
               ["subeventPrefix"] = "SPELL",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Cooldown Progress (Spell)",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local time, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\" and spellID == 327796)then\
            if(not aura_env.lastTime or time > aura_env.lastTime + 5)then\
                aura_env.castCount = 0;\
                aura_env.targets = {};\
                elogl(\"New soak\");\
            end\
            \
            aura_env.castCount = aura_env.castCount + 1;\
            aura_env.targets[destName] =  aura_env.castCount;\
            \
            aura_env.lastTime = time;\
            \
            elogl(destName,aura_env.castCount);\
            \
            if(aura_env.castCount == 3)then\
                elogl(\"Assigning\");\
                \
                local asignedPeople = {};\
                local soakers = {};\
                \
                local index = 0;\
                for soakTarget,soakIndex in pairs(aura_env.targets)do\
                    local assignedCount = 0;\
                    soakers[soakTarget] = {};\
                    index  =  index+1\
                    for unit in WA_IterateGroupMembers() do\
                        local candidateName = EchoInternal:UnitName(unit);\
                        if(EchoInternal:IsRanged(unit,true) and not aura_env.targets[candidateName] and not asignedPeople[candidateName])then\
                            assignedCount = assignedCount + 1;\
                            asignedPeople[candidateName] = true;\
                            \
                            table.insert(soakers[soakTarget],candidateName);\
                            \
                            if(candidateName == WeakAuras.me)then\
                                allstates[\"\"] = \
                                {\
                                    changed = true,\
                                    show = true,\
                                    progressType = \"timed\",\
                                    duration = 6,\
                                    expirationTime = GetTime() + 6,\
                                    autoHide = true,\
                                    unit = soakTarget,\
                                    mark = \"{rt\" ..soakIndex..\"}\", \
                                };      \
                            end\
                            \
                            if(assignedCount == 3)then\
                                break;\
                            end\
                        end\
                    end\
                end\
                \
                WeakAuras.ScanEvents(\"ECHO_NIGHT_STALKER_ASSIGMENT\",soakers);\
                \
                return allstates[\"\"] ~= nil;\
            end\
        end\
    end \
end",
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["spellIds"] = {
               },
               ["events"] = "CLEU:SPELL_AURA_APPLIED",
               ["check"] = "event",
               ["use_genericShowOn"] = true,
               ["use_track"] = true,
               ["unevent"] = "auto",
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
      ["desc"] = "You're assigned to handle Night Hunter. ",
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
         ["zoneIds"] = "",
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
         ["encounterid"] = "2407",
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 125,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["displayText_format_mark_format"] = "none",
      ["preferToUpdate"] = true,
      ["regionType"] = "text",
      ["displayText_format_unit_realm_name"] = "never",
      ["conditions"] = {
      },
      ["shadowYOffset"] = -1,
      ["xOffset"] = -8.9996948242188,
      ["displayText_format_unit_color"] = "class",
      ["displayText_format_p_time_precision"] = 1,
      ["wordWrap"] = "WordWrap",
      ["uid"] = "jhG01aDM104",
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\SharpPunch.ogg",
            ["do_sound"] = true,
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = false,
         },
      },
      ["justify"] = "CENTER",
      ["displayText_format_unit_format"] = "Unit",
      ["id"] = "10 Sire Denathrius - Night hunter assigment",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["anchorPoint"] = "CENTER",
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
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["selfPoint"] = "BOTTOM",
   },
   ["09 Stone Legion Generals - Wicked Blade Player"] = {
      ["user_y"] = 0,
      ["iconSource"] = 0,
      ["user_x"] = 0,
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 10,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["sameTexture"] = false,
      ["icon"] = true,
      ["keepAspectRatio"] = false,
      ["selfPoint"] = "TOP",
      ["desaturate"] = false,
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2417",
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
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["startAngle"] = 0,
      ["useAdjustededMin"] = false,
      ["regionType"] = "icon",
      ["blendMode"] = "BLEND",
      ["slantMode"] = "INSIDE",
      ["zoom"] = 0,
      ["auto"] = true,
      ["compress"] = false,
      ["alpha"] = 1,
      ["config"] = {
      },
      ["displayIcon"] = 1029718,
      ["backgroundOffset"] = 0,
      ["parent"] = "09 Stone Legion Generals",
      ["desaturateBackground"] = false,
      ["cooldownSwipe"] = true,
      ["cooldownEdge"] = false,
      ["desaturateForeground"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["duration"] = "1",
               ["use_spell"] = true,
               ["subeventPrefix"] = "SPELL",
               ["destUnit"] = "player",
               ["debuffType"] = "HELPFUL",
               ["type"] = "unit",
               ["unevent"] = "auto",
               ["event"] = "Cast",
               ["use_unit"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["use_spellId"] = false,
               ["spellIds"] = {
               },
               ["spell"] = "Wicked Blade",
               ["unit"] = "boss",
               ["use_destUnit"] = false,
               ["use_absorbMode"] = true,
               ["names"] = {
               },
            },
            ["untrigger"] = {
               ["unit"] = "boss",
            },
         },
         [2] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["useExactSpellId"] = true,
               ["unit"] = "player",
               ["auraspellids"] = {
                  "333377",
               },
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[2];\
end",
         ["activeTriggerMode"] = -10,
      },
      ["endAngle"] = 360,
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
            ["text_shadowXOffset"] = 0,
            ["text_text"] = "Blade cast",
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
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = 0,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "TOP",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 18,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
         },
         {
            ["text_shadowXOffset"] = 0,
            ["text_text"] = "Blade Inc",
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
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = 0,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "TOP",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 18,
            ["anchorXOffset"] = 0,
            ["text_visible"] = false,
         },
      },
      ["height"] = 50,
      ["useAdjustededMax"] = false,
      ["fontSize"] = 12,
      ["source"] = "import",
      ["mirror"] = false,
      ["desc"] = "Wicked Blade on you. ",
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["crop_x"] = 0.41,
      ["cooldownTextDisabled"] = false,
      ["xOffset"] = 0,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["anchorFrameParent"] = false,
      ["foregroundColor"] = {
         1,
         0,
         0,
         1,
      },
      ["backgroundColor"] = {
         0.50196078431373,
         0.50196078431373,
         0.50196078431373,
         0.5,
      },
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
            ["do_sound"] = false,
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["anchorFrameType"] = "SCREEN",
      ["useCooldownModRate"] = true,
      ["id"] = "09 Stone Legion Generals - Wicked Blade Player",
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["frameStrata"] = 1,
      ["width"] = 50,
      ["tocversion"] = 90002,
      ["crop_y"] = 0.41,
      ["inverse"] = false,
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
      ["orientation"] = "CLOCKWISE",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "show",
               ["value"] = 0,
            },
            ["changes"] = {
               {
                  ["value"] = false,
                  ["property"] = "sub.2.text_visible",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.3.text_visible",
               },
               {
                  ["property"] = "cooldownSwipe",
               },
               {
                  ["property"] = "cooldownEdge",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 2,
               ["variable"] = "show",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
      },
      ["cooldown"] = true,
      ["uid"] = "JwdrGUjvPIw",
   },
   ["10 Sire Denathrius - Shattering Pain Bar Non Bait "] = {
      ["textFlags"] = "None",
      ["stacksSize"] = 12,
      ["iconSource"] = -1,
      ["xOffset"] = 1.25,
      ["stacksFlags"] = "None",
      ["yOffset"] = 387.75012207031,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 5,
      ["sparkRotation"] = 0,
      ["rotateText"] = "NONE",
      ["backgroundColor"] = {
         0.17647058823529,
         0.17647058823529,
         0.17647058823529,
         0.7818441838026,
      },
      ["fontFlags"] = "OUTLINE",
      ["icon_color"] = {
         1,
         1,
         1,
         1,
      },
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0,
         1,
         0.15686274509804,
         1,
      },
      ["desc"] = "Knockback incoming. ",
      ["sparkOffsetY"] = 0,
      ["load"] = {
         ["ingroup"] = {
            ["multi"] = {
            },
         },
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
         ["spec"] = {
            ["single"] = 2,
            ["multi"] = {
               [2] = true,
            },
         },
         ["role"] = {
            ["single"] = "TANK",
            ["multi"] = {
               ["TANK"] = true,
            },
         },
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["multi"] = {
            },
         },
         ["race"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2407",
         ["faction"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["single"] = "HUNTER",
            ["multi"] = {
               ["HUNTER"] = true,
            },
         },
         ["pvptalent"] = {
            ["multi"] = {
            },
         },
         ["talent2"] = {
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
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["stacks"] = true,
      ["texture"] = "Minimalist",
      ["textFont"] = "Friz Quadrata TT",
      ["zoom"] = 0,
      ["spark"] = false,
      ["tocversion"] = 90002,
      ["timerFont"] = "Friz Quadrata TT",
      ["alpha"] = 1,
      ["uid"] = "DshJxppiRhp",
      ["displayIcon"] = 1357802,
      ["textColor"] = {
         1,
         1,
         1,
         1,
      },
      ["sparkOffsetX"] = 0,
      ["color"] = {
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
      ["preferToUpdate"] = true,
      ["config"] = {
      },
      ["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
      ["customTextUpdate"] = "update",
      ["borderInset"] = 11,
      ["displayTextLeft"] = "%n",
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["use_castType"] = false,
               ["spellId"] = "332619",
               ["auranames"] = {
                  "Rejuvenation",
               },
               ["ownOnly"] = true,
               ["destUnit"] = "target",
               ["use_extend"] = true,
               ["spellName"] = "Death Knell",
               ["custom_type"] = "stateupdate",
               ["event"] = "Combat Log",
               ["use_percentpower"] = true,
               ["castType"] = "cast",
               ["use_spellId"] = true,
               ["name"] = "Flames of Punishment",
               ["use_sourceUnit"] = false,
               ["check"] = "event",
               ["use_destUnit"] = false,
               ["use_track"] = true,
               ["use_absorbMode"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["subeventPrefix"] = "SPELL",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["percentpower"] = "80",
               ["custom_hide"] = "timed",
               ["debuffType"] = "HELPFUL",
               ["names"] = {
                  "Vulnerable",
               },
               ["useName"] = true,
               ["unit"] = "boss",
               ["unevent"] = "timed",
               ["spellIds"] = {
               },
               ["duration"] = "3.5",
               ["extend"] = "4",
               ["type"] = "combatlog",
               ["realSpellName"] = "Death Knell",
               ["use_spellName"] = false,
               ["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
               ["dynamicDuration"] = true,
               ["use_genericShowOn"] = true,
               ["use_unit"] = true,
               ["sourceUnit"] = "player",
               ["percentpower_operator"] = ">=",
            },
            ["untrigger"] = {
               ["unit"] = "boss",
            },
         },
         ["disjunctive"] = "any",
         ["activeTriggerMode"] = -10,
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["internalVersion"] = 53,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["colorR"] = 1,
            ["duration"] = "0",
            ["alphaType"] = "custom",
            ["colorA"] = 1,
            ["colorG"] = 1,
            ["alphaFunc"] = "\
\
",
            ["use_alpha"] = false,
            ["type"] = "none",
            ["easeType"] = "none",
            ["scaley"] = 1,
            ["alpha"] = 0,
            ["y"] = 0,
            ["x"] = 0,
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["rotate"] = 0,
            ["colorB"] = 1,
            ["scalex"] = 1,
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["backdropInFront"] = false,
      ["text"] = true,
      ["stacksFont"] = "Friz Quadrata TT",
      ["stickyDuration"] = false,
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["width"] = 448.89956665039,
      ["version"] = 6,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["border_size"] = 16,
            ["border_anchor"] = "bar",
            ["type"] = "subborder",
            ["border_color"] = {
               1,
               1,
               1,
               0.5,
            },
            ["border_visible"] = false,
            ["border_edge"] = "None",
            ["border_offset"] = 5,
         },
         {
            ["type"] = "subforeground",
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text"] = "%p",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Expressway",
            ["text_shadowXOffset"] = 1,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "KNOCKBACK",
            ["text_text_format_1.destName_abbreviate_max"] = 8,
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
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_1.destName_abbreviate"] = false,
            ["text_text_format_1.destName_format"] = "Unit",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text_format_s_format"] = "none",
            ["text_text"] = "%s",
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
            ["text_anchorPoint"] = "ICON_CENTER",
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_visible"] = false,
         },
         {
            ["glowFrequency"] = 0.1,
            ["type"] = "subglow",
            ["useGlowColor"] = true,
            ["glowType"] = "Pixel",
            ["glowLength"] = 10,
            ["glowYOffset"] = 0,
            ["glowColor"] = {
               0.31764705882353,
               1,
               0,
               1,
            },
            ["glow"] = false,
            ["glowThickness"] = 1,
            ["glowXOffset"] = 0,
            ["glow_anchor"] = "bar",
            ["glowScale"] = 1,
            ["glowLines"] = 8,
            ["glowBorder"] = false,
         },
         {
            ["border_size"] = 2,
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
            ["type"] = "subborder",
         },
      },
      ["timer"] = true,
      ["timerFlags"] = "None",
      ["textSize"] = 12,
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["height"] = 32.900024414062,
      ["source"] = "import",
      ["sparkHidden"] = "NEVER",
      ["authorOptions"] = {
      },
      ["displayTextRight"] = "%p",
      ["border"] = false,
      ["borderEdge"] = "None",
      ["sparkWidth"] = 3,
      ["borderSize"] = 16,
      ["url"] = "",
      ["icon_side"] = "LEFT",
      ["sparkRotationMode"] = "AUTO",
      ["borderOffset"] = 5,
      ["sparkHeight"] = 14,
      ["borderInFront"] = false,
      ["semver"] = "1.0.5",
      ["stacksColor"] = {
         1,
         1,
         1,
         1,
      },
      ["timerSize"] = 12,
      ["borderColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["id"] = "10 Sire Denathrius - Shattering Pain Bar Non Bait ",
      ["icon"] = true,
      ["frameStrata"] = 5,
      ["anchorFrameType"] = "SCREEN",
      ["desaturate"] = false,
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bam.ogg",
            ["do_sound"] = true,
         },
         ["finish"] = {
         },
         ["init"] = {
            ["custom"] = "-----CHANGE HERE------\
aura_env.sound = false\
----------------------\
\
\
aura_env.warn = function()\
    local now = GetTime()\
    if now  > (aura_env.lastWarn or 0) + 0.5 then\
        aura_env.lastWarn = now\
        PlaySoundFile(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\WaterDrop.ogg\", \"master\")\
    end\
end\
\
\
aura_env.count = 0\
aura_env.point = \"LEFT\"\
aura_env.castPoint = \"RIGHT\"\
aura_env.offsetMulti = 1\
\
local orientation = WeakAuras.regions[aura_env.id].region.orientation\
if orientation == \"HORIZONTAL\"\
then\
    aura_env.point = \"LEFT\"\
    aura_env.offsetMulti = 1\
    aura_env.castPoint = \"RIGHT\"\
elseif orientation == \"HORIZONTAL_INVERSE\"\
then\
    aura_env.point = \"RIGHT\"\
    aura_env.offsetMulti = -1\
    aura_env.castPoint = \"LEFT\"\
end\
\
-- cleanup to prevent  copies\
local bar = WeakAuras.regions[aura_env.id].region.bar\
if bar.spark2 then bar.spark2:Hide() end\
if bar.spark3 then bar.spark3:Hide() end\
if bar.spark4 then bar.spark4:Hide() end\
if bar.cast then bar.cast:Hide() end\
\
\
bar.spark:SetHeight(bar:GetHeight()+1);\
\
\
\
\
\
\
",
            ["do_custom"] = false,
         },
      },
      ["inverse"] = false,
      ["auto"] = true,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["parent"] = "10 Sire Denathrius",
   },
   ["Sinseekers P3 - range condition"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["parent"] = "02 Huntsman Altimor",
      ["preferToUpdate"] = true,
      ["customText"] = "function()\
    return aura_env.getDisplayString()\
end",
      ["yOffset"] = -20,
      ["foregroundColor"] = {
         1,
         1,
         1,
         1,
      },
      ["desaturateBackground"] = false,
      ["sameTexture"] = false,
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
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["npcId"] = "169458",
               ["duration"] = "9999",
               ["subeventPrefix"] = "SPELL",
               ["use_stage"] = true,
               ["debuffType"] = "HELPFUL",
               ["type"] = "addons",
               ["custom_hide"] = "custom",
               ["unevent"] = "auto",
               ["unit"] = "boss",
               ["stage_operator"] = "==",
               ["event"] = "BigWigs Stage",
               ["subeventSuffix"] = "_CAST_START",
               ["use_npcId"] = true,
               ["custom_type"] = "event",
               ["spellIds"] = {
               },
               ["events"] = "UNIT_SPELLCAST_SUCCEEDED,ENCOUNTER_START,ENCOUNTER_END",
               ["use_absorbMode"] = true,
               ["names"] = {
               },
               ["stage"] = "3",
               ["use_unit"] = true,
            },
            ["untrigger"] = {
               ["unit"] = "boss",
            },
         },
         [2] = {
            ["trigger"] = {
               ["custom_hide"] = "timed",
               ["type"] = "custom",
               ["custom"] = "function(allstates, event, duration, expTime)\
    if(event == \"ECHO_HUNTSMAN_SINSEEKERS_TARGETS\" and duration)then\
        allstates[\"\"] = {\
            show = true,\
            changed = true,\
            progressType = \"timed\",\
            duration = duration,\
            expirationTime = expTime,\
            autoHide = true,\
        };\
        return true;\
    end\
end",
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["events"] = "ECHO_HUNTSMAN_SINSEEKERS_TARGETS",
               ["debuffType"] = "HELPFUL",
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = 2,
      },
      ["endAngle"] = 360,
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
      ["desc"] = "Warns when others are too close in Phase 3 during Sinseekers",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
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
            ["text_selfPoint"] = "CENTER",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_p_format"] = "timed",
            ["type"] = "subtext",
            ["text_text_format_p_time_precision"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_n_format"] = "none",
            ["text_text_format_p_time_format"] = 0,
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_c_format"] = "none",
         },
      },
      ["height"] = 50,
      ["crop_y"] = 0.41,
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
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
         ["encounterid"] = "2418",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["useAdjustededMax"] = false,
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["source"] = "import",
      ["startAngle"] = 0,
      ["backgroundColor"] = {
         0,
         1,
         0,
         0.60000002384186,
      },
      ["crop_x"] = 0.41,
      ["mirror"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["selfPoint"] = "CENTER",
      ["blendMode"] = "BLEND",
      ["desaturateForeground"] = false,
      ["anchorPoint"] = "CENTER",
      ["slantMode"] = "INSIDE",
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["anchorFrameType"] = "SCREEN",
      ["alpha"] = 1,
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_10px.tga",
      ["compress"] = false,
      ["id"] = "Sinseekers P3 - range condition",
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["frameStrata"] = 1,
      ["width"] = 50,
      ["fontSize"] = 12,
      ["uid"] = "v3b5uM8Siir",
      ["inverse"] = false,
      ["xOffset"] = 0,
      ["orientation"] = "CLOCKWISE",
      ["conditions"] = {
         {
            ["check"] = {
               ["op"] = ">",
               ["type"] = "group",
               ["trigger"] = -1,
               ["op_range"] = "<=",
               ["variable"] = "rangecheck",
               ["range"] = "5",
               ["value"] = "0",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     1,
                     0,
                     0.60000002384186,
                  },
                  ["property"] = "backgroundColor",
               },
            },
         },
      },
      ["information"] = {
      },
      ["backgroundOffset"] = 0,
   },
   ["Shade energy"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = -20,
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
               ["npcId"] = "171557",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["use_unit"] = true,
               ["powertype"] = 3,
               ["use_powertype"] = true,
               ["spellName"] = 0,
               ["type"] = "unit",
               ["duration"] = "1",
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "nameplate",
               ["names"] = {
               },
               ["event"] = "Power",
               ["unevent"] = "auto",
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["use_nameplateType"] = false,
               ["use_npcId"] = true,
               ["use_track"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
               ["unit"] = "nameplate",
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
         0.27843137254902,
         0,
         0.40392156862745,
         1,
      },
      ["desc"] = "Anchors an energy bar to Shades of Bargast nameplates\
",
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
            ["text_selfPoint"] = "CENTER",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 8,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
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
            ["border_offset"] = 1,
         },
      },
      ["height"] = 10,
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2418",
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
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["desaturate"] = false,
      ["source"] = "import",
      ["icon"] = false,
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["authorOptions"] = {
      },
      ["parent"] = "02 Huntsman Altimor",
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "WO4dML7PCfs",
      ["icon_side"] = "RIGHT",
      ["anchorFrameParent"] = true,
      ["width"] = 100,
      ["sparkHeight"] = 30,
      ["texture"] = "Solid",
      ["alpha"] = 1,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["auto"] = true,
      ["spark"] = false,
      ["sparkHidden"] = "NEVER",
      ["id"] = "Shade energy",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "NAMEPLATE",
      ["zoom"] = 0,
      ["config"] = {
      },
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["selfPoint"] = "CENTER",
   },
   ["Sinseekers"] = {
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["customText"] = "function()\
    return aura_env.getDisplayString()\
end",
      ["yOffset"] = 350,
      ["anchorPoint"] = "CENTER",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.markers =\
{\
    1,\
    2,\
    3\
};\
\
aura_env.spellIDs =\
{\
    [335113] = true,\
    [335112] = true,\
    [335111] = true,\
};\
\
--[[function aura_env.getDisplayString()\
  if(aura_env.state and aura_env.state.rotation)then\
    if(aura_env.state.playerIsTarget)then\
      return \"Sinseekers on you!\";\
    else\
      local rotationData = aura_env.state.rotation;\
      return string.format(\"Help %s!\",WA_ClassColorName(rotationData.target));\
    end\
  end\
  return \"Sinseekers on you!\";\
end\
]]",
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["use_absorbMode"] = true,
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
               ["type"] = "custom",
               ["custom_type"] = "stateupdate",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["event"] = "Health",
               ["subeventSuffix"] = "_CAST_START",
               ["unevent"] = "auto",
               ["duration"] = "1",
               ["custom"] = "function(allstates, event, ...)\
    local doTheThing = false;\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\")then\
            if(aura_env.spellIDs[spellID])then\
                if(not aura_env.lastTime or aura_env.lastTime + 10 < GetTime())then\
                    aura_env.targets = {};\
                    aura_env.targetCount = 0;\
                end\
                \
                aura_env.lastTime = GetTime();\
                \
                aura_env.targetCount = aura_env.targetCount + 1;\
                aura_env.targets[destName] = \
                {\
                    target = destName,\
                    raidTargetIndex = aura_env.markers[aura_env.targetCount],\
                    helpers = {}\
                };\
                \
                if(UnitIsGroupLeader(\"player\"))then\
                    SetRaidTarget(destName,aura_env.markers[aura_env.targetCount]);\
                end\
                \
                elogl(\"Sinseeker target:\",aura_env.targetCount,destName);\
                \
                if(aura_env.targetCount == 3)then\
                    doTheThing = true;\
                end\
            end\
        end\
    end\
    \
    if(doTheThing)then\
        \
        local candidates = {};\
        for unit in WA_IterateGroupMembers() do\
            local unitName = EchoInternal:UnitName(unit);\
            if(not aura_env.targets[unitName])then\
                table.insert(candidates,\
                    {\
                        unitName = unitName,\
                        isHealer = EchoInternal:IsHealer(unit),\
                        isRanged = EchoInternal:IsRanged(unit),\
                });    \
            end\
        end        \
        \
        table.sort(candidates,function(t1,t2)\
                if(t1.isRanged and not t2.isRanged)then\
                    return true;\
                end\
                \
                if(not t1.isRanged and t2.isRanged)then\
                    return false;\
                end\
                \
                if(t1.isHealer and not t2.isHealer)then\
                    return true;\
                end\
                \
                if(not t1.isHealer and t2.isHealer)then\
                    return false;\
                end\
                \
                return UnitInRaid(t1.unitName) < UnitInRaid(t2.unitName);\
        end);\
        \
        local candidateIndex = 1;\
        local playerIsHelper = false;\
        local playerIsTarget = false;\
        local playerRotation = nil;\
        \
        for target,targetData in pairs(aura_env.targets)do\
            \
            if(target == WeakAuras.me)then\
                playerIsTarget = true;\
                playerRotation = targetData;\
            end\
            \
            local helperCount = 2;\
            for i=0,helperCount - 1 do\
                local candidate = candidates[candidateIndex + i].unitName;\
                if(candidate)then\
                    targetData.helpers[candidate] = true;\
                    if(candidate == WeakAuras.me)then\
                        playerIsHelper = true;\
                        playerRotation = targetData;\
                    end\
                end \
            end\
            \
            candidateIndex = candidateIndex + helperCount;\
        end\
        \
        elog(\"In soak:\",playerIsHelper or playerIsTarget);\
        \
        if(playerIsHelper or playerIsTarget)then\
            \
            local bossUnit;\
            for i=1,5 do\
                local unitGUID = UnitExists(\"boss\"..i) and UnitGUID(\"boss\"..i);\
                if(unitGUID)then\
                    local bossNpcID = select(6,strsplit(\"-\",unitGUID));\
                    if(bossNpcID == \"165066\")then\
                        bossUnit = \"boss\"..i;\
                        break;\
                    end\
                end\
            end\
            \
            if(not bossUnit)then\
                elog(\"Cant find 'Huntsman Altimor'\");\
                return;\
            end\
            \
            local startMs,endMs = select(4,UnitCastingInfo(bossUnit));\
            \
            local text = playerIsTarget and \"Sinseekers on you!\" or playerRotation and string.format(\"Help %s!\",WA_ClassColorName(rotationData.target)) or \"Sinseekers!\"\
            \
            allstates[\"\"] = {\
                show = true,\
                changed = true,\
                progressType = \"timed\",\
                duration = (endMs - startMs) / 1000,\
                expirationTime = endMs / 1000,\
                autoHide = true,\
                texture = EchoInternal:GetRaidMarkerTextureByIndex(playerRotation.raidTargetIndex),\
                playerIsTarget = playerIsTarget,\
                playerIsHelper = playerIsHelper,\
                rotation = playerRotation,\
                text = text,\
            };\
            \
            WeakAuras.ScanEvents(\"ECHO_HUNTSMAN_SINSEEKERS_TARGETS\",allstates[\"\"].duration,allstates[\"\"].expirationTime);\
            \
            return true;\
        end\
    end\
end\
\
\
",
               ["names"] = {
               },
               ["check"] = "event",
               ["events"] = "CLEU:SPELL_AURA_APPLIED",
               ["spellIds"] = {
               },
               ["customVariables"] = "{\
    playerIsTarget = \"bool\",\
    playerIsHelper = \"bool\",\
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
      ["internalVersion"] = 53,
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
            ["preset"] = "shake",
            ["easeStrength"] = 3,
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
            ["text_text"] = "%text",
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
            ["type"] = "subtext",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_text_format_text_format"] = "none",
            ["text_anchorYOffset"] = -20,
            ["text_shadowYOffset"] = -1,
            ["text_font"] = "Friz Quadrata TT",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "TOP",
            ["text_visible"] = true,
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 30,
            ["anchorXOffset"] = 0,
            ["text_text_format_c_format"] = "none",
         },
      },
      ["height"] = 200,
      ["rotate"] = true,
      ["load"] = {
         ["size"] = {
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
         ["encounterid"] = "2418",
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
         ["use_encounterid"] = true,
      },
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["source"] = "import",
      ["mirror"] = false,
      ["regionType"] = "texture",
      ["blendMode"] = "BLEND",
      ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\exclamation-mark.tga",
      ["desc"] = "Sinseekers on you or you're assigned to help someone else. \
",
      ["discrete_rotation"] = 0,
      ["color"] = {
         1,
         1,
         1,
         0.75,
      },
      ["id"] = "Sinseekers",
      ["frameStrata"] = 1,
      ["alpha"] = 1,
      ["width"] = 200,
      ["config"] = {
      },
      ["uid"] = "YM0jY)JChO6",
      ["parent"] = "02 Huntsman Altimor",
      ["authorOptions"] = {
      },
      ["anchorFrameType"] = "SCREEN",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = -2,
               ["variable"] = "OR",
               ["checks"] = {
                  {
                     ["trigger"] = 1,
                     ["variable"] = "playerIsHelper",
                     ["value"] = 1,
                  },
                  {
                     ["trigger"] = 1,
                     ["variable"] = "playerIsTarget",
                     ["value"] = 1,
                  },
               },
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
                     ["sound_channel"] = "Master",
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
   ["Bottle landing"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 350,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "342280",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["unevent"] = "timed",
               ["duration"] = "5",
               ["event"] = "Combat Log",
               ["unit"] = "player",
               ["use_sourceNpcId"] = false,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_sourceUnit"] = false,
               ["names"] = {
               },
               ["sourceNpcId"] = "165521",
               ["subeventPrefix"] = "SPELL",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "342281",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["unevent"] = "timed",
               ["duration"] = "5",
               ["event"] = "Combat Log",
               ["names"] = {
               },
               ["sourceNpcId"] = "165521",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_sourceUnit"] = false,
               ["unit"] = "player",
               ["use_sourceNpcId"] = false,
               ["subeventPrefix"] = "SPELL",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [3] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "342282",
               ["unevent"] = "timed",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["duration"] = "5",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["sourceNpcId"] = "165521",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_sourceUnit"] = false,
               ["unit"] = "player",
               ["use_sourceNpcId"] = false,
               ["names"] = {
               },
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "any",
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
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "SPARK",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 18,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
         },
         {
            ["border_offset"] = 0,
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
            ["type"] = "subborder",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "Bottle landing",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "TOP",
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
            ["text_anchorPoint"] = "BOTTOM",
            ["text_visible"] = true,
            ["text_fontSize"] = 33,
            ["anchorXOffset"] = 0,
            ["text_text_format_n_format"] = "none",
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2406",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["source"] = "import",
      ["desc"] = "Timer with sounds for bottles landing. ",
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\ESPARK1.ogg",
            ["do_sound"] = true,
         },
         ["finish"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
         },
      },
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["parent"] = "06 Lady Inerva Darkvein",
      ["xOffset"] = 0,
      ["icon_side"] = "RIGHT",
      ["uid"] = "BszNwdIK79q",
      ["config"] = {
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["zoom"] = 0,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["width"] = 400,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "Bottle landing",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   ["05 Hungering Destroyer"] = {
      ["controlledChildren"] = {
         "Expunge bike horn",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 21,
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
               ["unit"] = "player",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
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
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = "05 Hungering Destroyer",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["borderInset"] = 1,
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["groupIcon"] = 3614363,
      ["uid"] = ")LQPtXnupTC",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
         ["groupOffset"] = true,
      },
      ["selfPoint"] = "BOTTOMLEFT",
   },
   ["04 Artificer Xy'mox DG"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
      ["yOffset"] = 350,
      ["sortHybridTable"] = {
         ["Seed explosion"] = false,
         ["Portal Duration!"] = false,
      },
      ["echoVersion"] = 10,
      ["fullCircle"] = true,
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
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["gridType"] = "RD",
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["animate"] = false,
      ["radius"] = 200,
      ["scale"] = 1,
      ["authorOptions"] = {
      },
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "none",
      ["selfPoint"] = "TOP",
      ["uid"] = "MvzFemUSsa)",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["limit"] = 5,
      ["constantFactor"] = "RADIUS",
      ["frameStrata"] = 1,
      ["borderOffset"] = 4,
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
      ["config"] = {
      },
      ["id"] = "04 Artificer Xy'mox DG",
      ["groupIcon"] = "3614360",
      ["gridWidth"] = 5,
      ["anchorFrameType"] = "SCREEN",
      ["rowSpace"] = 1,
      ["borderInset"] = 1,
      ["arcLength"] = 360,
      ["xOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["rotation"] = 0,
   },
   ["Dancing Fever Indicator"] = {
      ["iconSource"] = 0,
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 155.70007324219,
      ["anchorPoint"] = "CENTER",
      ["cooldownSwipe"] = true,
      ["cooldownEdge"] = false,
      ["icon"] = true,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = "347350",
               ["duration"] = "0.5",
               ["use_unit"] = true,
               ["destUnit"] = "player",
               ["debuffType"] = "HELPFUL",
               ["type"] = "combatlog",
               ["unevent"] = "timed",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["names"] = {
               },
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_sourceUnit"] = false,
               ["subeventSuffix"] = "_AURA_REMOVED_DOSE",
               ["use_destUnit"] = true,
               ["unit"] = "player",
               ["use_absorbMode"] = true,
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["auraspellids"] = {
                  "347350",
               },
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["useExactSpellId"] = true,
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "any",
         ["activeTriggerMode"] = -10,
      },
      ["internalVersion"] = 53,
      ["keepAspectRatio"] = false,
      ["selfPoint"] = "CENTER",
      ["desaturate"] = false,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_shadowXOffset"] = 0,
            ["text_text_format_s_format"] = "none",
            ["text_text"] = "%2.s",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "BOTTOMRIGHT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_text_format_s1_format"] = "none",
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
            ["text_anchorPoint"] = "BOTTOMRIGHT",
            ["text_text_format_2.s_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_fontType"] = "OUTLINE",
         },
         {
            ["glowFrequency"] = 0.25,
            ["type"] = "subglow",
            ["useGlowColor"] = false,
            ["glowType"] = "buttonOverlay",
            ["glowLength"] = 10,
            ["glowYOffset"] = 0,
            ["glowColor"] = {
               1,
               1,
               1,
               1,
            },
            ["glowXOffset"] = 0,
            ["glow"] = false,
            ["glowThickness"] = 1,
            ["glowScale"] = 1,
            ["glowLines"] = 8,
            ["glowBorder"] = false,
         },
         {
            ["text_shadowXOffset"] = 0,
            ["text_text"] = "Jump ICD",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "TOP",
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
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = 0,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "BOTTOM",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_visible"] = false,
         },
      },
      ["height"] = 64,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["source"] = "import",
      ["regionType"] = "icon",
      ["desc"] = "Dancing fever stacks and cooldown. ",
      ["information"] = {
      },
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "show",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = true,
                  ["property"] = "sub.4.text_visible",
               },
               {
                  ["value"] = true,
                  ["property"] = "desaturate",
               },
            },
         },
      },
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["xOffset"] = 0,
      ["uid"] = "q)WlGFI1Tu(",
      ["zoom"] = 0,
      ["cooldownTextDisabled"] = false,
      ["width"] = 64,
      ["id"] = "Dancing Fever Indicator",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["useCooldownModRate"] = true,
      ["config"] = {
      },
      ["inverse"] = false,
      ["color"] = {
         1,
         1,
         1,
         1,
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
      ["displayIcon"] = 460687,
      ["cooldown"] = true,
      ["parent"] = "07 The Council of Blood",
   },
   ["03 Sun Kings Salvation"] = {
      ["controlledChildren"] = {
         "Occulist Energy ",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 17,
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
               ["unit"] = "player",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOMLEFT",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = "03 Sun Kings Salvation",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "3alIWo82Nov",
      ["xOffset"] = 0,
      ["groupIcon"] = 3614365,
      ["borderInset"] = 1,
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
         ["groupOffset"] = true,
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
   ["Healing Orb"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["parent"] = "03 Sunk Kings Salvation DG",
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["useStacks"] = false,
               ["useGroup_count"] = true,
               ["duration"] = "30",
               ["names"] = {
               },
               ["use_sourceNpcId"] = true,
               ["group_count"] = "0",
               ["group_countOperator"] = ">",
               ["showClones"] = true,
               ["type"] = "combatlog",
               ["useExactSpellId"] = true,
               ["event"] = "Combat Log",
               ["sourceNpcId"] = "165762",
               ["auraspellids"] = {
                  "326078",
               },
               ["spellIds"] = {
               },
               ["unit"] = "group",
               ["subeventPrefix"] = "UNIT_DIED",
               ["debuffType"] = "HARMFUL",
               ["unevent"] = "timed",
               ["subeventSuffix"] = "",
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
         0.28235294117647,
         0.41960784313725,
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
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
         },
         {
            ["border_offset"] = 1,
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
         ["encounterid"] = "2402",
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
      ["source"] = "import",
      ["desc"] = "Show a timer for a healing orb in the room. ",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["authorOptions"] = {
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
      ["config"] = {
      },
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["width"] = 200,
      ["zoom"] = 0,
      ["spark"] = false,
      ["alpha"] = 1,
      ["sparkHidden"] = "NEVER",
      ["auto"] = true,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "Healing Orb",
      ["uid"] = "p)Fh50vsSsA",
      ["inverse"] = false,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["selfPoint"] = "CENTER",
   },
   ["03 Sunk Kings Salvation DG"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         "Healing Orb",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
      ["yOffset"] = 150,
      ["sortHybridTable"] = {
         ["Healing Orb"] = false,
      },
      ["echoVersion"] = 4,
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
      ["internalVersion"] = 53,
      ["useLimit"] = false,
      ["align"] = "CENTER",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["arcLength"] = 360,
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
      ["radius"] = 200,
      ["scale"] = 1,
      ["rowSpace"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["limit"] = 5,
      ["selfPoint"] = "TOP",
      ["borderInset"] = 1,
      ["anchorPoint"] = "CENTER",
      ["sort"] = "none",
      ["constantFactor"] = "RADIUS",
      ["gridWidth"] = 5,
      ["borderOffset"] = 4,
      ["authorOptions"] = {
      },
      ["config"] = {
      },
      ["id"] = "03 Sunk Kings Salvation DG",
      ["rotation"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["fullCircle"] = true,
      ["uid"] = "DJRPOgCikOt",
      ["xOffset"] = 450,
      ["groupIcon"] = "3614365",
      ["gridType"] = "RD",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["source"] = "import",
   },
   ["09 Stone Legion Generals - Reverberating Eruption Nameplate"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = -30,
      ["anchorPoint"] = "BOTTOM",
      ["desaturateBackground"] = false,
      ["sameTexture"] = false,
      ["desaturateForeground"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["use_absorbMode"] = true,
               ["spell"] = "Eruption",
               ["spellId"] = 344496,
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "nameplate",
               ["duration"] = "1",
               ["use_spell"] = false,
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["unevent"] = "auto",
               ["type"] = "unit",
               ["event"] = "Cast",
               ["use_unit"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
               ["unit"] = "nameplate",
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["endAngle"] = 360,
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
      ["crop_y"] = 0.41,
      ["selfPoint"] = "TOP",
      ["desc"] = "Reverberating Eruption cast shown on Nameplate",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["crop_x"] = 0.41,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%1.destName",
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
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_1.destName_abbreviate_max"] = 8,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_1.destName_format"] = "Unit",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 14,
            ["anchorXOffset"] = 0,
            ["text_text_format_1.destName_abbreviate"] = false,
         },
      },
      ["height"] = 50,
      ["parent"] = "09 Stone Legion Generals",
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["use_never"] = false,
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
         ["encounterid"] = "2417",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["backgroundColor"] = {
         0.50196078431373,
         0.50196078431373,
         0.50196078431373,
         0.5,
      },
      ["useAdjustededMax"] = false,
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["source"] = "import",
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
      ["color"] = {
      },
      ["config"] = {
      },
      ["mirror"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["blendMode"] = "BLEND",
      ["anchorFrameType"] = "NAMEPLATE",
      ["frameStrata"] = 1,
      ["slantMode"] = "INSIDE",
      ["anchorFrameParent"] = false,
      ["foregroundColor"] = {
         0.94117647058824,
         0.63921568627451,
         0,
         1,
      },
      ["xOffset"] = 0,
      ["compress"] = false,
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["tocversion"] = 90002,
      ["id"] = "09 Stone Legion Generals - Reverberating Eruption Nameplate",
      ["fontSize"] = 12,
      ["alpha"] = 1,
      ["width"] = 50,
      ["startAngle"] = 0,
      ["uid"] = "MGbjaOwgaQi",
      ["inverse"] = false,
      ["echoVersion"] = 1,
      ["orientation"] = "CLOCKWISE",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["backgroundOffset"] = 0,
   },
   ["Colossal Roar"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 300,
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
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = "332687",
               ["remaining_operator"] = "<=",
               ["names"] = {
               },
               ["remaining"] = "2",
               ["debuffType"] = "HELPFUL",
               ["type"] = "addons",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "BigWigs Timer",
               ["use_absorbMode"] = true,
               ["unit"] = "player",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_remaining"] = true,
               ["unevent"] = "auto",
               ["duration"] = "1",
               ["use_unit"] = true,
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["wordWrap"] = "WordWrap",
      ["desc"] = "Colossal Road incoming. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_ignoreNameRealm"] = true,
         ["encounterid"] = "2399",
         ["use_encounterid"] = true,
         ["ignoreNameRealm"] = "Zaeliafour",
         ["zoneIds"] = "",
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
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 72,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["displayText_format_p_time_precision"] = 1,
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
            ["preset"] = "bounce",
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
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "LEFT",
      ["shadowYOffset"] = -1,
      ["id"] = "Colossal Roar",
      ["xOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "aENgiyZAC63",
      ["config"] = {
      },
      ["parent"] = "08 Sludgefist",
      ["displayText"] = "PUSHBACK",
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
   ["09 Stone Legion Generals - Reverberating Eruption Drop Off Location"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["parent"] = "09 Stone Legion Generals",
      ["preferToUpdate"] = true,
      ["yOffset"] = 250,
      ["anchorPoint"] = "CENTER",
      ["desaturateBackground"] = false,
      ["sameTexture"] = true,
      ["backgroundColor"] = {
         0.5,
         0.5,
         0.5,
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
               ["spellIds"] = {
               },
               ["events"] = "CLEU:SPELL_CAST_START UNIT_TARGET:boss ENCOUNTER_START",
               ["names"] = {
               },
               ["check"] = "event",
               ["custom_type"] = "stateupdate",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"ENCOUNTER_START\")then\
        aura_env.castIndex = 0;\
    elseif(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        if(spellID == 344496)then\
            aura_env.needsTarget = true;\
            aura_env.castIndex = aura_env.castIndex + 1;\
        end\
    elseif(event == \"UNIT_TARGET\" and aura_env.needsTarget)then\
        local unit = ...;\
        if(unit)then\
            local npcID = select(6,strsplit(\"-\", UnitGUID(unit)));\
            if(npcID  == \"168113\")then\
                aura_env.needsTarget = nil;\
                \
                local target = unit..\"target\";\
                \
                local class = UnitClassBase(\"player\");\
                if(EchoInternal:IsHealer(\"player\") or class == \"MONK\")then\
                    EchoInternal:ShowGlowForTimePeriod(target,{\
                            glowType = \"ACShine\",\
                            particules = 26,\
                    },5.5);\
                end\
                \
                if(UnitIsUnit(\"player\",target))then\
                    \
                    local startTimeMs,endTimeMS = select(4,UnitCastingInfo(unit));\
                    local startTime = startTimeMs / 1000;\
                    local endTime = (endTimeMS / 1000) + 1.5;\
                    \
                    allstates[\"\"] = \
                    {\
                        changed = true,\
                        show = true,\
                        progressType = \"timed\",\
                        duration = endTime - startTime,\
                        expirationTime = endTime,\
                        autoHide = true,\
                        texture = EchoInternal:GetStoneLegionTextureByIndex(aura_env.castIndex),\
                    };\
                    \
                    \
                    elog(\"Reverb cast target\");\
                    \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"OPTIONS\")then\
        allstates[\"\"] = \
        {\
            changed = true,\
            show = true,\
            progressType = \"timed\",\
            duration = 8,\
            expirationTime = GetTime() + 6,\
            autoHide = true,\
            texture = EchoInternal:GetStoneLegionTextureByIndex(math.random(9)),\
        };\
        \
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
      ["endAngle"] = 360,
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
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
            ["preset"] = "shake",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["authorOptions"] = {
      },
      ["conditions"] = {
      },
      ["xOffset"] = 6.103515625e-05,
      ["desc"] = "Reverberating Eruption Drop Off alert and marker. ",
      ["discrete_rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["desaturateForeground"] = false,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text"] = "Drop off %p",
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
            ["text_text_format_p_format"] = "timed",
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["text_shadowXOffset"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_anchorYOffset"] = 0,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "TOP",
            ["text_shadowYOffset"] = -1,
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 48,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_p_time_legacy_floor"] = true,
         },
      },
      ["height"] = 200,
      ["rotate"] = true,
      ["load"] = {
         ["use_never"] = false,
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2417",
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["multi"] = {
               ["mythic"] = true,
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["use_difficulty"] = false,
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
      },
      ["foregroundColor"] = {
         1,
         1,
         1,
         1,
      },
      ["useAdjustededMax"] = false,
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["source"] = "import",
      ["foregroundTexture"] = "Interface\\TargetingFrame\\UI-RaidTargetingIcon_2",
      ["config"] = {
      },
      ["crop_y"] = 0.41,
      ["mirror"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["width"] = 200,
      ["blendMode"] = "BLEND",
      ["frameStrata"] = 1,
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["slantMode"] = "INSIDE",
      ["desaturate"] = false,
      ["texture"] = "Interface\\TargetingFrame\\UI-RaidTargetingIcon_1",
      ["rotation"] = 0,
      ["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
      ["startAngle"] = 0,
      ["compress"] = false,
      ["id"] = "09 Stone Legion Generals - Reverberating Eruption Drop Off Location",
      ["fontSize"] = 12,
      ["alpha"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "5fc4DFhuhBy",
      ["inverse"] = false,
      ["echoVersion"] = 1,
      ["orientation"] = "VERTICAL",
      ["crop_x"] = 0.41,
      ["information"] = {
      },
      ["backgroundOffset"] = 2,
   },
   ["10 Sire Denathrius Scripe Burden"] = {
      ["arcLength"] = 360,
      ["controlledChildren"] = {
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = -725.40005493164,
      ["preferToUpdate"] = true,
      ["groupIcon"] = 3670321,
      ["gridType"] = "RD",
      ["echoVersion"] = 22,
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
      ["align"] = "CENTER",
      ["rotation"] = 0,
      ["subRegions"] = {
      },
      ["parent"] = "10 Sire Denathrius",
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["customSort"] = "function(t1,t2)\
    if(t1.region.state.fake or t2.region.state.fake)then\
        return t1.region.state.fake\
    end\
    \
    return UnitInRaid(t1.region.state.unit) < UnitInRaid(t2.region.state.unit);\
end",
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["animate"] = false,
      ["source"] = "import",
      ["selfPoint"] = "TOP",
      ["scale"] = 1,
      ["authorOptions"] = {
      },
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "custom",
      ["grow"] = "DOWN",
      ["uid"] = "rH0MrdgRVhh",
      ["fullCircle"] = true,
      ["limit"] = 5,
      ["constantFactor"] = "RADIUS",
      ["gridWidth"] = 5,
      ["borderOffset"] = 4,
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
      ["id"] = "10 Sire Denathrius Scripe Burden",
      ["rowSpace"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["yOffset"] = 0,
      ["borderInset"] = 1,
      ["anchorPoint"] = "CENTER",
      ["sortHybridTable"] = {
         ["Cleave Checker Scripe"] = false,
      },
      ["internalVersion"] = 53,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["stagger"] = 0,
   },
   ["Echo - Castle Nathria S4 - Custom"] = {
      ["controlledChildren"] = {
         "02 Huntsman Altimor",
         "03 Sun Kings Salvation",
         "03 Sunk Kings Salvation DG",
         "03 Sunk Kings Salvation Healer Group",
         "04 Artificer Xy'mox",
         "04 Artificer Xy'mox DG",
         "05 Hungering Destroyer",
         "06 Lady Inerva Darkvein",
         "06 Lady Inerva Darkvein Scripe/Phil DG",
         "06 Lady Inerva Darkvein Scripe/Phil thing",
         "07 The Council of Blood",
         "07 The Council of Blood Dancing Fever Phil",
         "08 Sludgefist",
         "09 Stone Legion Generals",
         "10 Sire Denathrius",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
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
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = "Echo - Castle Nathria S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",
      ["borderInset"] = 1,
      ["config"] = {
      },
      ["xOffset"] = 0,
      ["uid"] = "vDo)c6)d0y)",
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
   ["09 Stone Legion Generals - Idiot Detector Hardened Stone Form"] = {
      ["outline"] = "OUTLINE",
      ["xOffset"] = -0.0001220703125,
      ["displayText"] = "IDIOTUS",
      ["yOffset"] = 206,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_loop"] = false,
            ["sound_repeat"] = 0.5,
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Idiot.ogg",
            ["do_sound"] = true,
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["subeventSuffix"] = "_CAST_START",
               ["matchesShowOn"] = "showOnActive",
               ["event"] = "Health",
               ["names"] = {
               },
               ["spellIds"] = {
               },
               ["auraspellids"] = {
                  "329636",
                  "329808",
               },
               ["useExactSpellId"] = true,
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "target",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "all",
         ["customTriggerLogic"] = "function(t)\
    return t[1] and not t[2] and t[3]\
end\
\
\
\
",
         ["activeTriggerMode"] = -10,
      },
      ["internalVersion"] = 53,
      ["wordWrap"] = "WordWrap",
      ["desc"] = "Alert when you're attacking a target with Hardened Stone Form",
      ["font"] = "ArchivoNarrow-Bold",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["class_and_spec"] = {
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["use_role"] = false,
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "mythic",
         },
         ["role"] = {
            ["multi"] = {
               ["DAMAGER"] = true,
               ["HEALER"] = true,
            },
         },
         ["zoneIds"] = "",
         ["use_never"] = false,
         ["encounterid"] = "2417",
         ["use_difficulty"] = true,
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 100,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["selfPoint"] = "BOTTOM",
      ["conditions"] = {
      },
      ["justify"] = "LEFT",
      ["animation"] = {
         ["start"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["preset"] = "bounce",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
         },
         ["finish"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["easeType"] = "none",
         },
      },
      ["id"] = "09 Stone Legion Generals - Idiot Detector Hardened Stone Form",
      ["authorOptions"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "VYvHWHfkMLq",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["shadowYOffset"] = -1,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["parent"] = "09 Stone Legion Generals",
   },
   ["10 Sire Denathrius"] = {
      ["controlledChildren"] = {
         "10 Sire Denathrius - Night hunter assigment",
         "10 Sire Denathrius - Shattering Pain Bar Non Bait ",
         "10 Sire Denathrius Scripe Burden",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
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
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         {
            ["trigger"] = {
               ["subeventPrefix"] = "SPELL",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["unit"] = "player",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = "10 Sire Denathrius",
      ["xOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "))jbs(TqdUF",
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["groupIcon"] = 3670321,
      ["borderInset"] = 1,
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
   ["Cloak of Flame Timer"] = {
      ["iconSource"] = -1,
      ["parent"] = "03 Sunk Kings Salvation Healer Group",
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["cooldownSwipe"] = true,
      ["cooldownEdge"] = false,
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
               ["spellId"] = "337859",
               ["subeventSuffix"] = "_CAST_START",
               ["use_absorbMode"] = true,
               ["event"] = "BigWigs Timer",
               ["unit"] = "player",
               ["unevent"] = "auto",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["names"] = {
               },
               ["duration"] = "1",
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
      ["desaturate"] = false,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_shadowXOffset"] = 0,
            ["text_text_format_s_format"] = "none",
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
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = 0,
            ["text_visible"] = false,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
         },
         {
            ["glowFrequency"] = 0.25,
            ["type"] = "subglow",
            ["useGlowColor"] = false,
            ["glowType"] = "buttonOverlay",
            ["glowLength"] = 10,
            ["glowYOffset"] = 0,
            ["glowColor"] = {
               1,
               1,
               1,
               1,
            },
            ["glowXOffset"] = 0,
            ["glow"] = false,
            ["glowScale"] = 1,
            ["glowThickness"] = 1,
            ["glowLines"] = 8,
            ["glowBorder"] = false,
         },
      },
      ["height"] = 64,
      ["load"] = {
         ["use_encounterid"] = true,
         ["role"] = {
            ["single"] = "HEALER",
            ["multi"] = {
               ["HEALER"] = true,
            },
         },
         ["zoneIds"] = "",
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
         ["encounterid"] = "2402",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["source"] = "import",
      ["regionType"] = "icon",
      ["desc"] = "Show Cloak of Flames BigWigs timer",
      ["cooldown"] = true,
      ["displayIcon"] = 132093,
      ["authorOptions"] = {
      },
      ["xOffset"] = 0,
      ["config"] = {
      },
      ["zoom"] = 0,
      ["cooldownTextDisabled"] = false,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "Cloak of Flame Timer",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["width"] = 64,
      ["useCooldownModRate"] = true,
      ["uid"] = "2LQhnQbJLdv",
      ["inverse"] = false,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["icon"] = true,
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
   ["04 Artificer Xy'mox"] = {
      ["controlledChildren"] = {
         "Danger!!!",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
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
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = "04 Artificer Xy'mox",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "9EnFZ1BqTwq",
      ["authorOptions"] = {
      },
      ["groupIcon"] = 3614360,
      ["borderInset"] = 1,
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
   ["Big Soak"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = 330,
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
               ["spellId"] = "331314",
               ["use_absorbMode"] = true,
               ["use_unit"] = true,
               ["debuffType"] = "HARMFUL",
               ["type"] = "combatlog",
               ["unevent"] = "timed",
               ["duration"] = "3.5",
               ["event"] = "Combat Log",
               ["auraspellids"] = {
                  "331314",
               },
               ["useExactSpellId"] = true,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["unit"] = "boss",
               ["names"] = {
               },
               ["use_destUnit"] = false,
               ["subeventSuffix"] = "_AURA_APPLIED",
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["spellName"] = 0,
               ["type"] = "custom",
               ["unevent"] = "auto",
               ["custom_type"] = "event",
               ["debuffType"] = "HELPFUL",
               ["duration"] = "1",
               ["event"] = "Cooldown Progress (Spell)",
               ["unit"] = "player",
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["custom"] = "function(event,linked)\
    return linked;\
end",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["events"] = "ECHO_SLUDGE_LINKED_WITH_MELEE",
               ["use_track"] = true,
               ["custom_hide"] = "custom",
            },
            ["untrigger"] = {
               ["custom"] = "function(event,linked)\
    return not linked;\
end\
\
\
\
",
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
         1,
         0.63921568627451,
         0,
         1,
      },
      ["desc"] = "Fractured Boulder alert",
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
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "OUTLINE",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "Big Soak",
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
            ["text_anchorPoint"] = "INNER_TOP",
            ["text_visible"] = true,
            ["text_fontSize"] = 35,
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
      ["height"] = 30,
      ["load"] = {
         ["use_ignoreNameRealm"] = true,
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "mythic",
         },
         ["ignoreNameRealm"] = "Zaeliafour",
         ["encounterid"] = "2399",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["use_difficulty"] = true,
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
      ["desaturate"] = false,
      ["source"] = "import",
      ["actions"] = {
         ["start"] = {
            ["do_custom"] = false,
            ["custom"] = "C_Timer.After(3.5,function()WeakAuras.ScanEvents(\"SMALL_SOAK\");end);",
         },
         ["finish"] = {
            ["custom"] = "WeakAuras.ScanEvents(\"SMALL_SOAK\");",
            ["do_sound"] = true,
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\PUNCH.ogg",
            ["do_custom"] = true,
            ["stop_sound"] = false,
         },
         ["init"] = {
         },
      },
      ["icon"] = false,
      ["parent"] = "08 Sludgefist",
      ["authorOptions"] = {
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["config"] = {
      },
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["icon_side"] = "RIGHT",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["anchorFrameType"] = "SCREEN",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["alpha"] = 1,
      ["zoom"] = 0,
      ["auto"] = true,
      ["tocversion"] = 90002,
      ["sparkHidden"] = "NEVER",
      ["id"] = "Big Soak",
      ["frameStrata"] = 1,
      ["width"] = 400,
      ["spark"] = false,
      ["uid"] = "APkNsT)Jrin",
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
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
   ["Kael Absorb Ammount"] = {
      ["outline"] = "OUTLINE",
      ["displayText_format_tooltip_format"] = "none",
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["displayText_format_tooltip1_format"] = "BigNumber",
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
               ["type"] = "aura2",
               ["auraspellids"] = {
                  "343026",
               },
               ["fetchTooltip"] = true,
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["useExactSpellId"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["unit"] = "boss",
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
      ["desc"] = "Show Cloak of Flames absorb amount. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["class_and_spec"] = {
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
         ["role"] = {
            ["single"] = "HEALER",
            ["multi"] = {
               ["HEALER"] = true,
            },
         },
         ["pvptalent"] = {
         },
         ["zoneIds"] = "",
         ["encounterid"] = "2402",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 36,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_tooltip2_format"] = "none",
      ["fixedWidth"] = 200,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_precision"] = 1,
      ["shadowYOffset"] = -1,
      ["displayText_format_tooltip1_big_number_format"] = "AbbreviateLargeNumbers",
      ["uid"] = "RcxMkOjDxAB",
      ["justify"] = "LEFT",
      ["xOffset"] = 0,
      ["id"] = "Kael Absorb Ammount",
      ["wordWrap"] = "WordWrap",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["yOffset"] = 50,
      ["config"] = {
      },
      ["parent"] = "03 Sunk Kings Salvation Healer Group",
      ["displayText"] = "%tooltip2",
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
   ["06 Lady Inerva Darkvein Scripe/Phil thing"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         "Anima Focus chanrging",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
      ["yOffset"] = 321.29998779297,
      ["sortHybridTable"] = {
         ["Anima Focus chanrging"] = false,
         ["Anima charging tracker"] = false,
      },
      ["echoVersion"] = 2,
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
      ["selfPoint"] = "TOP",
      ["align"] = "CENTER",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["internalVersion"] = 53,
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
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["scale"] = 1,
      ["rotation"] = 0,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["limit"] = 5,
      ["space"] = 15,
      ["config"] = {
      },
      ["anchorPoint"] = "CENTER",
      ["sort"] = "none",
      ["constantFactor"] = "RADIUS",
      ["gridWidth"] = 5,
      ["borderOffset"] = 4,
      ["useLimit"] = false,
      ["borderInset"] = 1,
      ["id"] = "06 Lady Inerva Darkvein Scripe/Phil thing",
      ["authorOptions"] = {
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["groupIcon"] = 3614366,
      ["uid"] = "d4zAZIj5z)c",
      ["arcLength"] = 360,
      ["xOffset"] = 326.7001953125,
      ["gridType"] = "RD",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["source"] = "import",
   },
   ["Idiot Detector Shield"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText"] = "IDIOTUS",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_loop"] = false,
            ["sound_repeat"] = 0.5,
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Idiot.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["auraspellids"] = {
                  "346694",
               },
               ["matchesShowOn"] = "showOnActive",
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["useExactSpellId"] = true,
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "target",
               ["names"] = {
               },
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "all",
         ["customTriggerLogic"] = "function(t)\
    return t[1] and not t[2] and t[3]\
end\
\
\
\
",
         ["activeTriggerMode"] = -10,
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Warning to not attack immune targets. ",
      ["font"] = "ArchivoNarrow-Bold",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
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
      ["fontSize"] = 100,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["wordWrap"] = "WordWrap",
      ["fixedWidth"] = 200,
      ["justify"] = "LEFT",
      ["xOffset"] = -0.00018310546875,
      ["id"] = "Idiot Detector Shield",
      ["parent"] = "07 The Council of Blood",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["authorOptions"] = {
      },
      ["uid"] = "uu5kuCTTKRM",
      ["config"] = {
      },
      ["yOffset"] = 206,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["animation"] = {
         ["start"] = {
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["preset"] = "bounce",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
         },
         ["finish"] = {
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeStrength"] = 3,
            ["easeType"] = "none",
         },
      },
   },
   ["03 Sunk Kings Salvation Healer Group"] = {
      ["arcLength"] = 360,
      ["controlledChildren"] = {
         "Cloak of Flame Timer",
         "Kael Absorb Ammount",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = -31.500274658203,
      ["sortHybridTable"] = {
         ["Cloak of Flame Timer"] = false,
         ["Kael Absorb Ammount"] = false,
      },
      ["echoVersion"] = 4,
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
      ["selfPoint"] = "TOP",
      ["align"] = "CENTER",
      ["stagger"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["internalVersion"] = 53,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
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
      ["source"] = "import",
      ["space"] = 2,
      ["scale"] = 1,
      ["rotation"] = 0,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["sort"] = "none",
      ["xOffset"] = -705.60008239746,
      ["uid"] = "lzupWQTIz5b",
      ["gridType"] = "RD",
      ["limit"] = 5,
      ["constantFactor"] = "RADIUS",
      ["frameStrata"] = 1,
      ["borderOffset"] = 4,
      ["useLimit"] = false,
      ["config"] = {
      },
      ["id"] = "03 Sunk Kings Salvation Healer Group",
      ["groupIcon"] = 3614365,
      ["gridWidth"] = 5,
      ["anchorFrameType"] = "SCREEN",
      ["borderColor"] = {
         0,
         0,
         0,
         1,
      },
      ["borderInset"] = 1,
      ["grow"] = "DOWN",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["anchorPoint"] = "CENTER",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["animate"] = false,
   },
   ["Danger!!!"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 295.19995117188,
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
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["useExactSpellId"] = true,
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["names"] = {
               },
               ["auraspellids"] = {
                  "340860",
               },
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["spellName"] = 0,
               ["type"] = "unit",
               ["spellId"] = 325361,
               ["unevent"] = "auto",
               ["use_spellName"] = true,
               ["duration"] = "1",
               ["use_spell"] = false,
               ["unit"] = "boss",
               ["realSpellName"] = 0,
               ["use_spellId"] = true,
               ["event"] = "Cast",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["use_unit"] = true,
               ["use_track"] = true,
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
      ["desc"] = "Boss casting Glyph of Destruction while the Player debuffed with Withering Touch.",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
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
         ["encounterid"] = "2405",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 72,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_p_time_precision"] = 1,
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
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "LEFT",
      ["shadowYOffset"] = -1,
      ["id"] = "Danger!!!",
      ["xOffset"] = 6.2999877929688,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "90)PhqczONU",
      ["parent"] = "04 Artificer Xy'mox",
      ["displayText"] = "Danger!!!",
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
   ["Expunge bike horn"] = {
      ["outline"] = "OUTLINE",
      ["xOffset"] = 0,
      ["displayText"] = "",
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = "329725",
               ["use_absorbMode"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["unit"] = "player",
               ["remaining"] = "2",
               ["names"] = {
               },
               ["remaining_operator"] = "<=",
               ["use_cloneId"] = true,
               ["debuffType"] = "HELPFUL",
               ["subeventPrefix"] = "SPELL",
               ["use_addon"] = false,
               ["duration"] = "1",
               ["subeventSuffix"] = "_CAST_START",
               ["unevent"] = "auto",
               ["use_remaining"] = true,
               ["event"] = "BigWigs Timer",
               ["use_spellName"] = true,
               ["realSpellName"] = 0,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["type"] = "addons",
               ["use_genericShowOn"] = true,
               ["use_unit"] = true,
               ["use_track"] = true,
               ["spellName"] = 0,
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Sound alert for Expunge",
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
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2383",
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 12,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_p_time_precision"] = 1,
      ["wordWrap"] = "WordWrap",
      ["fixedWidth"] = 200,
      ["authorOptions"] = {
      },
      ["justify"] = "LEFT",
      ["yOffset"] = 0,
      ["id"] = "Expunge bike horn",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "WsgZLYjtVdZ",
      ["config"] = {
      },
      ["parent"] = "05 Hungering Destroyer",
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
   ["06 Lady Inerva Darkvein"] = {
      ["controlledChildren"] = {
         "Bottle landing",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 15,
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
               ["unit"] = "player",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOMLEFT",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = "06 Lady Inerva Darkvein",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["borderInset"] = 1,
      ["uid"] = "WbiwOpMPfAe",
      ["xOffset"] = 0,
      ["groupIcon"] = 3614366,
      ["config"] = {
      },
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
         ["groupOffset"] = true,
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
   ["09 Stone Legion Generals - Personal Anima Display"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["parent"] = "09 Stone Legion Generals",
      ["preferToUpdate"] = true,
      ["customText"] = "function()\
    return aura_env.getDisplayString()\
end",
      ["yOffset"] = 10,
      ["anchorPoint"] = "CENTER",
      ["oName"] = "09 Stone Legion Generals - Personal Anima Display",
      ["sameTexture"] = false,
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.spellIDs = \
{\
  [342698] = 300,\
  [342655] = 100,\
  [332406] = 100,\
  [339885] = 300,\
};\
\
aura_env.debuffPeople = {};\
\
function aura_env.getSoakPosition()\
  for index,dude in pairs(aura_env.debuffPeople)do\
    if(dude == WeakAuras.me)then\
      return index;\
    end\
  end\
end",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["use_absorbMode"] = true,
               ["subeventPrefix"] = "SPELL",
               ["debuffType"] = "HELPFUL",
               ["type"] = "custom",
               ["custom_hide"] = "timed",
               ["unevent"] = "auto",
               ["names"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["custom_type"] = "stateupdate",
               ["duration"] = "1",
               ["unit"] = "player",
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED ENCOUNTER_START ECHO_PRINCE_ENERGY_UPDATE",
               ["spellIds"] = {
               },
               ["check"] = "event",
               ["custom"] = "function(allstates,event,...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
    if(aura_env.spellIDs[spellID])then\
      \
      local state = allstates[\"\"];\
      \
      if(subEvent == \"SPELL_AURA_APPLIED\")then\
        table.insert(aura_env.debuffPeople,destName);\
        \
        elogl(\"Personal Anima Add:\",destName,\"Order:\",unpack(aura_env.debuffPeople));\
        WeakAuras.ScanEvents(\"ECHO_ANIMA_ORB_UPDATE\",aura_env.debuffPeople);\
        \
        if(destName == WeakAuras.me)then\
          local soakOrder = aura_env.getSoakPosition()\
          state = {\
            show = true,\
            changed = true,\
            progressType = \"timed\",\
            duration = 20,\
            expirationTime = GetTime() + 20,\
            soakOrder = soakOrder,\
            energy = aura_env.energy,\
            autoHide = true,\
            text = soakOrder == 1 and \"GO!\" or \"Wait \"..soakOrder - 1\
          };\
          allstates[\"\"] = state;\
          return true;\
        end\
        \
      elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
        \
        for index,dude in pairs(aura_env.debuffPeople)do\
          if(dude == destName)then\
            table.remove(aura_env.debuffPeople,index);\
            break;\
          end\
        end\
        \
        elogl(\"Personal Anima Remove:\",destName,\"Order:\",unpack(aura_env.debuffPeople));\
        WeakAuras.ScanEvents(\"ECHO_ANIMA_ORB_UPDATE\",aura_env.debuffPeople);\
        \
        if(destName == WeakAuras.me)then\
          allstates[\"\"] = {\
            show = false,\
            changed = true,\
          };\
          return true;\
        end\
      end\
      \
      if(state)then\
        local soakOrder = aura_env.getSoakPosition()\
        state.changed = true;\
        state.soakOrder = soakOrder;\
        state.text = soakOrder == 1 and \"GO!\" or \"Wait \"..soakOrder - 1\
        return true;\
      end\
    end\
  elseif(event == \"ECHO_PRINCE_ENERGY_UPDATE\")then\
    local energy = ...;\
    if(allstates[\"\"] and energy)then\
      allstates[\"\"].changed = true;\
      allstates[\"\"].energy = energy;\
      aura_env.energy = energy;\
      return true;\
    end\
  elseif(event == \"ENCOUNTER_START\")then\
    aura_env.debuffPeople = {};\
    aura_env.energy = nil;\
  end\
end",
               ["use_unit"] = true,
               ["customVariables"] = "{\
    soakOrder = \"number\",\
    energy = \"number\",\
}",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[1];\
end",
         ["activeTriggerMode"] = -10,
      },
      ["endAngle"] = 360,
      ["internalVersion"] = 53,
      ["animation"] = {
         ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["colorR"] = 1,
            ["scalex"] = 1,
            ["colorB"] = 1,
            ["colorG"] = 1,
            ["type"] = "custom",
            ["easeType"] = "none",
            ["use_color"] = false,
            ["alpha"] = 0,
            ["scaley"] = 1,
            ["y"] = 0,
            ["x"] = 0,
            ["colorA"] = 1,
            ["rotate"] = 0,
            ["colorFunc"] = "\
\
",
            ["easeStrength"] = 3,
            ["colorType"] = "custom",
            ["duration_type"] = "seconds",
         },
         ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["selfPoint"] = "TOP",
      ["desaturateForeground"] = false,
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = -2,
               ["op"] = "==",
               ["variable"] = "AND",
               ["checks"] = {
                  {
                     ["trigger"] = 1,
                     ["op"] = "<",
                     ["variable"] = "energy",
                     ["value"] = "899",
                  },
                  {
                     ["trigger"] = 1,
                     ["variable"] = "soakOrder",
                     ["value"] = "2",
                     ["op"] = "==",
                  },
               },
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\SharpPunch.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = -2,
               ["op"] = "==",
               ["variable"] = "AND",
               ["checks"] = {
                  {
                     ["trigger"] = 1,
                     ["variable"] = "energy",
                     ["value"] = "899",
                     ["op"] = "<",
                  },
                  {
                     ["trigger"] = 1,
                     ["variable"] = "soakOrder",
                     ["value"] = "1",
                     ["op"] = "==",
                  },
               },
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BoxingArenaSound.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "==",
               ["variable"] = "soakOrder",
               ["value"] = "3",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0,
                     0,
                     1,
                  },
                  ["property"] = "backgroundColor",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "soakOrder",
               ["value"] = "2",
               ["op"] = "==",
            },
            ["linked"] = true,
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     1,
                     0,
                     1,
                  },
                  ["property"] = "backgroundColor",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "soakOrder",
               ["value"] = "1",
               ["op"] = "==",
            },
            ["linked"] = true,
            ["changes"] = {
               {
                  ["value"] = {
                     0,
                     1,
                     0,
                     1,
                  },
                  ["property"] = "backgroundColor",
               },
            },
         },
      },
      ["desc"] = "Indicate your position in the ordering for Anima. ",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["desaturateBackground"] = false,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
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
            ["text_selfPoint"] = "CENTER",
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
            ["text_text_format_text_format"] = "none",
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_c_format"] = "none",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_font"] = "Friz Quadrata TT",
         },
      },
      ["height"] = 50,
      ["backgroundColor"] = {
         0.58039215686275,
         0.58039215686275,
         0.58039215686275,
         0.5,
      },
      ["crop_y"] = 0.41,
      ["color"] = {
      },
      ["useAdjustededMax"] = false,
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["source"] = "import",
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
      ["uid"] = "b(TwoIu1rv5",
      ["startAngle"] = 0,
      ["mirror"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["width"] = 50,
      ["blendMode"] = "BLEND",
      ["frameStrata"] = 1,
      ["echoVersion"] = 5,
      ["slantMode"] = "INSIDE",
      ["anchorFrameParent"] = false,
      ["fontSize"] = 12,
      ["tocversion"] = 90002,
      ["xOffset"] = 0,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2417",
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
         ["zoneIds"] = "",
         ["use_encounterid"] = true,
      },
      ["compress"] = false,
      ["id"] = "09 Stone Legion Generals - Personal Anima Display",
      ["authorOptions"] = {
      },
      ["alpha"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["config"] = {
      },
      ["inverse"] = false,
      ["foregroundColor"] = {
         1,
         1,
         1,
         1,
      },
      ["orientation"] = "CLOCKWISE",
      ["crop_x"] = 0.41,
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["backgroundOffset"] = 0,
   },
   ["Dark Recital Arrow"] = {
      ["modelIsUnit"] = false,
      ["iconSource"] = -1,
      ["api"] = false,
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = 250,
      ["foregroundColor"] = {
         1,
         1,
         1,
         1,
      },
      ["echoVersion"] = 2,
      ["borderColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["sameTexture"] = true,
      ["hideBackground"] = true,
      ["backgroundColor"] = {
         0.5,
         0.5,
         0.5,
         0.5,
      },
      ["customForegroundRows"] = 16,
      ["frameRate"] = 15,
      ["keepAspectRatio"] = false,
      ["selfPoint"] = "CENTER",
      ["customBackgroundRows"] = 16,
      ["desc"] = "During Dark recital side assignment. ",
      ["rotation"] = 90,
      ["load"] = {
         ["difficulty"] = {
            ["single"] = "mythic",
            ["multi"] = {
               ["mythic"] = true,
            },
         },
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
         ["class"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["textureWrapMode"] = "CLAMP",
      ["sequence"] = 1,
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\stopmotion",
      ["scale"] = 1,
      ["regionType"] = "texture",
      ["blendMode"] = "BLEND",
      ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",
      ["model_st_ry"] = 0,
      ["customBackgroundFrames"] = 0,
      ["alpha"] = 1,
      ["uid"] = "OGt(dx48SSr",
      ["model_st_tz"] = 0,
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["color"] = {
         1,
         0,
         0,
         1,
      },
      ["desaturateBackground"] = false,
      ["cooldownSwipe"] = true,
      ["icon"] = true,
      ["information"] = {
      },
      ["startPercent"] = 0,
      ["desaturateForeground"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "331634",
               ["unevent"] = "timed",
               ["use_absorbMode"] = true,
               ["event"] = "Combat Log",
               ["unit"] = "player",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["duration"] = "8",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["names"] = {
               },
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["useExactSpellId"] = true,
               ["debuffType"] = "HARMFUL",
               ["matchesShowOn"] = "showOnActive",
               ["auraspellids"] = {
                  "331636",
                  "331637",
               },
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[1];\
end",
         ["activeTriggerMode"] = -10,
      },
      ["cooldownEdge"] = false,
      ["internalVersion"] = 53,
      ["model_fileId"] = "623712",
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
      ["model_st_ty"] = 0,
      ["borderOffset"] = 5,
      ["model_st_rx"] = 270,
      ["config"] = {
      },
      ["discrete_rotation"] = 0,
      ["authorOptions"] = {
      },
      ["model_st_tx"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["height"] = 200,
      ["rotate"] = true,
      ["width"] = 200,
      ["model_path"] = "interface/glues/models/ui_alliance/ui_alliance.m2",
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\stopmotion",
      ["source"] = "import",
      ["anchorPoint"] = "CENTER",
      ["backgroundPercent"] = 1,
      ["borderInset"] = 11,
      ["border"] = false,
      ["borderEdge"] = "None",
      ["mirror"] = false,
      ["borderSize"] = 16,
      ["endPercent"] = 1,
      ["zoom"] = 0,
      ["model_st_rz"] = 0,
      ["customForegroundColumns"] = 16,
      ["cooldownTextDisabled"] = false,
      ["animationType"] = "loop",
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bigkiss.ogg",
            ["do_sound"] = false,
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["customForegroundFrames"] = 0,
      ["customBackgroundColumns"] = 16,
      ["model_z"] = 0,
      ["id"] = "Dark Recital Arrow",
      ["model_y"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["desaturate"] = false,
      ["parent"] = "07 The Council of Blood",
      ["inverse"] = false,
      ["advance"] = false,
      ["model_st_us"] = 40,
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 2,
               ["variable"] = "show",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = {
                     0,
                     1,
                     0.027450980392157,
                     1,
                  },
                  ["property"] = "color",
               },
               {
                  ["value"] = true,
                  ["property"] = "mirror",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 2,
               ["variable"] = "show",
               ["value"] = 0,
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
      },
      ["cooldown"] = false,
      ["model_x"] = 0,
   },
   ["Dark Recital Partner"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["xOffset"] = 0,
      ["adjustedMax"] = "1",
      ["yOffset"] = -30,
      ["foregroundColor"] = {
         0,
         0.16078431372549,
         0.89411764705882,
         1,
      },
      ["sameTexture"] = false,
      ["backgroundColor"] = {
         1,
         0,
         0,
         0.60000002384186,
      },
      ["keepAspectRatio"] = false,
      ["selfPoint"] = "CENTER",
      ["desc"] = "Dark Recital, duration and range check. ",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
         ["use_never"] = false,
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
         ["zoneIds"] = "",
         ["use_encounterid"] = true,
      },
      ["textureWrapMode"] = "CLAMP",
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
      ["customAnchor"] = "function()\
    return aura_env.GetAnchor();\
end",
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["blendMode"] = "BLEND",
      ["slantMode"] = "INSIDE",
      ["cooldownTextDisabled"] = false,
      ["auto"] = true,
      ["tocversion"] = 90002,
      ["alpha"] = 1,
      ["config"] = {
      },
      ["backgroundOffset"] = 0,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["adjustedMin"] = "1",
      ["desaturateBackground"] = false,
      ["cooldownSwipe"] = true,
      ["customTextUpdate"] = "update",
      ["cooldownEdge"] = false,
      ["desaturateForeground"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["custom_hide"] = "timed",
               ["subeventSuffix"] = "_CAST_START",
               ["unevent"] = "timed",
               ["duration"] = "0",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["events"] = "CLEU:SPELL_AURA_APPLIED",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local time,subEvent,_,_,_,_,_,_,destName,_,_,spellID = ... \
    if(subEvent == \"SPELL_AURA_APPLIED\")then\
      if(aura_env.spells[spellID])then\
        \
        if(time > aura_env.lastTime + 5)then\
          aura_env.lastDude = nil;\
          aura_env.linkedWith = nil;\
          aura_env.rotation = 0;\
        end\
        \
        aura_env.rotation = aura_env.rotation + 1;\
        \
        if(aura_env.rotation % 2 == 1)then\
          aura_env.lastDude = destName;\
        else\
          if(destName == aura_env.me or aura_env.lastDude == aura_env.me)then\
            aura_env.linkedWith = aura_env.lastDude == aura_env.me and GetUnitName(destName,true) or aura_env.lastDude;\
            \
            local unitClass = UnitClassBase(\"player\");\
            if(unitClass == \"ROGUE\" or unitClass == \"PRIEST\" or unitClass == \"DRUID\")then\
              EchoInternal:ShowGlowForTimePeriod(aura_env.linkedWith,{glowType = \"buttonOverlay\"},5);\
            end\
            \
            allstates[\"\"] = {\
              show = true,\
              changed = true,\
              progressType = \"timed\",\
              duration = 6,\
              expirationTime = GetTime() + 6,\
              autoHide = true,\
              linkWith = aura_env.linkedWith,\
              text = WA_ClassColorName(aura_env.linkedWith) or \"Partner!\",\
            }\
            \
            WeakAuras.ScanEvents(\"ECHO_PARTNER_LINKED\",spellID,aura_env.linkedWith,aura_env.lastDude,destName);\
            return true;\
          end\
        end\
        \
        aura_env.lastTime = time;\
      end\
    end\
  end   \
end\
\
\
",
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
         [2] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["auraspellids"] = {
                  "331636",
                  "331637",
               },
               ["debuffType"] = "HARMFUL",
               ["useExactSpellId"] = true,
               ["unit"] = "player",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[2];\
end",
         ["activeTriggerMode"] = 2,
      },
      ["endAngle"] = 360,
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
            ["text_shadowXOffset"] = 0,
            ["text_text_format_s_format"] = "none",
            ["text_text"] = "",
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
            ["text_text_format_p_format"] = "timed",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["anchorXOffset"] = 0,
            ["text_shadowYOffset"] = 0,
            ["text_text_format_c2_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 18,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_p_time_format"] = 0,
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
            ["text_selfPoint"] = "TOP",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_font"] = "Friz Quadrata TT",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_text_format_text_format"] = "none",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorYOffset"] = 0,
            ["text_text_format_nc1_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_text_format_c1_format"] = "none",
            ["text_anchorPoint"] = "BOTTOM",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 14,
            ["anchorXOffset"] = 0,
            ["text_shadowYOffset"] = -1,
         },
      },
      ["height"] = 50,
      ["useAdjustededMax"] = false,
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["source"] = "import",
      ["mirror"] = false,
      ["preferToUpdate"] = true,
      ["cooldown"] = false,
      ["crop_x"] = 0.41,
      ["uid"] = "x9FwgS5Tp3x",
      ["fontSize"] = 12,
      ["customText"] = "function()\
    return aura_env.GetDisplayString()\
end",
      ["parent"] = "07 The Council of Blood",
      ["anchorFrameParent"] = false,
      ["anchorPoint"] = "CENTER",
      ["actions"] = {
         ["start"] = {
            ["glow_frame_type"] = "UNITFRAME",
            ["glow_action"] = "show",
            ["glow_type"] = "buttonOverlay",
            ["do_custom"] = false,
            ["do_glow"] = false,
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.lastTime = 0;\
aura_env.lastDude = nil;\
aura_env.linkedWith = nil;\
aura_env.rotation = 0;\
\
aura_env.spells = \
{\
  [331636] = true,\
  [331637] = true,\
};\
\
aura_env.me = GetUnitName(\"player\",true);\
\
--[[aura_env.GetDisplayString = function()\
  if aura_env.linkedWith and (not aura_env.last or aura_env.last < GetTime() - 0.2) then\
    aura_env.last = GetTime();\
    aura_env.range = WeakAuras.GetRange(aura_env.linkedWith);\
    if(aura_env.range<10)then\
      aura_env.region:SetBackgroundColor(0,1,0,0.6);\
    else\
      aura_env.region:SetBackgroundColor(1,0,0,0.6);\
    end\
  end\
  return aura_env.linkedWith and WA_ClassColorName(aura_env.linkedWith) or \"Partner!\",aura_env.range;\
end\
]]",
         },
         ["finish"] = {
            ["glow_frame_type"] = "UNITFRAME",
            ["hide_all_glows"] = false,
            ["glow_action"] = "hide",
            ["do_sound"] = true,
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
            ["do_glow"] = false,
         },
      },
      ["anchorFrameType"] = "SCREEN",
      ["icon"] = true,
      ["crop_y"] = 0.41,
      ["id"] = "Dark Recital Partner",
      ["desaturate"] = false,
      ["frameStrata"] = 3,
      ["width"] = 50,
      ["startAngle"] = 0,
      ["authorOptions"] = {
      },
      ["inverse"] = false,
      ["zoom"] = 0,
      ["orientation"] = "CLOCKWISE",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = -1,
               ["op"] = "WA_SPELL_RANGECHECK",
               ["value"] = "function(states)\
  if states and states[1] and states[1].linkedWith then\
    return WeakAuras.GetRange(states[1].linkedWith) < 10 \
  end\
end\
\
\
",
               ["variable"] = "customcheck",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     0,
                     1,
                     0,
                     0.60000002384186,
                  },
                  ["property"] = "backgroundColor",
               },
            },
         },
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["compress"] = false,
   },
   ["Anima Focus chanrging"] = {
      ["outline"] = "OUTLINE",
      ["authorOptions"] = {
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 0,
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
            ["custom"] = "aura_env.enableIndex =\
{\
    [1] = 1,\
    [2] = 4,\
    [3] = 5,\
    [4] = 6,\
};\
\
\
",
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
               ["unit"] = "player",
               ["names"] = {
               },
               ["spellIds"] = {
               },
               ["custom_type"] = "stateupdate",
               ["check"] = "event",
               ["events"] = "ENCOUNTER_START UNIT_SPELLCAST_SUCCEEDED",
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"UNIT_SPELLCAST_SUCCEEDED\")then\
        local unit,_,spellID = ...;\
        if(spellID == 338750)then\
            aura_env.containerIndex = aura_env.containerIndex + 1;\
            \
            if(aura_env.containerIndex ~= 2 and aura_env.containerIndex ~= 3)then\
                \
                for i=1,4 do\
                    allstates[i].changed = true;\
                    allstates[i].hidden = aura_env.enableIndex[i] ~= aura_env.containerIndex;\
                end\
                \
                return true;\
            end\
        end\
    else\
        aura_env.containerIndex = 0;\
        for i=1,4 do\
            allstates[i] = \
            {\
                changed = true,\
                show = true,\
                hidden = event ~= \"OPTIONS\",\
            };\
        end\
        \
        return true;\
    end\
end",
               ["customVariables"] = "{\
    hidden = \"bool\"\
};",
            },
            ["untrigger"] = {
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Anima Focus indicator",
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
         ["zoneIds"] = "",
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
         ["encounterid"] = "2406",
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 26,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_p_time_precision"] = 1,
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
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "hidden",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     1,
                     1,
                     0,
                  },
                  ["property"] = "color",
               },
            },
         },
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["justify"] = "LEFT",
      ["shadowYOffset"] = -1,
      ["id"] = "Anima Focus chanrging",
      ["xOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "0HvqjV2xCal",
      ["parent"] = "06 Lady Inerva Darkvein Scripe/Phil thing",
      ["displayText"] = "-->",
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
   ["Dark Recital Warning Text"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 300,
      ["anchorPoint"] = "CENTER",
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",
            ["do_sound"] = true,
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
               ["spellId"] = 331634,
               ["subeventSuffix"] = "_CAST_START",
               ["duration"] = "1",
               ["event"] = "Cast",
               ["subeventPrefix"] = "SPELL",
               ["use_absorbMode"] = true,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["unevent"] = "auto",
               ["use_unit"] = true,
               ["names"] = {
               },
               ["unit"] = "boss",
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
      ["desc"] = "Dark Recital Warning Text",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["difficulty"] = {
         },
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["class"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 72,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_p_time_precision"] = 1,
      ["authorOptions"] = {
      },
      ["fixedWidth"] = 200,
      ["shadowYOffset"] = -1,
      ["justify"] = "LEFT",
      ["xOffset"] = 0,
      ["id"] = "Dark Recital Warning Text",
      ["wordWrap"] = "WordWrap",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "P426ZYbBDyJ",
      ["parent"] = "07 The Council of Blood",
      ["displayText"] = "DANCE INC",
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
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
         ["main"] = {
            ["type"] = "preset",
            ["easeType"] = "none",
            ["duration_type"] = "seconds",
            ["preset"] = "bounce",
            ["easeStrength"] = 3,
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
   },
   ["Sins Duration"] = {
      ["sparkWidth"] = 10,
      ["sparkOffsetX"] = 0,
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = "342280",
               ["duration"] = "40",
               ["use_specific_sourceUnit"] = true,
               ["unit"] = "boss",
               ["debuffType"] = "HARMFUL",
               ["auraspellids"] = {
                  "325064",
               },
               ["type"] = "combatlog",
               ["subeventSuffix"] = "_AURA_APPLIED",
               ["useExactSpellId"] = true,
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
               ["event"] = "Combat Log",
               ["use_unit"] = true,
               ["unevent"] = "timed",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_sourceUnit"] = true,
               ["use_absorbMode"] = true,
               ["use_destUnit"] = false,
               ["sourceUnit"] = "boss1",
               ["useRem"] = false,
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
         0.69019607843137,
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
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "SINS",
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
            ["text_fontType"] = "None",
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_text_format_n_format"] = "none",
         },
         {
            ["border_offset"] = 0,
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
            ["type"] = "subborder",
         },
      },
      ["height"] = 25,
      ["load"] = {
         ["size"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
         ["encounterid"] = "2406",
         ["use_encounterid"] = true,
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["source"] = "import",
      ["desc"] = "Sins Duration",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["parent"] = "06 Lady Inerva Darkvein Scripe/Phil DG",
      ["xOffset"] = 0,
      ["icon_side"] = "RIGHT",
      ["uid"] = "bQWl3q1G1da",
      ["config"] = {
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["zoom"] = 0,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["width"] = 300,
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "Sins Duration",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["inverse"] = false,
      ["iconSource"] = -1,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["selfPoint"] = "CENTER",
   },
   ["Dutiful Attendant spawn"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_loop"] = false,
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Shotgun.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
         },
         ["finish"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "346698",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["duration"] = "1",
               ["event"] = "Combat Log",
               ["names"] = {
               },
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["unevent"] = "timed",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
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
      ["desc"] = "Sound alert for Dutiful Attendant spawning. ",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
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
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_p_time_precision"] = 1,
      ["authorOptions"] = {
      },
      ["fixedWidth"] = 200,
      ["shadowYOffset"] = -1,
      ["justify"] = "LEFT",
      ["xOffset"] = 0,
      ["id"] = "Dutiful Attendant spawn",
      ["wordWrap"] = "WordWrap",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "TILzYSun82f",
      ["parent"] = "07 The Council of Blood",
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
   ["02 Huntsman Altimor"] = {
      ["controlledChildren"] = {
         "Sinseekers P3 - range condition",
         "Shade energy",
         "Sinseekers",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["groupIcon"] = 3614359,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 9,
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
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["id"] = "02 Huntsman Altimor",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "AAFKHawfy1j",
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["yOffset"] = 0,
      ["borderInset"] = 1,
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
   ["Pridefull Eruption"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["parent"] = "07 The Council of Blood",
      ["preferToUpdate"] = true,
      ["customText"] = "function()\
    return aura_env.getDisplayString()\
end",
      ["yOffset"] = -20,
      ["anchorPoint"] = "CENTER",
      ["desaturateBackground"] = false,
      ["sameTexture"] = false,
      ["backgroundColor"] = {
         0,
         1,
         0,
         0.60000002384186,
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "unit",
               ["spellId"] = 346657,
               ["subeventSuffix"] = "_CAST_START",
               ["duration"] = "1",
               ["event"] = "Cast",
               ["names"] = {
               },
               ["unevent"] = "auto",
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["unit"] = "boss",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["use_absorbMode"] = true,
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
               ["unit"] = "boss",
            },
         },
         ["activeTriggerMode"] = -10,
      },
      ["endAngle"] = 360,
      ["internalVersion"] = 53,
      ["selfPoint"] = "CENTER",
      ["desc"] = "Prideful Eruption range checker.",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["load"] = {
         ["use_encounterid"] = true,
         ["class"] = {
            ["multi"] = {
            },
         },
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2412",
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text"] = "%p",
            ["text_text_format_p_format"] = "timed",
            ["text_selfPoint"] = "CENTER",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_c_format"] = "none",
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["anchorYOffset"] = 0,
            ["anchorXOffset"] = 0,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["type"] = "subtext",
            ["text_shadowXOffset"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_n_format"] = "none",
            ["text_shadowYOffset"] = -1,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_p_time_mod_rate"] = true,
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 22,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_p_time_legacy_floor"] = true,
         },
      },
      ["height"] = 50,
      ["startAngle"] = 0,
      ["crop_y"] = 0.41,
      ["crop_x"] = 0.41,
      ["useAdjustededMax"] = false,
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["source"] = "import",
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
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
      ["foregroundColor"] = {
         0.6,
         0,
         1,
         1,
      },
      ["mirror"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["authorOptions"] = {
      },
      ["blendMode"] = "BLEND",
      ["config"] = {
      },
      ["xOffset"] = 0,
      ["slantMode"] = "INSIDE",
      ["anchorFrameType"] = "SCREEN",
      ["alpha"] = 1,
      ["fontSize"] = 12,
      ["desaturateForeground"] = false,
      ["smoothProgress"] = false,
      ["compress"] = false,
      ["id"] = "Pridefull Eruption",
      ["customTextUpdate"] = "update",
      ["frameStrata"] = 1,
      ["width"] = 50,
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["uid"] = "sy4YFf6i5VM",
      ["inverse"] = false,
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
            ["do_custom"] = false,
            ["custom"] = "function aura_env.getDisplayString()\
  if not aura_env.last or aura_env.last < GetTime() - 0.1 then\
    aura_env.last = GetTime();\
    for unit in WA_IterateGroupMembers() do\
      if(not UnitIsUnit(\"player\",unit))then\
        local range = WeakAuras.GetRange(unit);\
        if(range <= 7)then\
          aura_env.region:SetBackgroundColor(1,0,0,0.6);\
          return;\
        end\
      end\
      aura_env.region:SetBackgroundColor(0,1,0,0.6);\
      return;\
    end\
  end\
end",
         },
         ["finish"] = {
         },
      },
      ["orientation"] = "CLOCKWISE",
      ["conditions"] = {
         {
            ["check"] = {
               ["op"] = ">",
               ["type"] = "group",
               ["trigger"] = -1,
               ["op_range"] = "<=",
               ["variable"] = "rangecheck",
               ["range"] = "7",
               ["value"] = "0",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0,
                     0,
                     0.60000002384186,
                  },
                  ["property"] = "backgroundColor",
               },
            },
         },
      },
      ["information"] = {
      },
      ["backgroundOffset"] = 0,
   },
   ["07 The Council of Blood"] = {
      ["controlledChildren"] = {
         "Afterimage spawn",
         "Dark Recital Warning Text",
         "Dark Recital Arrow",
         "Dark Recital Partner",
         "Dutiful Attendant spawn",
         "Dancing Fever Indicator",
         "Pridefull Eruption",
         "Idiot Detector Shield",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 38,
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
               ["unit"] = "player",
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["names"] = {
               },
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
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
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["tocversion"] = 90002,
      ["id"] = "07 The Council of Blood",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "DjWbnsSF59r",
      ["borderInset"] = 1,
      ["groupIcon"] = 3614367,
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
         ["groupOffset"] = true,
      },
      ["selfPoint"] = "BOTTOMLEFT",
   },
   ["09 Stone Legion Generals - Seismic dance"] = {
      ["modelIsUnit"] = false,
      ["iconSource"] = -1,
      ["api"] = false,
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = 250,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 2,
      ["borderColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["sameTexture"] = true,
      ["hideBackground"] = true,
      ["backgroundColor"] = {
         0.5,
         0.5,
         0.5,
         0.5,
      },
      ["customForegroundRows"] = 16,
      ["frameRate"] = 15,
      ["keepAspectRatio"] = false,
      ["selfPoint"] = "CENTER",
      ["customBackgroundRows"] = 16,
      ["desc"] = "Seismic Upheaval direction assignment. ",
      ["rotation"] = 90,
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2417",
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "mythic",
         },
         ["zoneIds"] = "",
         ["class"] = {
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
      ["textureWrapMode"] = "CLAMP",
      ["sequence"] = 1,
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\stopmotion",
      ["scale"] = 1,
      ["regionType"] = "texture",
      ["customForegroundFrames"] = 0,
      ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",
      ["model_st_ry"] = 0,
      ["customBackgroundFrames"] = 0,
      ["alpha"] = 1,
      ["uid"] = "I(px5Pv(QoC",
      ["model_st_tz"] = 0,
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["color"] = {
         0.027450980392157,
         1,
         0,
         1,
      },
      ["model_x"] = 0,
      ["cooldownSwipe"] = true,
      ["model_z"] = 0,
      ["cooldown"] = false,
      ["cooldownEdge"] = false,
      ["desaturateForeground"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "combatlog",
               ["spellId"] = "334498",
               ["unevent"] = "timed",
               ["duration"] = "5",
               ["event"] = "Combat Log",
               ["use_unit"] = true,
               ["use_absorbMode"] = true,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["names"] = {
               },
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["useExactSpellId"] = true,
               ["unit"] = "player",
               ["matchesShowOn"] = "showOnMissing",
               ["auraspellids"] = {
                  "334498",
               },
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[1];\
end",
         ["activeTriggerMode"] = -10,
      },
      ["cooldownTextDisabled"] = false,
      ["internalVersion"] = 53,
      ["model_fileId"] = "623712",
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
      ["model_st_ty"] = 0,
      ["animationType"] = "loop",
      ["model_st_rx"] = 270,
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bigkiss.ogg",
            ["do_sound"] = false,
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["discrete_rotation"] = 0,
      ["startPercent"] = 0,
      ["model_st_tx"] = 0,
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["height"] = 200,
      ["rotate"] = true,
      ["anchorFrameType"] = "SCREEN",
      ["icon"] = true,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\stopmotion",
      ["customBackgroundColumns"] = 16,
      ["borderInset"] = 11,
      ["backgroundPercent"] = 1,
      ["authorOptions"] = {
      },
      ["mirror"] = false,
      ["borderEdge"] = "None",
      ["source"] = "import",
      ["borderSize"] = 16,
      ["endPercent"] = 1,
      ["border"] = false,
      ["model_st_rz"] = 0,
      ["customForegroundColumns"] = 16,
      ["borderOffset"] = 5,
      ["model_st_us"] = 40,
      ["advance"] = false,
      ["config"] = {
      },
      ["parent"] = "09 Stone Legion Generals",
      ["foregroundColor"] = {
         1,
         1,
         1,
         1,
      },
      ["id"] = "09 Stone Legion Generals - Seismic dance",
      ["model_y"] = 0,
      ["frameStrata"] = 1,
      ["width"] = 200,
      ["model_path"] = "interface/glues/models/ui_alliance/ui_alliance.m2",
      ["desaturate"] = false,
      ["inverse"] = false,
      ["zoom"] = 0,
      ["blendMode"] = "BLEND",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 2,
               ["variable"] = "show",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     0,
                     0,
                     1,
                  },
                  ["property"] = "color",
               },
               {
                  ["value"] = true,
                  ["property"] = "mirror",
               },
            },
         },
      },
      ["information"] = {
      },
      ["desaturateBackground"] = false,
   },
   ["09 Stone Legion Generals - Thing applied"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = "09 Stone Legion Generals",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 1,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["do_loop"] = false,
            ["do_message"] = false,
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
            ["do_sound"] = true,
         },
         ["finish"] = {
         },
         ["init"] = {
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["useExactSpellId"] = true,
               ["event"] = "Health",
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["unit"] = "player",
               ["names"] = {
               },
               ["auraspellids"] = {
                  "344655",
               },
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
      ["desc"] = "Reverberating Vulnerability sound alert",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["difficulty"] = {
         },
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
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
         ["encounterid"] = "2417",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 12,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_p_time_precision"] = 1,
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
      ["authorOptions"] = {
      },
      ["justify"] = "LEFT",
      ["displayText"] = "",
      ["id"] = "09 Stone Legion Generals - Thing applied",
      ["yOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["config"] = {
      },
      ["uid"] = "Z2UYF(nMU60",
      ["xOffset"] = 0,
      ["wordWrap"] = "WordWrap",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
   },
   ["09 Stone Legion Generals - Prince Energy Bar"] = {
      ["overlays"] = {
         {
            0.66666666666667,
            0.5843137254902,
            0,
            1,
         },
      },
      ["iconSource"] = -1,
      ["parent"] = "09 Stone Legion Generals",
      ["preferToUpdate"] = true,
      ["customText"] = "function()\
    if(aura_env.state and aura_env.state.value)then\
        return aura_env.state.value / 100,(aura_env.state.total - aura_env.state.value) / 100;\
    end\
end",
      ["yOffset"] = 400.00030517578,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 3,
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.spellIDs = \
{\
    [342698] = 300,\
    [342655] = 100,\
    [332406] = 100,\
    [339885] = 300,\
};\
\
aura_env.energizeIDs = \
{\
    [342659] = 100,\
    [332498] = 100,\
    [339886] = 300,\
    [342700] = 300,\
};",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["duration"] = "1",
               ["unit"] = "player",
               ["debuffType"] = "HELPFUL",
               ["type"] = "custom",
               ["unevent"] = "auto",
               ["subeventPrefix"] = "SPELL",
               ["custom_type"] = "stateupdate",
               ["event"] = "Health",
               ["subeventSuffix"] = "_CAST_START",
               ["use_unit"] = true,
               ["use_absorbMode"] = true,
               ["spellIds"] = {
               },
               ["names"] = {
               },
               ["check"] = "event",
               ["events"] = "CLEU:SPELL_ENERGIZE:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
        \
        if(subEvent == \"SPELL_AURA_APPLIED\")then\
            if(spellID == 332497)then\
                allstates[\"\"] =\
                {\
                    changed = true,\
                    show = true,\
                    progressType = \"static\",\
                    total = 1000,\
                    value = 0,\
                    additionalProgress =\
                    {\
                        {\
                            direction =\"forward\",\
                            width = 0,\
                        },\
                    },\
                };\
                \
                WeakAuras.ScanEvents(\"ECHO_PRINCE_ENERGY_UPDATE\",0);\
                \
                return true;\
            elseif(aura_env.spellIDs[spellID])then\
                local value = aura_env.spellIDs[spellID];\
                local state = allstates[\"\"];\
                \
                if(state)then\
                    state.changed = true;\
                    state.additionalProgress[1].width = state.additionalProgress[1].width + value;\
                    return true;\
                end\
            end\
        elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
            if(spellID == 332497)then\
                allstates[\"\"] =\
                {\
                    changed = true,\
                    show = false,\
                };\
                return true;\
            elseif(aura_env.spellIDs[spellID])then\
                local value = aura_env.spellIDs[spellID];\
                local state = allstates[\"\"];\
                \
                if(state)then\
                    state.changed = true;\
                    state.additionalProgress[1].width = state.additionalProgress[1].width - value;\
                    return true;\
                end\
            end\
        elseif(subEvent == \"SPELL_ENERGIZE\")then\
            local state = allstates[\"\"];\
            local value = aura_env.energizeIDs[spellID];\
            if(state and value)then\
                state.changed = true;\
                state.value = state.value + value;\
                WeakAuras.ScanEvents(\"ECHO_PRINCE_ENERGY_UPDATE\",state.value);\
                return true;\
            end\
        end\
    end\
end",
               ["customVariables"] = "{\
    additionalProgress = 1,\
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
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         0,
         0.47843137254902,
         1,
         1,
      },
      ["desaturate"] = false,
      ["oName"] = "09 Stone Legion Generals - Prince Energy Bar",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
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
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "%c1",
            ["text_text_format_p_format"] = "Number",
            ["text_selfPoint"] = "RIGHT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_text_format_n_format"] = "none",
            ["text_text_format_p_decimal_precision"] = 1,
            ["type"] = "subtext",
            ["text_text_format_p1_format"] = "none",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_anchorYOffset"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_text_format_c1_format"] = "none",
            ["text_anchorPoint"] = "SPARK",
            ["text_text_format_progress_format"] = "none",
            ["text_fontSize"] = 16,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_precision"] = 1,
         },
         {
            ["text_text_format_n_format"] = "none",
            ["text_text"] = "%c2",
            ["text_text_format_p_format"] = "Number",
            ["text_selfPoint"] = "RIGHT",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_shadowXOffset"] = 1,
            ["anchorYOffset"] = 0,
            ["text_text_format_progress_format"] = "none",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 16,
            ["text_text_format_p_decimal_precision"] = 1,
            ["type"] = "subtext",
            ["text_justify"] = "CENTER",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = -1,
            ["text_anchorYOffset"] = 0,
            ["text_anchorPoint"] = "INNER_RIGHT",
            ["text_text_format_c2_format"] = "none",
            ["text_fontType"] = "OUTLINE",
            ["text_text_format_c1_format"] = "none",
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_text_format_p1_format"] = "none",
            ["anchorXOffset"] = 0,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_placement_mode"] = "AtPercent",
            ["use_texture"] = false,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = true,
            ["tick_placement"] = "10",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_rotation"] = 0,
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["tick_rotation"] = 0,
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["type"] = "subtick",
            ["use_texture"] = false,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
            ["tick_placement"] = "20",
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = true,
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_placement_mode"] = "AtPercent",
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["tick_rotation"] = 0,
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
            ["use_texture"] = false,
            ["tick_placement_mode"] = "AtPercent",
            ["tick_visible"] = true,
            ["tick_placement"] = "30",
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["type"] = "subtick",
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_rotation"] = 0,
            ["use_texture"] = false,
            ["tick_placement_mode"] = "AtPercent",
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = true,
            ["tick_placement"] = "40",
            ["tick_yOffset"] = 0,
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_placement_mode"] = "AtPercent",
            ["use_texture"] = false,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = true,
            ["tick_placement"] = "50",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_rotation"] = 0,
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["tick_rotation"] = 0,
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["type"] = "subtick",
            ["use_texture"] = false,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
            ["tick_placement"] = "60",
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = true,
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_placement_mode"] = "AtPercent",
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["tick_rotation"] = 0,
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
            ["use_texture"] = false,
            ["tick_placement_mode"] = "AtPercent",
            ["tick_visible"] = true,
            ["tick_placement"] = "70",
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["type"] = "subtick",
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_rotation"] = 0,
            ["use_texture"] = false,
            ["tick_placement_mode"] = "AtPercent",
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = true,
            ["tick_placement"] = "80",
            ["tick_yOffset"] = 0,
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_placement_mode"] = "AtPercent",
            ["use_texture"] = false,
            ["tick_color"] = {
               0,
               0,
               0,
               1,
            },
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = true,
            ["tick_placement"] = "90",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_rotation"] = 0,
         },
      },
      ["height"] = 24.999979019165,
      ["xOffset"] = -174.10003662109,
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["use_never"] = false,
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
         ["encounterid"] = "2417",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["icon"] = false,
      ["source"] = "import",
      ["authorOptions"] = {
      },
      ["desc"] = "Show a bar for Prince Renethal's Mana, with ticks. ",
      ["config"] = {
      },
      ["sparkWidth"] = 10,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["anchorFrameType"] = "SCREEN",
      ["frameStrata"] = 1,
      ["icon_side"] = "RIGHT",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["id"] = "09 Stone Legion Generals - Prince Energy Bar",
      ["overlayclip"] = true,
      ["texture"] = "Blizzard",
      ["auto"] = true,
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90002,
      ["sparkHidden"] = "NEVER",
      ["zoom"] = 0,
      ["alpha"] = 1,
      ["width"] = 299.99996948242,
      ["sparkHeight"] = 30,
      ["uid"] = "YL0N(p0zyio",
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
   ["Chain Link Partner"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["authorOptions"] = {
      },
      ["adjustedMax"] = "1",
      ["yOffset"] = 0,
      ["anchorPoint"] = "BOTTOM",
      ["sameTexture"] = false,
      ["icon"] = true,
      ["keepAspectRatio"] = false,
      ["selfPoint"] = "TOP",
      ["desc"] = "Chain link tracker. ",
      ["rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["crop_y"] = 0.41,
      ["textureWrapMode"] = "CLAMP",
      ["startAngle"] = 0,
      ["customAnchor"] = "function()\
    return aura_env.GetAnchor();\
end",
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["blendMode"] = "BLEND",
      ["slantMode"] = "INSIDE",
      ["cooldownTextDisabled"] = false,
      ["auto"] = true,
      ["compress"] = false,
      ["alpha"] = 0.5,
      ["uid"] = "l3GqbX99066",
      ["backgroundOffset"] = 0,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["customText"] = "function()\
    return aura_env.GetDisplayString();\
end",
      ["desaturateBackground"] = false,
      ["cooldownSwipe"] = true,
      ["customTextUpdate"] = "update",
      ["cooldownEdge"] = false,
      ["desaturateForeground"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["customVariables"] = "{\
  rangeCheck = {\
    display = \"Range to Linked Unit\",\
    type = \"number\",\
    test = function(state, value, comp)\
      local value = tonumber(value)\
      if state.linkedWith and value then\
        local min, max = WeakAuras.GetRange(state.linkedWith)\
        if comp == \"<\" and max then\
          return max < value\
        elseif comp == \"<=\" and max then\
          return max <= value\
        elseif comp == \">\" and min then\
          return min > value\
        elseif comp == \">=\" and min then\
          return min >= value\
        end\
      end\
    end,\
    events = {\
      \"WA_SPELL_RANGECHECK\",\
    },\
  },\
  anyTank = \"bool\",\
  meleeIndex = \"number\",\
}",
               ["type"] = "custom",
               ["custom_type"] = "stateupdate",
               ["subeventSuffix"] = "_CAST_START",
               ["debuffType"] = "HELPFUL",
               ["duration"] = "0",
               ["event"] = "Combat Log",
               ["names"] = {
               },
               ["unevent"] = "timed",
               ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED",
               ["spellIds"] = {
               },
               ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local time,subEvent,_,_,_,_,_,_,destName,_,_,spellID = ...;\
        \
        if subEvent == \"SPELL_AURA_REMOVED\" and destName == WeakAuras.me and (spellID == 342420 or spellID == 342419) and allstates[\"\"] then\
            allstates[\"\"].show = false\
            allstates[\"\"].changed = true\
            return true\
            \
        elseif(subEvent == \"SPELL_AURA_APPLIED\")then\
            if(spellID == 342420)then\
                \
                if(time > aura_env.lastTime1 + 5)then\
                    aura_env.linkedWith = nil;\
                    aura_env.alpha = nil;\
                    aura_env.rotation = {};\
                    aura_env.rotation2 = {};\
                    aura_env.partnerMap = {};\
                    aura_env.castCount = 0;\
                    aura_env.myRotation = nil;\
                    aura_env.last = nil;\
                end\
                \
                aura_env.castCount = aura_env.castCount + 1;\
                \
                aura_env.rotation[aura_env.castCount] = destName;\
                if(destName == WeakAuras.me)then\
                    aura_env.myRotation = aura_env.castCount;\
                end\
                \
                aura_env.lastTime1 = time;\
            elseif(spellID == 342419)then\
                if(time > aura_env.lastTime2 + 5)then\
                    aura_env.castCount = 0;\
                end\
                \
                aura_env.lastTime2 = time;\
                aura_env.castCount = aura_env.castCount + 1;\
                \
                aura_env.rotation2[aura_env.castCount] = destName;\
                \
                if(destName == WeakAuras.me or aura_env.myRotation == aura_env.castCount)then\
                    aura_env.linkedWith = destName == WeakAuras.me and GetUnitName(aura_env.rotation[aura_env.castCount],true) or destName;\
                    aura_env.alpha = (UnitInRaid(aura_env.linkedWith) > UnitInRaid(WeakAuras.me)) and WeakAuras.me or aura_env.linkedWith;\
                    \
                    local class = UnitClassBase(\"player\");\
                    if(class == \"PRIEST\" or class == \"ROGUE\" or class == \"DRUID\" or class == \"WARRIOR\")then\
                        EchoInternal:ShowGlowForTimePeriod(aura_env.linkedWith,{glowType = \"buttonOverlay\"},5);\
                    end\
                end\
                \
                if(#aura_env.rotation == #aura_env.rotation2)then\
                    \
                    elogl(\"Sending Partnermap\");\
                    aura_env.partnerMap = {};\
                    for i,dude in ipairs(aura_env.rotation)do\
                        aura_env.partnerMap[dude] = aura_env.rotation2[i];\
                        aura_env.partnerMap[aura_env.rotation2[i]] = dude;\
                        elogl(dude,aura_env.rotation2[i]);\
                    end\
                    \
                    WeakAuras.ScanEvents(\"ECHO_SLUDGEFIST_CHAINLINK_PAIRS\",aura_env.partnerMap);\
                    aura_env.assignMeleeGroups();\
                    \
                    WeakAuras.ScanEvents(\"ECHO_SLUDGE_LINKED_WITH_MELEE\",(aura_env.linkedWith and EchoInternal:IsMelee(\"player\")) or EchoInternal:IsMelee(aura_env.linkedWith));\
                end\
                \
                if aura_env.linkedWith then\
                    allstates[\"\"] = {\
                        show = true,\
                        changed = true,\
                        autoHide = true,\
                        duration = 56,\
                        linkedWith = aura_env.linkedWith,\
                        leader = aura_env.alpha and \"Alpha\" or \"Beta\",\
                        meleeGroup = aura_env.getMeleeDisplay(),\
                        anyTank = aura_env.anyTank,\
                        meleeIndex = aura_env.myMeleeIndex,\
                    }\
                    return true\
                end\
            end\
        end\
    end\
end",
               ["check"] = "event",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["type"] = "aura2",
               ["useExactSpellId"] = true,
               ["unit"] = "player",
               ["auraspellids"] = {
                  "335293",
                  "342420",
                  "342419",
               },
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
            },
         },
         [3] = {
            ["trigger"] = {
               ["useName"] = true,
               ["spellName"] = 0,
               ["auranames"] = {
                  "340817",
               },
               ["event"] = "Alternate Power",
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["use_unit"] = true,
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["type"] = "aura2",
               ["unit"] = "player",
               ["duration"] = "1",
               ["unevent"] = "auto",
               ["use_track"] = true,
               ["debuffType"] = "HARMFUL",
            },
            ["untrigger"] = {
               ["unit"] = "boss",
            },
         },
         [4] = {
            ["trigger"] = {
               ["spellId"] = "335473",
               ["duration"] = "1",
               ["genericShowOn"] = "showOnCooldown",
               ["unit"] = "player",
               ["use_sourceFlags"] = false,
               ["spellName"] = 0,
               ["type"] = "combatlog",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["event"] = "Combat Log",
               ["realSpellName"] = 0,
               ["use_spellName"] = false,
               ["debuffType"] = "HELPFUL",
               ["unevent"] = "timed",
               ["use_genericShowOn"] = true,
               ["subeventPrefix"] = "SPELL",
               ["use_track"] = true,
               ["use_spellId"] = true,
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[2];\
end",
         ["activeTriggerMode"] = 2,
      },
      ["endAngle"] = 360,
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
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_text_format_p_time_format"] = 0,
            ["text_text_format_s_format"] = "none",
            ["text_text"] = "%1.linkedWith",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_text_format_1.linkedWith_format"] = "Unit",
            ["text_fixedWidth"] = 64,
            ["text_text_format_1.linkedWith_abbreviate_max"] = 5,
            ["rotateText"] = "NONE",
            ["text_text_format_c3_realm_name"] = "never",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_shadowYOffset"] = 0,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_fontSize"] = 14,
            ["anchorXOffset"] = 0,
            ["text_text_format_1.linkedWith_color"] = "class",
            ["text_text_format_p_format"] = "timed",
            ["text_selfPoint"] = "AUTO",
            ["text_text_format_1.linkedWith_abbreviate"] = true,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["text_text_format_1.linkedWith_realm_name"] = "never",
            ["type"] = "subtext",
            ["text_anchorXOffset"] = 0,
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_c3_abbreviate"] = true,
            ["text_text_format_c3_color"] = "class",
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_c3_format"] = "none",
            ["text_text_format_c1_format"] = "none",
            ["text_shadowXOffset"] = 0,
            ["text_text_format_p_time_precision"] = 1,
            ["text_automaticWidth"] = "Auto",
            ["text_text_format_c3_abbreviate_max"] = 5,
            ["text_visible"] = true,
         },
         {
            ["text_text_format_1.meleeGroup_format"] = "none",
            ["text_text"] = "%1.meleeGroup",
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "CENTER",
            ["text_automaticWidth"] = "Auto",
            ["text_text_format_meleeGroup_format"] = "none",
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_fixedWidth"] = 64,
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_n_format"] = "none",
            ["type"] = "subtext",
            ["text_anchorXOffset"] = 0,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_text_format_1.meleeIndex_format"] = "none",
            ["text_shadowYOffset"] = -1,
            ["text_anchorYOffset"] = 40,
            ["text_text_format_c4_format"] = "none",
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "CENTER",
            ["text_text_format_c1_format"] = "none",
            ["text_visible"] = true,
            ["text_fontSize"] = 14,
            ["anchorXOffset"] = 0,
            ["text_shadowXOffset"] = 1,
         },
      },
      ["height"] = 40,
      ["useAdjustededMax"] = false,
      ["fontSize"] = 12,
      ["source"] = "import",
      ["mirror"] = false,
      ["preferToUpdate"] = true,
      ["cooldown"] = false,
      ["crop_x"] = 0.41,
      ["zoom"] = 0,
      ["parent"] = "08 Sludgefist",
      ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",
      ["foregroundColor"] = {
         1,
         0.97254901960784,
         0.95686274509804,
         1,
      },
      ["anchorFrameParent"] = false,
      ["adjustedMin"] = "1",
      ["xOffset"] = 0,
      ["backgroundColor"] = {
         1,
         0,
         0.086274509803922,
         0.5,
      },
      ["anchorFrameType"] = "SCREEN",
      ["desaturate"] = false,
      ["id"] = "Chain Link Partner",
      ["actions"] = {
         ["start"] = {
            ["glow_frame_type"] = "UNITFRAME",
            ["glow_action"] = "show",
            ["glow_type"] = "Pixel",
            ["do_custom"] = false,
            ["do_glow"] = false,
         },
         ["finish"] = {
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "aura_env.lastTime1 = 0;\
aura_env.lastTime2 = 0;\
aura_env.lastDude = nil;\
aura_env.linkedWith = nil;\
\
aura_env.getMeleeDisplay = function()\
    if(aura_env.myMeleeIndex)then\
        if(aura_env.anyTank)then\
            return \"Tank\";\
        elseif(aura_env.myMeleeIndex == 1)then\
            return \"Front\";\
        else\
            return aura_env.myMeleeIndex == 2 and \"Back\" or \"Right\";\
        end\
    end\
    return \"\";\
end\
\
--[[aura_env.GetDisplayString = function()\
  if not aura_env.last or aura_env.last < GetTime() - 0.1 then\
    aura_env.last = GetTime();\
    if(aura_env.linkedWith)then\
      local min,max = WeakAuras.GetRange(aura_env.linkedWith);\
      local width,height,alpha;\
      if(min <= 4)then\
        aura_env.region:SetBackgroundColor(0,1,0,0.5);\
        width,height = 20,20;\
        alpha = 1;\
      elseif(min <= 7)then\
        aura_env.region:SetBackgroundColor(1,1,0,0.5);\
        width,height = 30,30;\
        alpha = 0.75;\
      else\
        aura_env.region:SetBackgroundColor(1,0,0,0.5);\
        width,height = 40,40;\
        alpha = 0.5;\
      end\
      \
      aura_env.region:SetRegionWidth(width);\
      aura_env.region:SetRegionHeight(height);\
      aura_env.region:SetRegionAlpha(alpha);\
      \
      local xOffset = 0;\
      local yOffset = 0;\
      if(aura_env.myMeleeIndex)then\
        if(aura_env.anyTank)then\
          yOffset = aura_env.region:GetWidth();\
          xOffset = aura_env.region:GetWidth() + 15;\
        elseif(aura_env.myMeleeIndex == 2)then\
          xOffset = -(aura_env.region:GetWidth() + 15);\
        elseif(aura_env.myMeleeIndex == 3)then\
          xOffset = aura_env.region:GetWidth() + 15;\
        elseif(aura_env.myMeleeIndex == 1)then\
          yOffset = aura_env.region:GetWidth();\
        end\
      end\
      \
      aura_env.region.subRegions[2]:SetXOffset(xOffset);\
      aura_env.region.subRegions[2]:SetYOffset(yOffset);\
      \
      aura_env.range = max;\
    end\
  end\
  \
  local coloredName = \"\";\
  \
  if(aura_env.linkedWith)then\
    local class = UnitClassBase(aura_env.linkedWith);\
    local color = RAID_CLASS_COLORS[class];\
    coloredName = (\"|c%s%s\"):format(color.colorStr,strsub(aura_env.linkedWith,1,4));\
  end\
  \
  local leaderText = \"\";\
  if(aura_env.myMeleeIndex or aura_env.anyTank)then\
    leaderText = aura_env.alpha == WeakAuras.me and \"Alpha\" or \"Beta\";\
  end\
  \
  return leaderText,aura_env.range,coloredName,getMeleeDisplay();\
end]]\
\
function aura_env.assignMeleeGroups()\
    local meleeIndex = 1;\
    aura_env.myMeleeIndex = nil;\
    aura_env.anyTank = nil;\
    aura_env.delayedAssigment = {};\
    \
    local assignedPps = {};\
    local numAssignedRange = 1;\
    for i=20,1,-1 do \
        local unit = \"raid\"..i;\
        \
        local unitName = EchoInternal:UnitName(unit);\
        local partner = aura_env.partnerMap[unitName];\
        \
        if(not assignedPps[unitName] and partner and not assignedPps[partner])then\
            \
            if(EchoInternal:IsRanged(unit,true) and EchoInternal:IsRanged(partner,true) and numAssignedRange <= 2)then\
                numAssignedRange = numAssignedRange + 1;\
                assignedPps[unitName] = true;\
                assignedPps[partner] = true;\
                \
                elogl(\"Assign Range:\",unitName,partner);\
                table.insert(aura_env.delayedAssigment,unitName);\
                \
                if(UnitIsUnit(\"player\",unitName) or UnitIsUnit(\"player\",partner))then\
                    aura_env.myMeleeIndex = 1;\
                    elog(\"My player index:\", 1);\
                end\
            end\
            \
            if(EchoInternal:IsMelee(unit,true) and EchoInternal:IsMelee(partner,true))then\
                assignedPps[unitName] = true;\
                assignedPps[partner] = true;\
                \
                if(UnitIsUnit(\"player\",unitName) or UnitIsUnit(\"player\",partner))then\
                    aura_env.myMeleeIndex = 2;\
                    elog(\"My player index:\", 2);\
                end\
            end\
        end\
    end    \
end",
         },
      },
      ["frameStrata"] = 1,
      ["width"] = 40,
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
         ["encounterid"] = "2399",
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["use_encounterid"] = true,
      },
      ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
      ["inverse"] = false,
      ["config"] = {
      },
      ["orientation"] = "CLOCKWISE",
      ["conditions"] = {
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<=",
               ["variable"] = "rangeCheck",
               ["value"] = "4",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     0,
                     1,
                     0,
                     0.60000002384186,
                  },
                  ["property"] = "backgroundColor",
               },
               {
                  ["value"] = 20,
                  ["property"] = "width",
               },
               {
                  ["value"] = 20,
                  ["property"] = "height",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<=",
               ["value"] = "7",
               ["variable"] = "rangeCheck",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     1,
                     1,
                     0,
                     0.60000002384186,
                  },
                  ["property"] = "backgroundColor",
               },
               {
                  ["value"] = 30,
                  ["property"] = "width",
               },
               {
                  ["value"] = 30,
                  ["property"] = "height",
               },
            },
            ["linked"] = true,
         },
         {
            ["check"] = {
               ["trigger"] = 3,
               ["variable"] = "show",
               ["value"] = 1,
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
               {
                  ["value"] = 1,
                  ["property"] = "alpha",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 4,
               ["variable"] = "show",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["custom"] = "local upEnv = aura_env;\
C_Timer.After(4,function()    \
        if(UnitIsGroupLeader(\"player\"))then   \
            for unit in WA_IterateGroupMembers() do\
                if(not EchoInternal:IsTank(unit))then\
                    SetRaidTarget(unit,0);\
                end\
            end\
        end\
end);\
\
\
",
                  },
                  ["property"] = "customcode",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "anyTank",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = 55,
                  ["property"] = "sub.3.text_anchorXOffset",
               },
               {
                  ["value"] = 40,
                  ["property"] = "sub.3.text_anchorYOffset",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "meleeIndex",
               ["value"] = "2",
               ["op"] = "==",
            },
            ["changes"] = {
               {
                  ["value"] = -55,
                  ["property"] = "sub.3.text_anchorXOffset",
               },
            },
            ["linked"] = true,
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "meleeIndex",
               ["value"] = "3",
               ["op"] = "==",
            },
            ["changes"] = {
               {
                  ["value"] = 55,
                  ["property"] = "sub.3.text_anchorXOffset",
               },
            },
            ["linked"] = true,
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "meleeIndex",
               ["op"] = "==",
               ["value"] = "1",
            },
            ["changes"] = {
               {
                  ["value"] = 40,
                  ["property"] = "sub.3.text_anchorYOffset",
               },
            },
            ["linked"] = true,
         },
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
      },
      ["tocversion"] = 90002,
   },
   ["Dancing Fever people"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["parent"] = "07 The Council of Blood Dancing Fever Phil",
      ["preferToUpdate"] = true,
      ["yOffset"] = 0,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["icon"] = false,
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["showClones"] = true,
               ["type"] = "aura2",
               ["subeventSuffix"] = "_CAST_START",
               ["event"] = "Health",
               ["unit"] = "raid",
               ["subeventPrefix"] = "SPELL",
               ["spellIds"] = {
               },
               ["useName"] = true,
               ["useExactSpellId"] = false,
               ["names"] = {
               },
               ["auranames"] = {
                  "Dancing Fever",
               },
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
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         1,
         0.31764705882353,
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
            ["text_text_format_s_format"] = "none",
            ["text_text"] = "%s %1.unitName",
            ["text_text_format_s_decimal_precision"] = 1,
            ["text_shadowColor"] = {
               0,
               0,
               0,
               1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["text_text_format_p_time_format"] = 0,
            ["anchorYOffset"] = 0,
            ["text_text_format_1.unitName_abbreviate_max"] = 8,
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_1.unitName_abbreviate"] = false,
            ["type"] = "subtext",
            ["text_text_format_1.unitName_realm_name"] = "never",
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_1.unitName_format"] = "Unit",
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_1.unitName_color"] = "class",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_justify"] = "CENTER",
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
      ["height"] = 25,
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
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
         ["encounterid"] = "2412",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["source"] = "import",
      ["desc"] = "Show all raiders with Dancing Fever",
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
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
      ["config"] = {
      },
      ["xOffset"] = 0,
      ["icon_side"] = "RIGHT",
      ["authorOptions"] = {
      },
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["zoom"] = 0,
      ["spark"] = false,
      ["anchorFrameType"] = "SCREEN",
      ["sparkHidden"] = "NEVER",
      ["alpha"] = 1,
      ["frameStrata"] = 1,
      ["width"] = 250,
      ["id"] = "Dancing Fever people",
      ["uid"] = "(vcja7yAipY",
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
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
   ["Small Soak"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = -1,
      ["xOffset"] = 0,
      ["preferToUpdate"] = true,
      ["yOffset"] = 330,
      ["anchorPoint"] = "CENTER",
      ["sparkRotation"] = 0,
      ["sparkRotationMode"] = "AUTO",
      ["actions"] = {
         ["start"] = {
         },
         ["init"] = {
         },
         ["finish"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\PUNCH.ogg",
            ["do_sound"] = true,
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = "331314",
               ["duration"] = "2",
               ["subeventPrefix"] = "SPELL",
               ["subeventSuffix"] = "_AURA_APPLIED",
               ["debuffType"] = "HARMFUL",
               ["useExactSpellId"] = true,
               ["type"] = "custom",
               ["auraspellids"] = {
                  "331314",
               },
               ["custom_type"] = "event",
               ["use_absorbMode"] = true,
               ["names"] = {
               },
               ["event"] = "Combat Log",
               ["spellIds"] = {
               },
               ["unevent"] = "timed",
               ["use_spellId"] = true,
               ["events"] = "SMALL_SOAK",
               ["custom"] = "function()\
    return true;\
end",
               ["use_unit"] = true,
               ["use_destUnit"] = false,
               ["unit"] = "boss",
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
      ["selfPoint"] = "CENTER",
      ["barColor"] = {
         1,
         0.87843137254902,
         0,
         1,
      },
      ["desc"] = "Fractured Debris alert",
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
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["text_text_format_p_time_legacy_floor"] = true,
            ["type"] = "subtext",
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_time_format"] = 0,
            ["text_shadowYOffset"] = -1,
            ["text_visible"] = true,
            ["text_wordWrap"] = "WordWrap",
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "INNER_LEFT",
            ["text_text_format_p_format"] = "timed",
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 20,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "Small Soak",
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
            ["text_anchorPoint"] = "INNER_TOP",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 35,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
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
      ["height"] = 30,
      ["load"] = {
         ["use_ignoreNameRealm"] = true,
         ["encounterid"] = "2399",
         ["use_encounterid"] = true,
         ["difficulty"] = {
            ["single"] = "mythic",
         },
         ["ignoreNameRealm"] = "Zaeliafour",
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
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["desaturate"] = false,
      ["source"] = "import",
      ["icon"] = false,
      ["backgroundColor"] = {
         0,
         0,
         0,
         0.5,
      },
      ["parent"] = "08 Sludgefist",
      ["authorOptions"] = {
      },
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["sparkColor"] = {
         1,
         1,
         1,
         1,
      },
      ["config"] = {
      },
      ["icon_side"] = "RIGHT",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["anchorFrameType"] = "SCREEN",
      ["sparkHeight"] = 30,
      ["texture"] = "Blizzard",
      ["alpha"] = 1,
      ["zoom"] = 0,
      ["auto"] = true,
      ["tocversion"] = 90002,
      ["sparkHidden"] = "NEVER",
      ["id"] = "Small Soak",
      ["frameStrata"] = 1,
      ["width"] = 400,
      ["spark"] = false,
      ["uid"] = "2NPfKBm1EqL",
      ["inverse"] = false,
      ["sparkOffsetX"] = 0,
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
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
   ["07 The Council of Blood Dancing Fever Phil"] = {
      ["grow"] = "DOWN",
      ["controlledChildren"] = {
         "Dancing Fever people",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
      ["yOffset"] = 156.59991455078,
      ["sortHybridTable"] = {
         ["Dancing Fever people"] = false,
      },
      ["echoVersion"] = 1,
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
      ["rotation"] = 0,
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["groupIcon"] = 3614367,
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["stagger"] = 0,
      ["animate"] = false,
      ["source"] = "import",
      ["scale"] = 1,
      ["fullCircle"] = true,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "dynamicgroup",
      ["borderSize"] = 2,
      ["limit"] = 5,
      ["selfPoint"] = "TOP",
      ["uid"] = "awsvFHECcoQ",
      ["anchorPoint"] = "CENTER",
      ["sort"] = "none",
      ["constantFactor"] = "RADIUS",
      ["gridWidth"] = 5,
      ["borderOffset"] = 4,
      ["internalVersion"] = 53,
      ["borderInset"] = 1,
      ["id"] = "07 The Council of Blood Dancing Fever Phil",
      ["rowSpace"] = 1,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["arcLength"] = 360,
      ["config"] = {
      },
      ["authorOptions"] = {
      },
      ["gridType"] = "RD",
      ["useLimit"] = false,
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["xOffset"] = -587.70025634766,
   },
   ["09 Stone Legion Generals - Wicked Blade Raidframe Glow"] = {
      ["outline"] = "OUTLINE",
      ["parent"] = "09 Stone Legion Generals",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["shadowYOffset"] = -1,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 3,
      ["displayText_format_p_time_format"] = 0,
      ["customTextUpdate"] = "event",
      ["automaticWidth"] = "Auto",
      ["actions"] = {
         ["start"] = {
            ["glow_frame_type"] = "UNITFRAME",
            ["glow_action"] = "show",
            ["do_glow"] = true,
            ["glow_type"] = "Pixel",
            ["use_glow_color"] = true,
            ["glow_color"] = {
               1,
               0.42352941176471,
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
               ["useMatch_count"] = false,
               ["useUnitName"] = false,
               ["combinePerUnit"] = false,
               ["names"] = {
               },
               ["debuffType"] = "HARMFUL",
               ["showClones"] = true,
               ["type"] = "aura2",
               ["auraspellids"] = {
                  "333377",
               },
               ["perUnitMode"] = "unaffected",
               ["event"] = "Health",
               ["useExactSpellId"] = true,
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["useGroup_count"] = false,
               ["unit"] = "raid",
               ["useAffected"] = false,
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
         ["disjunctive"] = "custom",
         ["customTriggerLogic"] = "function(t)\
    return t[1];\
end",
         ["activeTriggerMode"] = -10,
      },
      ["displayText_format_p_format"] = "timed",
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOM",
      ["desc"] = "Glow the raid frame of raiders with Wicked Mark.",
      ["font"] = "Friz Quadrata TT",
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
      },
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
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
         ["encounterid"] = "2417",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["fontSize"] = 12,
      ["source"] = "import",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["preferToUpdate"] = true,
      ["displayText_format_p_time_precision"] = 1,
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
      ["authorOptions"] = {
      },
      ["justify"] = "LEFT",
      ["displayText"] = "",
      ["id"] = "09 Stone Legion Generals - Wicked Blade Raidframe Glow",
      ["yOffset"] = 0,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["uid"] = "3maCTCU1YJd",
      ["config"] = {
      },
      ["xOffset"] = 0,
      ["wordWrap"] = "WordWrap",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["color"] = {
         1,
         1,
         1,
         1,
      },
   },
   ["09 Stone Legion Generals Anima Orb display for scripe so he can see. Send help :)"] = {
      ["outline"] = "OUTLINE",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["preferToUpdate"] = true,
      ["customText"] = "function()\
    return aura_env.getDisplayString();\
end",
      ["shadowYOffset"] = -1,
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
            ["custom"] = "\
\
",
         },
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["type"] = "custom",
               ["subeventSuffix"] = "_CAST_START",
               ["debuffType"] = "HELPFUL",
               ["event"] = "Health",
               ["unit"] = "player",
               ["subeventPrefix"] = "SPELL",
               ["customName"] = "function()\
  if(aura_env.soakers)then\
    local playerNames = {};\
    for i=1,#aura_env.soakers do\
      table.insert(playerNames,WA_ClassColorName(aura_env.soakers[i]));\
    end\
    return table.concat(playerNames,\"\\n\");\
  end\
  \
  return \"guy1\\nguy2\\nguy3\\nblablabla\";\
end",
               ["custom"] = "function(event,people)\
    if(people)then\
        aura_env.soakers = people;\
        return #people > 0;\
    end\
end",
               ["names"] = {
               },
               ["custom_type"] = "event",
               ["events"] = "ECHO_ANIMA_ORB_UPDATE",
               ["spellIds"] = {
               },
               ["custom_hide"] = "custom",
            },
            ["untrigger"] = {
               ["custom"] = "function(event,people)\
    if(people)then\
        return #people == 0;\
    end\
end",
            },
         },
         ["disjunctive"] = "any",
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
      ["desc"] = "Show names of people holding Anima Orbs\
",
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
         ["encounterid"] = "2417",
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
         ["zoneIds"] = "",
         ["use_encounterid"] = true,
      },
      ["fontSize"] = 23,
      ["source"] = "import",
      ["displayText_format_n_format"] = "none",
      ["shadowXOffset"] = 1,
      ["regionType"] = "text",
      ["displayText_format_c_format"] = "none",
      ["selfPoint"] = "TOPLEFT",
      ["displayText_format_p_time_precision"] = 1,
      ["conditions"] = {
      },
      ["wordWrap"] = "WordWrap",
      ["displayText_format_p_time_dynamic_threshold"] = 60,
      ["justify"] = "LEFT",
      ["yOffset"] = 512.09997558594,
      ["id"] = "09 Stone Legion Generals Anima Orb display for scripe so he can see. Send help :)",
      ["uid"] = "nWM3soUQPh5",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["xOffset"] = -326.70007324219,
      ["config"] = {
      },
      ["parent"] = "09 Stone Legion Generals",
      ["displayText"] = "%n",
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["fixedWidth"] = 200,
      ["information"] = {
      },
      ["authorOptions"] = {
      },
   },
   ["09 Stone Legion Generals - Reverberating Eruption Soak Assigment"] = {
      ["user_y"] = 0,
      ["user_x"] = 0,
      ["xOffset"] = 6.103515625e-05,
      ["preferToUpdate"] = true,
      ["yOffset"] = 250,
      ["anchorPoint"] = "CENTER",
      ["echoVersion"] = 13,
      ["parent"] = "09 Stone Legion Generals",
      ["sameTexture"] = true,
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\phone.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
            ["do_custom"] = true,
            ["custom"] = "function aura_env.canSoak(soaker)\
    return (soaker and not UnitIsUnit(aura_env.targetedByBoss,soaker) and not UnitIsDead(soaker) and not WA_GetUnitDebuff(soaker,344655));\
end\
\
function aura_env.decideSoakers(numSoakers)\
    local soakers = {};\
    if(numSoakers == 0) then return soakers; end;\
    \
    local playerIndex = nil;\
    local isBackup = nil;\
    local usedBackups = {};\
    \
    local soakIndex = 0;\
    for i=1,numSoakers do\
        soakIndex = soakIndex + 1;\
        \
        local soaked = false;\
        local soaker = aura_env.rotations[i];\
        if(aura_env.canSoak(soaker))then\
            elogl(\"Main Soaker\",soaker,soakIndex);\
            \
            table.insert(soakers,soaker);\
            if(UnitIsUnit(\"player\",soaker))then\
                playerIndex = soakIndex;\
            end\
            \
            soaked = true;\
        end\
        \
        if(not soaked)then\
            for j=1,#aura_env.rotationBackups do\
                local backup = aura_env.rotationBackups[j];\
                if(not usedBackups[backup] and aura_env.canSoak(backup))then\
                    table.insert(soakers,backup);\
                    usedBackups[backup] = true;\
                    \
                    elogl(\"Backup soaker\",backup,soakIndex);\
                    if(UnitIsUnit(\"player\",backup))then\
                        playerIndex = soakIndex;\
                        isBackup = true;\
                    end\
                    \
                    soaked = true;\
                    break;\
                end\
            end\
            \
            if(not soaked)then\
                elogl(\"Out of backups\");\
                table.insert(soakers,\"Out of backups\");\
            end\
        end\
    end\
    \
    return soakers,playerIndex,isBackup;\
end\
\
function aura_env.assignePeople(allstates,unit)\
    \
    local currentSoak = aura_env.soakCount;\
    local soakers,playerIndex,isBackup = aura_env.decideSoakers(aura_env.numNeededSoakers);\
    local shouldShow = playerIndex and ((currentSoak < aura_env.reqSoakers or (((currentSoak % aura_env.reqSoakers) + 1) ~= playerIndex)) or isBackup);\
    \
    elog(\"Assigned:\",currentSoak,shouldShow,playerIndex,aura_env.numNeededSoakers,aura_env.reqSoakers);\
    \
    if(aura_env.config.markAll or (aura_env.config.markHealer and EchoInternal:IsHealer(\"player\")))then\
        for _,guy in pairs(soakers)do\
            EchoInternal:ShowGlowForTimePeriod(guy,{\
                    glowType = \"ACShine\",\
                    particules = 26,\
            },5.5);\
        end\
    end\
    \
    if(shouldShow)then\
        \
        local startTimeMs,endTimeMS = select(4,UnitCastingInfo(unit));\
        local startTime = startTimeMs / 1000;\
        local endTime = (endTimeMS / 1000) + 1.5;\
        \
        allstates[\"\"] = \
        {\
            changed = true,\
            show = true,\
            progressType = \"timed\",\
            duration = endTime - startTime,\
            expirationTime = endTime,\
            autoHide = true,\
            texture = EchoInternal:GetStoneLegionTextureByIndex(playerIndex),\
        };\
        \
        return true;\
    end\
    \
    return false;\
end\
\
\
function aura_env.readRotationFromExrtNotes()\
    \
    aura_env.initialized = false;\
    aura_env.rotations = {};\
    aura_env.rotationBackups = {};\
    \
    local noteText = {strsplit(\"\\n\", VExRT.Note.Text1)}\
    for _, line in ipairs(noteText) do\
        if string.sub(line, 1, 13) == \"#EruptionSoak\" then\
            --only starting from xth char and whitespaces at end removed\
            local strippedLine = string.sub(line, 15):match(\"(.-)%s*$\")\
            --remove class coloring and find matches\
            for match in string.gmatch(strippedLine, \"|c%x%x%x%x%x%x%x%x(.-)|\") do\
                if UnitExists(match) or aura_env.debug then\
                    table.insert(aura_env.rotations,match);\
                else\
                    print(\"WA \"..aura_env.id..\" : Player \"..match..\" not in Raid. Please fix ExRT Note!\");\
                    return;\
                end\
            end\
        end\
        if string.sub(line, 1, 14) == \"#BEruptionSoak\" then\
            --only starting from xth char and whitespaces at end removed\
            local strippedLine = string.sub(line, 16):match(\"(.-)%s*$\")\
            --remove class coloring and find matches\
            for match in string.gmatch(strippedLine, \"|c%x%x%x%x%x%x%x%x(.-)|\") do\
                if UnitExists(match) or aura_env.debug then\
                    table.insert(aura_env.rotationBackups,match);\
                else\
                    print(\"WA \"..aura_env.id..\" : Player \"..match..\" not in Raid. Please fix ExRT Note!\");\
                    return;\
                end\
            end\
        end\
    end\
    \
    aura_env.reqSoakers = ((select(3,GetInstanceInfo())) == 15) and 3 or 9;\
    \
    if(#aura_env.rotations < aura_env.reqSoakers)then\
        print(\"WA \"..aura_env.id..\" : '#EruptionSoak' needs at least \"..aura_env.reqSoakers..\" pairs. Current: \"..#aura_env.rotations);\
        return;\
    end\
    \
    if(#aura_env.rotationBackups == 0)then\
        print(\"WA \"..aura_env.id..\" : '#BEruptionSoak' nobody asigned as backup. Kinda sus.\");\
        return;\
    end\
    \
    print(\"WA \"..aura_env.id..\" : Init successful.\");\
    \
    elogl(aura_env.id,\"Init successful\",aura_env.reqSoakers);\
    \
    aura_env.initialized = true;\
end\
\
\
\
",
         },
         ["finish"] = {
         },
      },
      ["backgroundColor"] = {
         0.5,
         0.5,
         0.5,
         0.5,
      },
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["subeventSuffix"] = "_CAST_START",
               ["type"] = "custom",
               ["use_absorbMode"] = true,
               ["unevent"] = "timed",
               ["unit"] = "player",
               ["duration"] = "1",
               ["event"] = "Combat Log",
               ["subeventPrefix"] = "SPELL",
               ["use_unit"] = true,
               ["events"] = "CLEU:SPELL_CAST_START UNIT_TARGET:boss ENCOUNTER_START READY_CHECK",
               ["custom"] = "function(allstates,event,...)\
    if(event == \"READY_CHECK\" or event == \"ENCOUNTER_START\")then\
        aura_env.soakCount = -1;\
        if(not aura_env.initialized or event == \"READY_CHECK\")then\
            aura_env.readRotationFromExrtNotes();\
        end\
    elseif(aura_env.initialized)then\
        if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
            local _, subEvent, _, _, _, _, _ ,destGUID, destName, _, _, spellID = ...;\
            if(spellID == 344496)then\
                elogl(\"New cast\",aura_env.soakCount + 1,aura_env.reqSoakers);\
                \
                aura_env.needsTarget = true;\
                \
                aura_env.soakCount = aura_env.soakCount + 1;\
                aura_env.numNeededSoakers = math.min(aura_env.soakCount,aura_env.reqSoakers);\
            end\
        elseif(event == \"UNIT_TARGET\" and aura_env.needsTarget)then\
            local unit = ...;\
            if(unit)then\
                local npcID = select(6,strsplit(\"-\", UnitGUID(unit)));\
                if(npcID  == \"168113\")then\
                    aura_env.targetedByBoss = unit..\"target\";\
                    aura_env.needsTarget = nil;\
                    elogl(\"Target found\");\
                    \
                    return aura_env.assignePeople(allstates,unit);\
                end\
            end\
        end\
    elseif(event == \"OPTIONS\")then\
        allstates[\"\"] = \
        {\
            changed = true,\
            show = true,\
            progressType = \"timed\",\
            duration = 5.5,\
            expirationTime = GetTime() + 5.5,\
            autoHide = true,\
            texture = EchoInternal:GetStoneLegionTextureByIndex(math.random(9)),\
        };\
        \
        return true;\
    end\
end",
               ["spellIds"] = {
               },
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
      ["endAngle"] = 360,
      ["internalVersion"] = 53,
      ["crop_x"] = 0.41,
      ["selfPoint"] = "CENTER",
      ["desaturateForeground"] = false,
      ["width"] = 200,
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
            ["preset"] = "pulse",
            ["easeStrength"] = 3,
         },
         ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
         },
      },
      ["desaturate"] = false,
      ["discrete_rotation"] = 0,
      ["font"] = "Friz Quadrata TT",
      ["config"] = {
         ["markHealer"] = true,
         ["markAll"] = true,
      },
      ["subRegions"] = {
         {
            ["type"] = "subbackground",
         },
         {
            ["text_text_format_n_format"] = "none",
            ["text_text"] = "Soak %p",
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
            ["text_text_format_p_time_format"] = 0,
            ["anchorXOffset"] = 0,
            ["text_text_format_p_time_mod_rate"] = true,
            ["type"] = "subtext",
            ["text_shadowXOffset"] = 1,
            ["text_color"] = {
               1,
               1,
               1,
               1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_text_format_p_format"] = "timed",
            ["text_anchorYOffset"] = 0,
            ["text_fontType"] = "None",
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "TOP",
            ["text_shadowYOffset"] = -1,
            ["text_text_format_p_time_precision"] = 1,
            ["text_fontSize"] = 48,
            ["text_text_format_p_time_dynamic_threshold"] = 60,
            ["text_text_format_p_time_legacy_floor"] = true,
         },
      },
      ["height"] = 200,
      ["rotate"] = true,
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
         ["use_encounterid"] = false,
         ["difficulty"] = {
            ["multi"] = {
               ["heroic"] = true,
               ["mythic"] = true,
            },
         },
         ["size"] = {
            ["multi"] = {
            },
         },
         ["encounterid"] = "2417",
         ["use_zoneIds"] = true,
         ["use_difficulty"] = false,
         ["spec"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "1747",
      },
      ["alpha"] = 1,
      ["useAdjustededMax"] = false,
      ["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
      ["source"] = "import",
      ["startAngle"] = 0,
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["desaturateBackground"] = false,
      ["mirror"] = false,
      ["useAdjustededMin"] = false,
      ["regionType"] = "progresstexture",
      ["tocversion"] = 90002,
      ["blendMode"] = "BLEND",
      ["authorOptions"] = {
         {
            ["type"] = "toggle",
            ["key"] = "markAll",
            ["useDesc"] = false,
            ["default"] = false,
            ["name"] = "Mark for all",
            ["width"] = 1,
         },
         {
            ["type"] = "toggle",
            ["useDesc"] = false,
            ["key"] = "markHealer",
            ["name"] = "Mark for Healer",
            ["default"] = false,
            ["width"] = 1,
         },
      },
      ["desc"] = "Reverberating Eruption Soak assignment. \
\
It requires ExRT note to assing soakers to their positions.\
Note needs to be in the following format:\
\
#EruptionSoak <player1> ... <playerX>\
#BErutionSoak <player1> ... <playerX>\
\
#EruptionSoak needs 9 players for Mythic and 3 players on Heroic.\
#BEruptionSoak can take any number of players but keep in mind to have enough backups!\
\
<player> is just class colored name of a player.",
      ["slantMode"] = "INSIDE",
      ["oName"] = "09 Stone Legion Generals - Reverberating Eruption Soak Assigment",
      ["texture"] = "Interface\\TargetingFrame\\UI-RaidTargetingIcon_1",
      ["foregroundTexture"] = "Interface\\TargetingFrame\\UI-RaidTargetingIcon_1",
      ["fontSize"] = 12,
      ["rotation"] = 0,
      ["compress"] = false,
      ["id"] = "09 Stone Legion Generals - Reverberating Eruption Soak Assigment",
      ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["foregroundColor"] = {
         1,
         1,
         1,
         1,
      },
      ["uid"] = "latWyNIIaqL",
      ["inverse"] = false,
      ["crop_y"] = 0.41,
      ["orientation"] = "VERTICAL",
      ["conditions"] = {
      },
      ["information"] = {
      },
      ["backgroundOffset"] = 2,
   },
   ["08 Sludgefist"] = {
      ["controlledChildren"] = {
         "Colossal Roar",
         "Big Soak",
         "Small Soak",
         "Chain Link Partner",
      },
      ["borderBackdrop"] = "Blizzard Tooltip",
      ["parent"] = "Echo - Castle Nathria S4 - Custom",
      ["preferToUpdate"] = true,
      ["yOffset"] = 3.6000366210938,
      ["anchorPoint"] = "CENTER",
      ["oName"] = "08 Sludgefist",
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
               ["names"] = {
               },
               ["type"] = "aura2",
               ["spellIds"] = {
               },
               ["subeventSuffix"] = "_CAST_START",
               ["subeventPrefix"] = "SPELL",
               ["unit"] = "player",
               ["event"] = "Health",
               ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
         },
      },
      ["internalVersion"] = 53,
      ["selfPoint"] = "BOTTOMLEFT",
      ["subRegions"] = {
      },
      ["load"] = {
         ["talent"] = {
            ["multi"] = {
            },
         },
         ["zoneIds"] = "",
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
      ["backdropColor"] = {
         1,
         1,
         1,
         0.5,
      },
      ["source"] = "import",
      ["scale"] = 1,
      ["border"] = false,
      ["borderEdge"] = "Square Full White",
      ["regionType"] = "group",
      ["borderSize"] = 2,
      ["borderOffset"] = 4,
      ["authorOptions"] = {
      },
      ["tocversion"] = 90002,
      ["id"] = "08 Sludgefist",
      ["echoVersion"] = 129,
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["groupIcon"] = 3670322,
      ["uid"] = "NZ5xJvHR4Ub",
      ["config"] = {
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
      ["xOffset"] = 10.799987792969,
      ["conditions"] = {
      },
      ["information"] = {
         ["ignoreOptionsEventErrors"] = true,
         ["groupOffset"] = true,
      },
      ["borderInset"] = 1,
   },
   ["09 Stone Legion Generals - Seismic Upheaval"] = {
      ["sparkWidth"] = 10,
      ["iconSource"] = 0,
      ["xOffset"] = 0,
      ["displayText"] = "",
      ["yOffset"] = 330,
      ["displayText_format_p_time_dynamic"] = false,
      ["echoVersion"] = 1,
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
      ["wordWrap"] = "WordWrap",
      ["barColor"] = {
         0.97254901960784,
         0.52549019607843,
         0,
         1,
      },
      ["desaturate"] = false,
      ["font"] = "Friz Quadrata TT",
      ["sparkOffsetY"] = 0,
      ["load"] = {
         ["use_encounterid"] = true,
         ["zoneIds"] = "",
         ["use_never"] = false,
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
         ["encounterid"] = "2417",
         ["size"] = {
            ["multi"] = {
            },
         },
      },
      ["shadowXOffset"] = 1,
      ["useAdjustededMin"] = false,
      ["regionType"] = "aurabar",
      ["texture"] = "Blizzard",
      ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
      ["spark"] = false,
      ["tocversion"] = 90002,
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
      ["parent"] = "09 Stone Legion Generals",
      ["shadowYOffset"] = -1,
      ["sparkRotationMode"] = "AUTO",
      ["automaticWidth"] = "Auto",
      ["triggers"] = {
         [1] = {
            ["trigger"] = {
               ["spellId"] = "334498",
               ["use_absorbMode"] = true,
               ["unit"] = "player",
               ["debuffType"] = "HARMFUL",
               ["type"] = "combatlog",
               ["subeventSuffix"] = "_CAST_SUCCESS",
               ["use_unit"] = true,
               ["event"] = "Combat Log",
               ["unevent"] = "timed",
               ["useExactSpellId"] = true,
               ["use_spellId"] = true,
               ["spellIds"] = {
               },
               ["use_sourceUnit"] = false,
               ["auraspellids"] = {
                  "334498",
               },
               ["duration"] = "5",
               ["names"] = {
               },
               ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
         },
         [2] = {
            ["trigger"] = {
               ["spellId"] = 334498,
               ["use_genericShowOn"] = true,
               ["genericShowOn"] = "showOnCooldown",
               ["use_unit"] = true,
               ["debuffType"] = "HELPFUL",
               ["type"] = "unit",
               ["unevent"] = "auto",
               ["use_inverse"] = false,
               ["event"] = "Cast",
               ["unit"] = "boss",
               ["realSpellName"] = 0,
               ["use_spellName"] = true,
               ["use_spellId"] = true,
               ["subeventSuffix"] = "",
               ["duration"] = "1",
               ["subeventPrefix"] = "",
               ["use_track"] = true,
               ["spellName"] = 0,
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
         {
            ["tick_blend_mode"] = "ADD",
            ["tick_rotation"] = 0,
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_placement_mode"] = "AtValue",
            ["use_texture"] = false,
            ["tick_color"] = {
               1,
               1,
               1,
               1,
            },
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = false,
            ["tick_placement"] = "0",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["type"] = "subtick",
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["tick_rotation"] = 0,
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_placement_mode"] = "AtValue",
            ["use_texture"] = false,
            ["tick_color"] = {
               1,
               1,
               1,
               1,
            },
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = false,
            ["tick_placement"] = "1",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["type"] = "subtick",
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_color"] = {
               1,
               1,
               1,
               1,
            },
            ["use_texture"] = false,
            ["tick_placement_mode"] = "AtValue",
            ["tick_visible"] = false,
            ["tick_placement"] = "2",
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_rotation"] = 0,
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["tick_rotation"] = 0,
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["type"] = "subtick",
            ["use_texture"] = false,
            ["tick_color"] = {
               1,
               1,
               1,
               1,
            },
            ["tick_placement"] = "3",
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = false,
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_placement_mode"] = "AtValue",
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_color"] = {
               1,
               1,
               1,
               1,
            },
            ["use_texture"] = false,
            ["tick_placement_mode"] = "AtValue",
            ["tick_visible"] = false,
            ["tick_placement"] = "4",
            ["tick_yOffset"] = 0,
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_rotation"] = 0,
         },
         {
            ["tick_blend_mode"] = "ADD",
            ["type"] = "subtick",
            ["tick_xOffset"] = 0,
            ["tick_desaturate"] = false,
            ["automatic_length"] = true,
            ["tick_thickness"] = 2,
            ["tick_rotation"] = 0,
            ["use_texture"] = false,
            ["tick_placement_mode"] = "AtValue",
            ["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["tick_visible"] = false,
            ["tick_placement"] = "5",
            ["tick_yOffset"] = 0,
            ["tick_length"] = 30,
            ["tick_mirror"] = false,
            ["tick_color"] = {
               1,
               1,
               1,
               1,
            },
         },
         {
            ["text_shadowXOffset"] = 1,
            ["text_text"] = "Upheaval",
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
            ["text_anchorPoint"] = "TOP",
            ["text_text_format_n_format"] = "none",
            ["text_fontSize"] = 22,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
         },
      },
      ["height"] = 20.000007629395,
      ["sparkBlendMode"] = "ADD",
      ["useAdjustededMax"] = false,
      ["fontSize"] = 12,
      ["source"] = "import",
      ["desc"] = "Seismic Upheaval timer with damage ticks. ",
      ["zoom"] = 0,
      ["displayText_format_p_time_precision"] = 1,
      ["shadowColor"] = {
         0,
         0,
         0,
         1,
      },
      ["authorOptions"] = {
      },
      ["preferToUpdate"] = true,
      ["icon_side"] = "RIGHT",
      ["color"] = {
         1,
         1,
         1,
         1,
      },
      ["anchorPoint"] = "CENTER",
      ["sparkHeight"] = 30,
      ["width"] = 400,
      ["customTextUpdate"] = "event",
      ["icon"] = false,
      ["justify"] = "LEFT",
      ["actions"] = {
         ["start"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",
            ["do_sound"] = true,
         },
         ["init"] = {
         },
         ["finish"] = {
            ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
            ["do_sound"] = true,
         },
      },
      ["sparkHidden"] = "NEVER",
      ["selfPoint"] = "CENTER",
      ["frameStrata"] = 1,
      ["anchorFrameType"] = "SCREEN",
      ["id"] = "09 Stone Legion Generals - Seismic Upheaval",
      ["uid"] = "TohEVzjeL9I",
      ["inverse"] = false,
      ["config"] = {
      },
      ["orientation"] = "HORIZONTAL",
      ["conditions"] = {
         {
            ["check"] = {
               ["op"] = "<=",
               ["checks"] = {
                  {
                     ["trigger"] = 1,
                     ["variable"] = "show",
                     ["value"] = 1,
                  },
                  {
                     ["trigger"] = 1,
                     ["variable"] = "expirationTime",
                  },
               },
               ["trigger"] = 1,
               ["variable"] = "expirationTime",
               ["value"] = "1",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<=",
               ["variable"] = "expirationTime",
               ["value"] = "2",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["op"] = "<=",
               ["variable"] = "expirationTime",
               ["value"] = "3",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "expirationTime",
               ["value"] = "4",
               ["op"] = "<=",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "expirationTime",
               ["value"] = "5",
               ["op"] = "<=",
            },
            ["changes"] = {
               {
                  ["value"] = {
                     ["sound_type"] = "Play",
                     ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
                     ["sound_channel"] = "Master",
                  },
                  ["property"] = "sound",
               },
            },
         },
         {
            ["check"] = {
               ["trigger"] = 1,
               ["variable"] = "show",
               ["value"] = 1,
            },
            ["changes"] = {
               {
                  ["value"] = true,
                  ["property"] = "sub.4.tick_visible",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.5.tick_visible",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.6.tick_visible",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.7.tick_visible",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.8.tick_visible",
               },
               {
                  ["value"] = true,
                  ["property"] = "sub.9.tick_visible",
               },
            },
         },
      },
      ["information"] = {
      },
      ["auto"] = true,
   },
});
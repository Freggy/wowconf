local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ [" (07) Echo Public - Halondrus - Earthbreaker Missiles Circle 2"] = {  ["user_y"] = 0,  ["user_x"] = 0,  ["xOffset"] = 0,  ["yOffset"] = -10,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["sameTexture"] = false,  ["url"] = "",  ["backgroundColor"] = {   0.16078431372549,   1,   0,   0,  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = 363130,     ["auranames"] = {      "361675",     },     ["matchesShowOn"] = "showOnActive",     ["group_count"] = "0",     ["group_countOperator"] = ">",     ["showClones"] = false,     ["name_operator"] = "find('%s')",     ["use_absorbHealMode"] = true,     ["subeventSuffix"] = "_CAST_START",     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["use_spellId"] = true,     ["name"] = "Plasma Discharge",     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["useGroup_count"] = true,     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["use_unit"] = true,     ["custom_type"] = "event",     ["use_tooltip"] = false,     ["ignoreSelf"] = true,     ["useExactSpellId"] = false,     ["subeventPrefix"] = "SPELL",     ["names"] = {      "Sacred Blade",     },     ["unit"] = "player",     ["debuffType"] = "HARMFUL",     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["useName"] = true,     ["duration"] = "3",     ["auraspellids"] = {     },     ["type"] = "aura2",     ["unevent"] = "auto",     ["custom_hide"] = "timed",     ["buffShowOn"] = "showOnActive",     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["spellIds"] = {      283573,     },     ["use_genericShowOn"] = true,     ["remOperator"] = "<",     ["spellName"] = 0,     ["use_debuffClass"] = false,     ["useRem"] = false,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "combatlog",     ["spellId"] = "369880",     ["subeventSuffix"] = "_AURA_REMOVED",     ["duration"] = "2",     ["event"] = "Combat Log",     ["unit"] = "player",     ["use_spellId"] = true,     ["subeventPrefix"] = "SPELL",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["activeTriggerMode"] = -10,  },  ["endAngle"] = 360,  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["version"] = 7,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_text_format_p_time_precision"] = 1,    ["text_text"] = "%p",    ["text_text_format_p_format"] = "Number",    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_text_format_p_decimal_precision"] = 1,    ["type"] = "subtext",    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_shadowXOffset"] = 1,    ["text_shadowYOffset"] = -1,    ["text_visible"] = false,    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_time_format"] = 0,    ["text_text_format_n_format"] = "none",    ["text_fontSize"] = 16,    ["anchorXOffset"] = 0,    ["text_text_format_p_round_type"] = "floor",   },  },  ["height"] = 150,  ["crop_y"] = 0.41,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },   ["encounterid"] = "2529",   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",  },  ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_10px.tga",  ["useAdjustededMax"] = false,  ["fontSize"] = 12,  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 2,     ["variable"] = "show",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = {       0.97647058823529,       0.7843137254902,       0.23921568627451,       1,      },      ["property"] = "foregroundColor",     },     {      ["value"] = true,      ["property"] = "inverse",     },    },   },  },  ["startAngle"] = 0,  ["desaturateForeground"] = false,  ["foregroundColor"] = {   0.16078431372549,   1,   0,   1,  },  ["mirror"] = false,  ["useAdjustededMin"] = false,  ["regionType"] = "progresstexture",  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["blendMode"] = "BLEND",  ["config"] = {  },  ["selfPoint"] = "CENTER",  ["slantMode"] = "INSIDE",  ["anchorFrameType"] = "SCREEN",  ["frameStrata"] = 1,  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["tocversion"] = 90200,  ["semver"] = "1.0.6",  ["compress"] = false,  ["id"] = "(07) Echo Public - Halondrus - Earthbreaker Missiles Circle 2",  ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",  ["alpha"] = 0.9,  ["width"] = 150,  ["authorOptions"] = {  },  ["uid"] = "I7JuiwoDAwL",  ["inverse"] = false,  ["desaturateBackground"] = false,  ["orientation"] = "ANTICLOCKWISE",  ["crop_x"] = 0.41,  ["information"] = {   ["ignoreOptionsEventErrors"] = false,  },  ["backgroundOffset"] = 0, }, [" (07) Echo Public - Halondrus - Beam Count 2"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\CowMooing.ogg",    ["do_sound"] = true,   },   ["finish"] = {   },   ["init"] = {   },  },  ["displayText_format_1.p_time_format"] = 0,  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["desaturate"] = false,  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["displayText_format_1.p_time_precision"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["height"] = 200,  ["rotate"] = true,  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["use_role"] = true,   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2529",   ["use_encounterid"] = true,  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["discrete_rotation"] = 0,  ["selfPoint"] = "CENTER",  ["shadowXOffset"] = 1,  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "show",     ["value"] = 1,    },    ["changes"] = {     {     },    },   },  },  ["mirror"] = false,  ["displayText"] = "TAUNT",  ["regionType"] = "text",  ["yOffset"] = 36.025268554688,  ["blendMode"] = "BLEND",  ["authorOptions"] = {   {    ["type"] = "number",    ["useDesc"] = false,    ["max"] = 1,    ["step"] = 1,    ["width"] = 1,    ["min"] = 0,    ["name"] = "Tank index",    ["default"] = 0,    ["key"] = "target",   },  },  ["config"] = {   ["target"] = 1,  },  ["fontSize"] = 32,  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["anchorFrameType"] = "SCREEN",  ["frameStrata"] = 1,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(07) Echo Public - Halondrus - Beam Count 2",  ["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["alpha"] = 1,  ["width"] = 200,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["custom_hide"] = "timed",     ["debuffType"] = "HELPFUL",     ["event"] = "Health",     ["unit"] = "player",     ["names"] = {     },     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_CAST_START\")then\
      if(spellID == 360977)then\
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
      elseif(spellID == 359236)then\
        aura_env.count = 0; \
      end\
    end\
  elseif(event == \"ENCOUNTER_START\")then\
    aura_env.count = 0;    \
  end\
end",     ["events"] = "ENCOUNTER_START CLEU:SPELL_CAST_START",     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["spellIds"] = {     },     ["subeventPrefix"] = "SPELL",     ["customVariables"] = "{\
    \
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["uid"] = "yy5wXVrK0qp",  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["xOffset"] = -2.2230224609375,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["subRegions"] = {   {    ["type"] = "subbackground",   },  }, }, [" (07) Echo Public - Halondrus - Missiles soon Sounds 2"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["displayText_format_1.tooltip1_format"] = "BigNumber",  ["echoVersion"] = 2,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["message"] = "Missiles soon",    ["do_sound"] = false,    ["message_type"] = "TTS",    ["message_tts_voice"] = 0,    ["sound"] = "Interface\\AddOns\\!!!EchoInternal\\assets\\sounds\\VoiceGen\\Hazel-Soon.wav",    ["do_message"] = true,   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = "361675",     ["auranames"] = {      "368046",      "Eternity Engine",     },     ["remaining_operator"] = "<",     ["subeventPrefix"] = "SPELL",     ["stacks"] = "0",     ["specificUnit"] = "boss1",     ["remaining"] = "3",     ["unit"] = "member",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",     ["duration"] = "3",     ["use_remaining"] = true,     ["stacksOperator"] = ">",     ["subeventSuffix"] = "_CAST_START",     ["text"] = "Wild Stampede",     ["fetchTooltip"] = true,     ["use_text"] = false,     ["names"] = {     },     ["useName"] = true,     ["use_spellId"] = true,     ["spellIds"] = {     },     ["event"] = "BigWigs Timer",     ["remOperator"] = "<",     ["useStacks"] = true,     ["type"] = "addons",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["displayText_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["ingroup"] = {    ["multi"] = {    },   },   ["use_never"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["encounterid"] = "2529",   ["talent2"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["class"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",  },  ["displayText_format_s_format"] = "none",  ["fontSize"] = 28,  ["shadowXOffset"] = 1,  ["wordWrap"] = "WordWrap",  ["anchorPoint"] = "CENTER",  ["regionType"] = "text",  ["conditions"] = {  },  ["displayText_format_1.p_format"] = "timed",  ["xOffset"] = 0,  ["config"] = {  },  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["yOffset"] = 200,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(07) Echo Public - Halondrus - Missiles soon Sounds 2",  ["displayText_format_2.p_format"] = "timed",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_1.p_time_precision"] = 1,  ["uid"] = "vifdgqGL2ae",  ["color"] = {   1,   1,   1,   1,  },  ["displayText"] = "",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["displayText_format_1.p_time_format"] = 0, }, [" (07) Echo Public - Halondrus - Range Dispel WA 2"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["customText"] = "function()\
    local state = aura_env.state;\
    if(state.numDispels)then\
        if(state.numDispels == 0)then\
            return \"NO DISPELS IN RANGE\";\
        else\
            return \"\"; \
        end\
    else\
        return \"NO DISPELS IN RANGE\";\
    end\
end",  ["yOffset"] = 300,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 5,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "aura_env.spells =\
{\
  [527] = true,\
  [77130] = true,\
  [4987] = true,\
  [115450] = true,    \
  [88423] = true,\
};\
\
aura_env.dispels = {};",   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["custom"] = "function(allstates,event,...)\
  if(event == \"CHAT_MSG_ADDON\")then\
    local prefix, text, channel, sender = ...;\
    if(prefix == \"ECHOHDISPELL\")then\
      local sender = Ambiguate(sender,\"none\");\
      \
      if(UnitIsUnit(\"player\",sender) and not allstates[\"\"] and aura_env.doTheThing)then\
        allstates[\"\"] = {\
          show = true,\
          changed = true,\
          progressType = \"timed\",\
          expirationTime = GetTime() + 4,\
          duration = 4,\
          numDispels = 0,\
          autoHide = true,\
        };\
        \
        return true;\
      end\
    end\
  elseif(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    if(destName and UnitIsUnit(\"player\",destName) and spellID == 365297)then\
      if(subEvent == \"SPELL_AURA_REMOVED\")then\
        aura_env.doTheThing = false;\
        \
        local state = allstates[\"\"];\
        if(state)then\
          state.changed = true;\
          state.show = false;\
          \
          return true;\
        end\
      elseif(subEvent == \"SPELL_AURA_APPLIED\")then\
        aura_env.doTheThing = true;\
      end\
    end\
    \
  elseif(event == \"FRAME_UPDATE\")then\
    local state = allstates[\"\"];\
    if(state)then\
      if not aura_env.last or aura_env.last < GetTime() - 0.1 then\
        aura_env.last = GetTime()\
        \
        local oldDispels = state.numDispels;\
        local availDispels = 0; \
        \
        for watchId,watchData in pairs(aura_env.dispels)do\
          if(not UnitIsDeadOrGhost(watchData.member.unitName) and (WeakAuras.GetRange(watchData.member.unitName) < 40)\
            and watchData.expiration < GetTime())then\
            availDispels = availDispels + 1;\
          end\
        end \
        \
        if(oldDispels ~= availDispels)then\
          state.changed = true;\
          state.numDispels = availDispels;\
          \
          return true;\
        end\
      end\
    end\
    \
  elseif(event == \"ZT_ADD\")then\
    local type, watchID, member, spellID, duration, charges = ...;\
    if(not type)then\
      wipe(aura_env.dispels);\
      \
      local spells = {};\
      for spellID in pairs(aura_env.spells)do\
        table.insert(spells,spellID);\
      end\
      \
      WeakAuras.ScanEvents(\"ZT_REGISTER\", spells, aura_env.region.id);\
    elseif(aura_env.spells[spellID])then\
      aura_env.dispels[watchID] = {\
        member = member,\
        spellID = spellID,\
        duration = duration,\
        charges = charges,\
        expiration = 0,\
      };\
    end\
  elseif(event == \"ZT_REMOVE\")then\
    local type, watchID = ...;\
    if(aura_env.dispels[watchID])then\
      aura_env.dispels[watchID] = nil;\
    end        \
  elseif(event == \"ZT_TRIGGER\")then\
    local type, watchID, duration, expiration, charges, activeDuration, activeExpiration = ...;\
    local dispel = aura_env.dispels[watchID];\
    if(dispel)then\
      dispel.expiration = expiration;\
    end\
  end\
end",     ["events"] = "CHAT_MSG_ADDON ZT_TRIGGER ZT_ADD ZT_REMOVE FRAME_UPDATE CLEU:SPELL_AURA_REMOVED:SPELL_AURA_APPLIED",     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["names"] = {     },     ["spellIds"] = {     },     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2529",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 30,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["shadowYOffset"] = -1,  ["fixedWidth"] = 200,  ["displayText"] = "%c",  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(07) Echo Public - Halondrus - Range Dispel WA 2",  ["authorOptions"] = {  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   0.98823529411765,   0,   0,   1,  },  ["config"] = {  },  ["uid"] = "L4Q)135G0pg",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, ["(07) Echo Public - SOFO - Halondrus"] = {  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["borderBackdrop"] = "Blizzard Tooltip",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["scale"] = 1,  ["information"] = {  },  ["border"] = false,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 7,  ["authorOptions"] = {  },  ["borderColor"] = {   0,   0,   0,   1,  },  ["uid"] = "cQcxSZX05Z)",  ["yOffset"] = 0,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["subeventPrefix"] = "SPELL",     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["names"] = {     },     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["xOffset"] = 0,  ["internalVersion"] = 50,  ["config"] = {  },  ["selfPoint"] = "CENTER",  ["id"] = "(07) Echo Public - SOFO - Halondrus",  ["borderOffset"] = 4,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["tocversion"] = 90200,  ["borderInset"] = 1,  ["borderSize"] = 2,  ["subRegions"] = {  },  ["regionType"] = "group",  ["conditions"] = {  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },  },  ["borderEdge"] = "Square Full White", }, [" (07) Echo Public - Halondrus - Eternity Engine Stacks 2"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["displayText_format_1.tooltip1_format"] = "BigNumber",  ["echoVersion"] = 2,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["useStacks"] = true,     ["auranames"] = {      "368046",      "Eternity Engine",     },     ["remaining_operator"] = "<",     ["unit"] = "member",     ["stacks"] = "0",     ["specificUnit"] = "boss1",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",     ["remaining"] = "3",     ["type"] = "aura2",     ["stacksOperator"] = ">",     ["subeventSuffix"] = "_CAST_START",     ["names"] = {     },     ["fetchTooltip"] = true,     ["event"] = "BigWigs Timer",     ["duration"] = "3",     ["subeventPrefix"] = "SPELL",     ["text"] = "Wild Stampede",     ["spellIds"] = {     },     ["use_text"] = true,     ["remOperator"] = "<",     ["use_remaining"] = true,     ["useName"] = true,     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["displayText_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_never"] = true,   ["encounterid"] = "2529",   ["use_encounterid"] = true,   ["race"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["use_role"] = true,   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["class"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",  },  ["displayText_format_s_format"] = "none",  ["fontSize"] = 28,  ["shadowXOffset"] = 1,  ["displayText_format_1.p_time_precision"] = 1,  ["selfPoint"] = "CENTER",  ["regionType"] = "text",  ["fixedWidth"] = 200,  ["displayText_format_1.p_time_format"] = 0,  ["displayText"] = "Stacks - %s",  ["xOffset"] = -297.46429443359,  ["uid"] = "x4kI8ffEPBi",  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_2.p_format"] = "timed",  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(07) Echo Public - Halondrus - Eternity Engine Stacks 2",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["config"] = {  },  ["yOffset"] = 182.97344970703,  ["anchorPoint"] = "CENTER",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["displayText_format_1.p_format"] = "timed", }, [" (07) Echo Public - Halondrus - DispelWA 2"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["customText"] = "function()\
    local state = aura_env and aura_env.state;\
    if(state.stacks)then\
        if(state.stacks == 1)then\
            return \"FAST\";\
        elseif(state.stacks == 2)then\
            return \"SLOW\";\
        elseif(state.stacks == 3)then\
            return \"EXPIRE\";\
        end\
    end\
end",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 6,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {    ["do_custom"] = true,    ["custom"] = "if(aura_env.state and aura_env.state.hideGlow)then\
    aura_env.state.hideGlow();\
end",   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"ECHOHDISPELL\");\
\
aura_env.LCG = LibStub(\"LibCustomGlow-1.0\");\
aura_env.LGF = LibStub(\"LibGetFrame-1.0\");",   },  },  ["displayText_format_1.p_time_format"] = 0,  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "CENTER",  ["displayText_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["ingroup"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["use_never"] = false,   ["class"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["encounterid"] = "2529",   ["zoneIds"] = "",  },  ["displayText_format_s_format"] = "none",  ["fontSize"] = 18,  ["shadowXOffset"] = 1,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["wordWrap"] = "WordWrap",  ["regionType"] = "text",  ["conditions"] = {  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["auranames"] = {      "368046",      "Eternity Engine",     },     ["remaining_operator"] = "<",     ["remaining"] = "3",     ["spellName"] = 0,     ["stacksOperator"] = ">",     ["custom_type"] = "stateupdate",     ["text"] = "Wild Stampede",     ["event"] = "Cooldown Progress (Spell)",     ["check"] = "event",     ["use_track"] = true,     ["useStacks"] = true,     ["genericShowOn"] = "showOnCooldown",     ["unit"] = "member",     ["stacks"] = "0",     ["specificUnit"] = "boss1",     ["use_genericShowOn"] = true,     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",     ["fetchTooltip"] = true,     ["type"] = "custom",     ["use_remaining"] = true,     ["useName"] = true,     ["spellIds"] = {     },     ["duration"] = "3",     ["use_text"] = true,     ["subeventPrefix"] = "SPELL",     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(spellID == 365297)then\
      if(subEvent == \"SPELL_AURA_APPLIED\")then\
        local frame = aura_env.LGF.GetFrame(destName);\
        aura_env.LCG.AutoCastGlow_Start(\
          frame,\
          {1,0,0,1},\
          26,\
          nil,\
          nil,\
          nil,\
          nil,\
        \"ECHO_HALONDUS_DISPELL\");\
        \
        allstates[destName] = {\
          changed = true,\
          show = true,\
          progressType = \"static\",\
          total = 1,\
          value = 1,\
          unit = destName,\
          raidFrame = frame,\
          hideGlow = function()\
            aura_env.LCG.AutoCastGlow_Stop(frame,\"ECHO_HALONDUS_DISPELL\");\
          end,\
        };\
        \
        return true;\
        \
      elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
        local state = allstates[destName];\
        if(state)then\
          state.changed = true;\
          state.show = false;\
          \
          return true;\
        end\
      end\
    end\
  elseif(event == \"CHAT_MSG_ADDON\")then\
    local prefix, text, channel, sender = ...;\
    if(prefix == \"ECHOHDISPELL\")then\
      local state = allstates[Ambiguate(sender,\"none\")];\
      if(state)then\
        aura_env.LCG.AutoCastGlow_Start(\
          state.raidFrame,\
          {0,1,0,1},\
          26,\
          nil,\
          nil,\
          nil,\
          nil,\
        \"ECHO_HALONDUS_DISPELL\");\
      end\
    end\
  end\
end",     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED CHAT_MSG_ADDON",     ["remOperator"] = "<",     ["subeventSuffix"] = "_CAST_START",     ["names"] = {     },     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_1.tooltip1_format"] = "BigNumber",  ["yOffset"] = 0,  ["uid"] = "z)tpPio9G5s",  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["displayText_format_2.p_format"] = "timed",  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(07) Echo Public - Halondrus - DispelWA 2",  ["xOffset"] = 0,  ["frameStrata"] = 1,  ["anchorFrameType"] = "UNITFRAME",  ["displayText"] = "",  ["config"] = {  },  ["authorOptions"] = {  },  ["displayText_format_1.p_time_precision"] = 1,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["displayText_format_1.p_format"] = "timed", },});
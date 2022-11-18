local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ [" (08) Echo Public - Anduin - Kill outside adds"] = {  ["outline"] = "OUTLINE",  ["displayText_format_2.p_format"] = "timed",  ["displayText"] = "%c1\
%2.p",  ["customText"] = "function()\
    return \"NUKE ADDS\";\
end",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 7,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\phone.ogg",    ["do_sound"] = false,   },   ["init"] = {    ["do_custom"] = false,    ["custom"] = "",   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["custom_hide"] = "timed",     ["customVariables"] = "{\
    remaining = \"number\",   \
}",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["spellIds"] = {     },     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 362405)then\
      \
      local bossEnergy = UnitPower(\"boss1\");\
      \
      local maxGained = bossEnergy <= 50 and 50 or (UnitPowerMax(\"boss1\") - bossEnergy);\
      allstates[\"\"] = \
      {\
        changed = true,\
        show = true,\
        autoHide = true,\
        progressType = \"static\",\
        value = 0,\
        total = maxGained,\
        remaining = maxGained,\
      };\
      \
      return true;\
    end\
  elseif(event == \"UNIT_POWER_UPDATE\")then\
    local unit = ...;\
    if(unit)then\
      local state = allstates[\"\"];\
      if(UnitIsUnit(\"boss1\",unit) and state)then\
        state.changed = true;\
        state.value = state.value + (UnitPower(\"boss1\") - state.value);\
        state.remaining = state.total - state.value;\
        \
        if(state.remaining <= 0)then\
          state.show = false; \
        end\
        \
        return true;\
      end\
    end\
  elseif(event == \"OPTIONS\")then\
    allstates[\"\"] = \
    {\
      changed = true,\
      show = true,\
      autoHide = true,\
      progressType = \"static\",\
      value = 0,\
      total = 50,\
      remaining = 5,\
    };\
    \
    return true;\
    \
  end\
end",     ["events"] = "READY_CHECK ENCOUNTER_START EXRT_NOTE_UPDATE CLEU:SPELL_CAST_SUCCESS UNIT_POWER_UPDATE",     ["check"] = "event",     ["names"] = {     },     ["custom_type"] = "stateupdate",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "aura2",     ["useExactSpellId"] = true,     ["unit"] = "group",     ["group_countOperator"] = ">=",     ["auraspellids"] = {      "362055",     },     ["useMatch_count"] = true,     ["group_count"] = "1",     ["match_count"] = "1",     ["match_countOperator"] = ">=",     ["useGroup_count"] = true,     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "aura2",     ["useExactSpellId"] = true,     ["unit"] = "player",     ["matchesShowOn"] = "showOnMissing",     ["auraspellids"] = {      "362055",     },     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "preset",    ["easeType"] = "none",    ["duration_type"] = "seconds",    ["easeStrength"] = 3,    ["preset"] = "bounce",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["displayText_format_c1SOAK_format"] = "none",  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["load"] = {   ["use_never"] = true,   ["zone"] = "Domination's Grasp",   ["spec"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["use_zone"] = false,   ["zoneIds"] = "2050",   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["size"] = {    ["multi"] = {    },   },  },  ["displayText_format_c1_format"] = "none",  ["fixedWidth"] = 200,  ["selfPoint"] = "CENTER",  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["color"] = {   1,   1,   1,   0,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["justify"] = "CENTER",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Kill outside adds",  ["config"] = {   ["showGlow"] = true,   ["glowColor"] = {    1,    0.51372549019608,    0,    1,   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "showGlow",    ["useDesc"] = false,    ["name"] = "Show Glow",    ["default"] = true,    ["width"] = 1,   },   {    ["type"] = "color",    ["key"] = "glowColor",    ["useDesc"] = false,    ["name"] = "Glow Color",    ["default"] = {     1,     0.51372549019608,     0,     1,    },    ["width"] = 1,   },  },  ["uid"] = "2TCq(Jqyc1f",  ["xOffset"] = 0,  ["yOffset"] = 200,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["op"] = "<=",     ["value"] = "5",     ["variable"] = "remaining",    },    ["changes"] = {     {      ["value"] = {       0.6,       1,       0,       1,      },      ["property"] = "color",     },    },   },   {    ["check"] = {     ["trigger"] = 2,     ["op"] = "<=",     ["value"] = "3",     ["variable"] = "expirationTime",    },    ["changes"] = {     {      ["value"] = {       1,       0.29803921568627,       0,       1,      },      ["property"] = "color",     },    },   },  },  ["information"] = {  },  ["wordWrap"] = "WordWrap", }, [" (08) Echo Public - Anduin - Monstreous Soul Glow"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["color"] = {   1,   1,   1,   1,  },  ["displayText"] = "",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "update",  ["cooldownEdge"] = false,  ["actions"] = {   ["start"] = {    ["glow_color"] = {     0.76078431372549,     0,     0,     0.71999999880791,    },    ["glow_action"] = "show",    ["message_tts_voice"] = 0,    ["do_message"] = true,    ["message_type"] = "TTS",    ["do_glow"] = true,    ["message"] = "Nuke add",    ["glow_type"] = "buttonOverlay",    ["do_sound"] = false,    ["glow_frame_type"] = "NAMEPLATE",    ["use_glow_color"] = true,    ["sound"] = "Interface\\AddOns\\!!!EchoInternal\\assets\\sounds\\VoiceGen\\Zira-Nuke Add.wav",    ["sound_channel"] = "Master",   },   ["finish"] = {    ["hide_all_glows"] = true,   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["npcId"] = "183671",     ["useMatch_count"] = false,     ["spellId"] = 361644,     ["auranames"] = {      "360259",      "Gloom Bolt",     },     ["use_genericShowOn"] = true,     ["group_count"] = "0",     ["custom_hide"] = "timed",     ["showClones"] = false,     ["name_operator"] = "find('%s')",     ["use_absorbHealMode"] = true,     ["custom_type"] = "event",     ["fetchTooltip"] = false,     ["event"] = "Health",     ["use_spellId"] = false,     ["name"] = "Plasma Discharge",     ["percenthealth"] = "40",     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["group_countOperator"] = ">",     ["useExactSpellId"] = true,     ["spellName"] = 0,     ["useGroup_count"] = false,     ["duration"] = "3",     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["subeventPrefix"] = "SPELL",     ["spellIds"] = {      283573,     },     ["use_tooltip"] = false,     ["ignoreSelf"] = false,     ["names"] = {      "Sacred Blade",     },     ["realSpellName"] = 0,     ["use_unit"] = true,     ["rem"] = "3",     ["debuffType"] = "HARMFUL",     ["matchesShowOn"] = "showOnActive",     ["type"] = "unit",     ["subeventSuffix"] = "_CAST_START",     ["unevent"] = "auto",     ["auraspellids"] = {      "365293",     },     ["useName"] = false,     ["buffShowOn"] = "showOnActive",     ["unit"] = "nameplate",     ["use_npcId"] = true,     ["use_spellName"] = true,     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["use_debuffClass"] = false,     ["remOperator"] = "<",     ["use_percenthealth"] = true,     ["percenthealth_operator"] = "<=",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["disjunctive"] = "all",   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["wordWrap"] = "WordWrap",  ["desaturate"] = false,  ["font"] = "Friz Quadrata TT",  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 55,  ["icon"] = true,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["encounterid"] = "2546",   ["talent2"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "HEALER",    ["multi"] = {     ["HEALER"] = true,     ["TANK"] = true,    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["conditions"] = {   {    ["check"] = {    },    ["changes"] = {     {     },    },   },  },  ["fontSize"] = 12,  ["url"] = "",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowXOffset"] = 1,  ["fixedWidth"] = 200,  ["uid"] = "WBm6HW7jczs",  ["stickyDuration"] = false,  ["regionType"] = "text",  ["width"] = 55,  ["frameStrata"] = 1,  ["automaticWidth"] = "Auto",  ["semver"] = "1.0.4",  ["authorOptions"] = {  },  ["displayText_format_p_time_precision"] = 1,  ["justify"] = "LEFT",  ["cooldownTextDisabled"] = false,  ["zoom"] = 0,  ["auto"] = true,  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Monstreous Soul Glow",  ["xOffset"] = 0,  ["alpha"] = 1,  ["anchorFrameType"] = "SCREEN",  ["selfPoint"] = "CENTER",  ["config"] = {  },  ["inverse"] = false,  ["yOffset"] = 0,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["displayIcon"] = 3528301,  ["cooldown"] = false,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["(08) Echo Public - SOFO - Anduin"] = {  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["borderBackdrop"] = "Blizzard Tooltip",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["scale"] = 1,  ["information"] = {  },  ["border"] = false,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 7,  ["authorOptions"] = {  },  ["borderColor"] = {   0,   0,   0,   1,  },  ["uid"] = "3QpvfAH(ovD",  ["yOffset"] = 0,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["subeventPrefix"] = "SPELL",     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["names"] = {     },     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["xOffset"] = 0,  ["internalVersion"] = 50,  ["config"] = {  },  ["selfPoint"] = "CENTER",  ["id"] = "(08) Echo Public - SOFO - Anduin",  ["borderOffset"] = 4,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["tocversion"] = 90200,  ["borderInset"] = 1,  ["borderSize"] = 2,  ["subRegions"] = {  },  ["regionType"] = "group",  ["conditions"] = {  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },  },  ["borderEdge"] = "Square Full White", }, [" (08) Echo Public - Anduin - Num People in Barrier"] = {  ["iconSource"] = -1,  ["xOffset"] = 0,  ["customText"] = "function()\
  if WeakAuras.IsOptionsOpen() then\
    return AbbreviateNumbers(227500)\
  end\
  \
  return AbbreviateNumbers(aura_env.remainingAbsorb or 0)\
end",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 12,  ["cooldownSwipe"] = true,  ["customTextUpdate"] = "event",  ["cooldownEdge"] = false,  ["icon"] = true,  ["triggers"] = {   {    ["trigger"] = {     ["useMatch_count"] = false,     ["spellId"] = 361644,     ["auranames"] = {      "360259",      "Gloom Bolt",     },     ["use_genericShowOn"] = true,     ["group_count"] = "0",     ["group_countOperator"] = ">",     ["showClones"] = false,     ["name_operator"] = "find('%s')",     ["use_debuffClass"] = false,     ["useExactSpellId"] = true,     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["use_spellId"] = true,     ["name"] = "Plasma Discharge",     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["useGroup_count"] = true,     ["custom_type"] = "event",     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["subeventPrefix"] = "SPELL",     ["use_absorbHealMode"] = true,     ["use_tooltip"] = false,     ["ignoreSelf"] = false,     ["use_unit"] = true,     ["names"] = {      "Sacred Blade",     },     ["duration"] = "3",     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["debuffType"] = "HARMFUL",     ["buffShowOn"] = "showOnActive",     ["type"] = "aura2",     ["unit"] = "group",     ["auraspellids"] = {      "365293",     },     ["unevent"] = "auto",     ["useName"] = false,     ["subeventSuffix"] = "_CAST_START",     ["matchesShowOn"] = "showOnActive",     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["spellIds"] = {      283573,     },     ["rem"] = "3",     ["remOperator"] = "<",     ["custom_hide"] = "timed",     ["spellName"] = 0,     ["useRem"] = false,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "combatlog",     ["use_absorbHealMode"] = true,     ["subeventSuffix"] = "_CAST_SUCCESS",     ["use_absorbMode"] = true,     ["event"] = "Combat Log",     ["use_unit"] = true,     ["spellId"] = "365295",     ["use_spellId"] = true,     ["duration"] = "30",     ["use_sourceUnit"] = false,     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["sourceUnit"] = "player",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "event",     ["unit"] = "player",     ["customName"] = "function()\
  return GetTime()\
end",     ["custom"] = "function(event, ...)\
  local _, subEvent, _, _, _, _, _, _, _, _, _, spellId = ...\
  if subEvent == \"SPELL_AURA_APPLIED\" and spellId == 365293 then\
    -- Get max absorb when aura applied\
    aura_env.lastSet = aura_env.lastSet or 0\
    \
    if not aura_env.remainingAbsorb and (aura_env.lastSet + 30) < GetTime() then\
      aura_env.remainingAbsorb = select(16, ...)\
      aura_env.lastSet = GetTime()\
    end\
  elseif subEvent == \"SPELL_HEAL_ABSORBED\" and spellId == 365293 then\
    -- Subtract every heal absorbed\
    local _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, absorbed = ...\
    if aura_env.remainingAbsorb then\
      aura_env.remainingAbsorb = aura_env.remainingAbsorb - absorbed\
      \
      if aura_env.remainingAbsorb <= 0 then\
        aura_env.remainingAbsorb = nil\
      end\
      \
      return true;\
    end\
  end\
  \
  return false\
end",     ["custom_hide"] = "timed",     ["check"] = "event",     ["debuffType"] = "HELPFUL",     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_HEAL_ABSORBED",     ["customVariables"] = "{\
  value = true,\
  total = true,\
  percent = {\
    display = \"Progress Percent\",\
    type = \"number\"\
  }\
}",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "custom",   ["customTriggerLogic"] = "function(t)\
  return t[1];\
end",   ["activeTriggerMode"] = -10,  },  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["stickyDuration"] = false,  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "%1.matchCount",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "CENTER",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["text_text_format_1.ttoltip1_format"] = "none",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_1.tooltip2_format"] = "BigNumber",    ["type"] = "subtext",    ["text_text_format_tooltip1_format"] = "none",    ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",    ["text_text_format_tooltip2_format"] = "none",    ["text_color"] = {     0.94901960784314,     0.2078431372549,     0.17647058823529,     1,    },    ["text_font"] = "Expressway",    ["text_anchorYOffset"] = 0,    ["text_shadowYOffset"] = 0,    ["text_visible"] = true,    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_1.tooltip1_format"] = "none",    ["text_text_format_1.matchCount_format"] = "none",    ["text_fontSize"] = 37,    ["text_text_format_1.tooltip3_format"] = "none",    ["anchorXOffset"] = 0,   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "%2.p",    ["text_text_format_2.p_time_format"] = 0,    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_fixedWidth"] = 64,    ["rotateText"] = "NONE",    ["text_text_format_tooltip1_format"] = "none",    ["text_color"] = {     1,     1,     1,     1,    },    ["text_shadowYOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = true,    ["text_fontSize"] = 20,    ["text_text_format_1.ttoltip1_format"] = "none",    ["text_selfPoint"] = "BOTTOM",    ["text_automaticWidth"] = "Auto",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["text_text_format_2.p_time_precision"] = 1,    ["text_text_format_2.p_format"] = "timed",    ["type"] = "subtext",    ["text_font"] = "Expressway",    ["text_text_format_1.tooltip3_format"] = "none",    ["text_anchorYOffset"] = 0,    ["text_text_format_2.p_time_dynamic_threshold"] = 60,    ["text_text_format_1.tooltip1_format"] = "none",    ["text_text_format_1.tooltip2_format"] = "BigNumber",    ["text_anchorPoint"] = "TOP",    ["anchorXOffset"] = 0,    ["text_text_format_1.matchCount_format"] = "none",    ["text_fontType"] = "OUTLINE",    ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",    ["text_text_format_tooltip2_format"] = "none",   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text_format_3.absolute_format"] = "BigNumber",    ["text_text_format_3.p_time_format"] = 0,    ["text_text_format_3.name_format"] = "none",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_fixedWidth"] = 64,    ["rotateText"] = "NONE",    ["text_text_format_3.absolute_big_number_format"] = "AbbreviateNumbers",    ["text_text_format_3.p_big_number_format"] = "AbbreviateNumbers",    ["text_text_format_tooltip1_format"] = "none",    ["text_color"] = {     1,     1,     1,     1,    },    ["text_shadowYOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = true,    ["text_fontSize"] = 20,    ["text_text_format_1.ttoltip1_format"] = "none",    ["text_text_format_3.value_format"] = "none",    ["text_text_format_1.tooltip1_format"] = "none",    ["text_text_format_1.tooltip2_format"] = "BigNumber",    ["text_selfPoint"] = "TOP",    ["text_automaticWidth"] = "Auto",    ["text_text_format_1.tooltip3_format"] = "none",    ["text_text_format_3.percent_format"] = "none",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["text_text_format_2.p_time_precision"] = 1,    ["text_text_format_3.p_time_precision"] = 1,    ["text_text_format_2.p_format"] = "timed",    ["text_anchorPoint"] = "BOTTOM",    ["type"] = "subtext",    ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",    ["text_fontType"] = "OUTLINE",    ["text_text_format_3.p_decimal_precision"] = 1,    ["text_text_format_3.p_time_dynamic_threshold"] = 60,    ["text_anchorYOffset"] = 0,    ["text_text_format_2.p_time_dynamic_threshold"] = 60,    ["text_font"] = "Expressway",    ["text_text"] = "%c",    ["text_text_format_3.p_format"] = "BigNumber",    ["text_text_format_2.p_time_format"] = 0,    ["text_text_format_1.matchCount_format"] = "none",    ["text_text_format_tooltip2_format"] = "none",    ["text_text_format_3.p_round_type"] = "floor",    ["anchorXOffset"] = 0,   },  },  ["height"] = 55,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_never"] = true,   ["encounterid"] = "2546",   ["use_encounterid"] = true,   ["race"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["use_role"] = true,   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["class"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "HEALER",    ["multi"] = {     ["TANK"] = true,    },   },   ["faction"] = {    ["multi"] = {    },   },  },  ["regionType"] = "icon",  ["selfPoint"] = "CENTER",  ["cooldown"] = false,  ["displayIcon"] = 3528301,  ["url"] = "",  ["authorOptions"] = {  },  ["cooldownTextDisabled"] = false,  ["config"] = {  },  ["semver"] = "1.0.4",  ["zoom"] = 0,  ["auto"] = true,  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Num People in Barrier",  ["anchorFrameType"] = "SCREEN",  ["alpha"] = 1,  ["width"] = 55,  ["frameStrata"] = 1,  ["uid"] = "LK6)xnR0AyK",  ["inverse"] = false,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {    ["do_custom"] = false,    ["custom"] = "aura_env.remainingAbsorb = nil",   },  },  ["color"] = {   1,   1,   1,   1,  },  ["conditions"] = {   {    ["check"] = {    },    ["changes"] = {     {     },    },   },  },  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["desaturate"] = false, }, ["(08) Echo Public - Anduin - ReleaseSpirit"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["debuffType"] = "HELPFUL",     ["unit"] = "player",     ["events"] = "ENCOUNTER_END",     ["names"] = {     },     ["custom_type"] = "event",     ["spellIds"] = {     },     ["custom"] = "function(event,...)\
  if(...)then\
    C_Timer.After(2,RepopMe); \
  end\
end",     ["custom_hide"] = "timed",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,  },  ["fontSize"] = 12,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["yOffset"] = 0,  ["conditions"] = {  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - ReleaseSpirit",  ["displayText"] = "%p",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = 0,  ["config"] = {  },  ["uid"] = "bnEgxbgYwMk",  ["authorOptions"] = {  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, [" (08) Echo Public - Anduin - Shackle Reminder"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 0.1,    ["width"] = 1,    ["min"] = 0.1,    ["name"] = "Cast Duration",    ["default"] = 3.8,    ["key"] = "castDuration",    ["desc"] = "Time on which the MD reminder will popup, after the notification that the player will go in.",   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 0.1,    ["width"] = 1,    ["min"] = 0.1,    ["name"] = "Warn on remaining time",    ["desc"] = "Remaining cast duration to show the reminder.",    ["key"] = "warnOnTimeRemaining",    ["default"] = 1,   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 30,    ["step"] = 1,    ["width"] = 2,    ["min"] = 1,    ["name"] = "Display Duration",    ["key"] = "displayDuration",    ["default"] = 3,    ["desc"] = "Duration the reminder get shown.",   },  },  ["displayText"] = "Shackle",  ["yOffset"] = 200,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RobotBlip.ogg",    ["do_sound"] = true,   },   ["finish"] = {   },   ["init"] = {   },  },  ["displayText_format_1.p_time_format"] = 0,  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["displayText_format_1.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["use_encounterid"] = true,   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["size"] = {    ["multi"] = {    },   },   ["use_namerealm"] = true,   ["talent2"] = {    ["multi"] = {    },   },   ["class_and_spec"] = {    ["multi"] = {     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,    },   },   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["namerealm"] = "Rycntwo",   ["class"] = {    ["single"] = "PRIEST",    ["multi"] = {     ["PRIEST"] = true,    },   },   ["zoneIds"] = "",  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["regionType"] = "text",  ["color"] = {   1,   1,   1,   1,  },  ["conditions"] = {  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = "362055",     ["auranames"] = {      "334228",     },     ["duration"] = "3",     ["unit"] = "player",     ["destUnit"] = "player",     ["remaining"] = "3",     ["subeventPrefix"] = "SPELL",     ["useName"] = true,     ["text_operator"] = "find('%s')",     ["debuffType"] = "HARMFUL",     ["names"] = {     },     ["use_remaining"] = true,     ["remOperator"] = "<",     ["custom_type"] = "stateupdate",     ["subeventSuffix"] = "_AURA_APPLIED",     ["text"] = "Fear Adds",     ["event"] = "BigWigs Timer",     ["events"] = "ECHO_ANDUIN_KINGSMORNE, ECHO_ANDUIN_KINGSMORNE_MD",     ["type"] = "addons",     ["use_spellId"] = false,     ["spellIds"] = {     },     ["use_text"] = true,     ["check"] = "event",     ["use_destUnit"] = true,     ["remaining_operator"] = "<",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_2.p_format"] = "timed",  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["config"] = {   ["castDuration"] = 3.8,   ["displayDuration"] = 3,   ["warnOnTimeRemaining"] = 1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Shackle Reminder",  ["selfPoint"] = "CENTER",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = 0,  ["uid"] = "BJGiYCaywC(",  ["displayText_format_2.p_time_precision"] = 1,  ["shadowYOffset"] = -1,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["displayText_format_1.p_format"] = "timed", }, [" (08) Echo Public - Anduin - Preexit Warrning"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "OUT EARLY\
MONKAS",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 5,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["spellIds"] = {     },     ["events"] = "ENCOUNTER_START CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_CAST_SUCCESS",     ["names"] = {     },     ["check"] = "event",     ["custom_type"] = "stateupdate",     ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        local offsets = {\
            28,\
            22,\
        };\
        \
        if(subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 362405)then\
            aura_env.count = aura_env.count + 1;\
            aura_env.offset = offsets[aura_env.count];\
            \
        elseif(spellID == 362055 and UnitIsUnit(destName,\"player\") and aura_env.offset)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                aura_env.startTime = GetTime();\
            else\
                if(GetTime() - aura_env.startTime < aura_env.offset)then\
                    elog(\"Out early\",GetTime() - aura_env.startTime,aura_env.offset);\
                    allstates[\"\"] = {\
                        show = true,\
                        changed = true,\
                        progressType = \"timed\",\
                        duration = 3,\
                        expirationTime = GetTime() + 3,\
                        autoHide = true;\
                    }; \
                    \
                    return true;\
                end\
            end\
        end\
    elseif(event == \"ENCOUNTER_START\")then\
        aura_env.count = 0;\
    end\
end",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["difficulty"] = {    ["single"] = "mythic",   },   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["use_difficulty"] = true,   ["use_encounterid"] = true,  },  ["fontSize"] = 54,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["yOffset"] = 200,  ["conditions"] = {  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["justify"] = "CENTER",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Preexit Warrning",  ["authorOptions"] = {  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   0.36078431372549,   0.36078431372549,   1,  },  ["uid"] = "wWX5cPEGcPs",  ["config"] = {  },  ["wordWrap"] = "WordWrap",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, [" (08) Echo Public - Anduin - Wicked Star Targeted (Sound)"] = {  ["outline"] = "OUTLINE",  ["displayText_format_2.p_format"] = "timed",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["yOffset"] = 375.00006103516,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 4,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",    ["do_sound"] = true,   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = "362055",     ["auranames"] = {      "334228",     },     ["duration"] = "3",     ["unit"] = "player",     ["destUnit"] = "player",     ["remaining"] = "3",     ["subeventPrefix"] = "SPELL",     ["names"] = {     },     ["subeventSuffix"] = "_AURA_APPLIED",     ["check"] = "event",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HARMFUL",     ["type"] = "aura2",     ["useName"] = false,     ["spellIds"] = {     },     ["useExactSpellId"] = true,     ["use_text"] = true,     ["text"] = "Traps",     ["event"] = "Combat Log",     ["auraspellids"] = {      "365021",     },     ["use_remaining"] = true,     ["use_spellId"] = true,     ["events"] = "ECHO_ANDUIN_KINGSMORNE, ECHO_ANDUIN_KINGSMORNE_MD",     ["custom_type"] = "stateupdate",     ["remOperator"] = "<",     ["use_destUnit"] = true,     ["remaining_operator"] = "<",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["displayText_format_1.p_time_precision"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["use_encounterid"] = true,   ["race"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },   ["use_namerealm"] = true,   ["talent2"] = {    ["multi"] = {    },   },   ["class_and_spec"] = {    ["multi"] = {     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,    },   },   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["class"] = {    ["single"] = "PRIEST",    ["multi"] = {     ["PRIEST"] = true,    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["namerealm"] = "Jeathpink",   ["use_zoneIds"] = false,   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["faction"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["regionType"] = "text",  ["displayText_format_1.p_time_format"] = 0,  ["fixedWidth"] = 200,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["authorOptions"] = {   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 0.1,    ["width"] = 1,    ["min"] = 0.1,    ["name"] = "Cast Duration",    ["desc"] = "Time on which the MD reminder will popup, after the notification that the player will go in.",    ["key"] = "castDuration",    ["default"] = 3.8,   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 0.1,    ["width"] = 1,    ["min"] = 0.1,    ["name"] = "Warn on remaining time",    ["default"] = 1,    ["key"] = "warnOnTimeRemaining",    ["desc"] = "Remaining cast duration to show the reminder.",   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 30,    ["step"] = 1,    ["width"] = 2,    ["min"] = 1,    ["name"] = "Display Duration",    ["desc"] = "Duration the reminder get shown.",    ["default"] = 3,    ["key"] = "displayDuration",   },  },  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["uid"] = "zEOJJTT9NYe",  ["color"] = {   1,   1,   1,   0.28935748338699,  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Wicked Star Targeted (Sound)",  ["selfPoint"] = "CENTER",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = -713.99993896484,  ["config"] = {   ["castDuration"] = 3.8,   ["displayDuration"] = 3,   ["warnOnTimeRemaining"] = 1,  },  ["displayText_format_2.p_time_precision"] = 1,  ["displayText"] = "",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, [" (08) Echo Public - Anduin - Num People in Barrier (Healer Only)"] = {  ["sparkWidth"] = 10,  ["iconSource"] = -1,  ["user_x"] = 0,  ["xOffset"] = 0,  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 9,  ["sparkRotation"] = 0,  ["sameTexture"] = true,  ["url"] = "",  ["icon"] = true,  ["icon_color"] = {   1,   1,   1,   1,  },  ["keepAspectRatio"] = false,  ["selfPoint"] = "CENTER",  ["barColor"] = {   0.31372549019608,   0,   0.65882352941176,   1,  },  ["desaturate"] = false,  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["sparkOffsetY"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["use_encounterid"] = true,   ["role"] = {    ["single"] = "HEALER",    ["multi"] = {     ["HEALER"] = true,     ["TANK"] = true,    },   },   ["zoneIds"] = "",   ["use_namerealm"] = false,   ["talent2"] = {    ["multi"] = {    },   },   ["namerealm"] = "Gingì,Rogerbrownie",   ["talent"] = {    ["multi"] = {    },   },   ["use_role"] = true,   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["race"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["useAdjustededMin"] = false,  ["regionType"] = "aurabar",  ["blendMode"] = "BLEND",  ["slantMode"] = "INSIDE",  ["texture"] = "Blizzard",  ["zoom"] = 0,  ["auto"] = true,  ["tocversion"] = 90200,  ["alpha"] = 1,  ["config"] = {  },  ["displayIcon"] = 3528301,  ["backgroundOffset"] = 2,  ["sparkOffsetX"] = 0,  ["color"] = {   1,   1,   1,   1,  },  ["customText"] = "function()\
  if WeakAuras.IsOptionsOpen() then\
    return AbbreviateNumbers(227500)\
  end\
  \
  return AbbreviateNumbers(aura_env.remainingAbsorb or 0)\
end",  ["desaturateBackground"] = false,  ["cooldownSwipe"] = true,  ["customTextUpdate"] = "update",  ["cooldownEdge"] = false,  ["desaturateForeground"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["customVariables"] = "{\
  peopleInside = \"number\",\
  remainingAbsorb = \"number\"\
}",     ["subeventSuffix"] = "_CAST_START",     ["custom_type"] = "stateupdate",     ["names"] = {     },     ["event"] = "Health",     ["unit"] = "player",     ["spellIds"] = {     },     ["customName"] = "function()\
  return GetTime()\
end",     ["custom"] = "-- events CLEU:SPELL_CAST_SUCCESS:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_HEAL_ABSORBED\
function(allstates, event, ...)\
  local _, subEvent, _, _, _, _, _, _, _, _, _, spellId = ...\
  if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and subEvent and spellId then\
    if subEvent == \"SPELL_CAST_SUCCESS\" and spellId == 365295 then\
      -- Befouled barrier casted\
      allstates[\":\"] = {\
        show = true,\
        changed = true,\
        progressType = \"timed\",\
        duration = 30,\
        expirationTime = GetTime() + 30,\
        autoHide = true,\
        peopleInside = 0,\
      }\
      \
      return true\
    elseif subEvent == \"SPELL_AURA_APPLIED\" and spellId == 365293 and allstates[\":\"] then\
      -- Someone entered the barrier\
      local state = allstates[\":\"]\
      state.changed = true\
      state.peopleInside = state.peopleInside + 1\
      \
      if not state.remainingAbsorb then\
        state.remainingAbsorb = select(16, ...)\
      end\
      \
      return true\
    elseif subEvent == \"SPELL_AURA_REMOVED\" and spellId == 365293 and allstates[\":\"] then\
      -- Someone left the barrier\
      local state = allstates[\":\"]\
      state.changed = true\
      state.peopleInside = math.max(state.peopleInside - 1, 0)\
      \
      return true\
    elseif subEvent == \"SPELL_HEAL_ABSORBED\" and spellId == 365293 then\
      local state = allstates[\":\"]\
      if state and state.remainingAbsorb then\
        local _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, absorbed = ...\
        state.changed = true\
        state.remainingAbsorb = math.max(state.remainingAbsorb - absorbed, 0)\
        state.show = (state.remainingAbsorb > 0)\
        \
        return true\
      end\
    end\
  elseif event == \"OPTIONS\" then\
    allstates[\"options\"] = {\
      show = true,\
      changed = true,\
      progressType = \"timed\",\
      duration = 30,\
      expirationTime = GetTime() + 30,\
      autoHide = true,\
      peopleInside = 17,\
      remainingAbsorb = 227328,\
    }\
    \
    return true\
  end\
end",     ["subeventPrefix"] = "SPELL",     ["check"] = "event",     ["events"] = "CLEU:SPELL_CAST_SUCCESS:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_HEAL_ABSORBED",     ["debuffType"] = "HELPFUL",     ["custom_hide"] = "timed",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["customTriggerLogic"] = "function(t)\
    return t[1];\
end",   ["activeTriggerMode"] = -10,  },  ["endAngle"] = 360,  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["stickyDuration"] = false,  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["type"] = "subforeground",   },   {    ["border_offset"] = 0,    ["border_anchor"] = "bar",    ["border_size"] = 1,    ["border_color"] = {     0,     0,     0,     1,    },    ["border_visible"] = true,    ["border_edge"] = "Square Full White",    ["type"] = "subborder",   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "%peopleInside",    ["text_text_format_1.tooltip3_format"] = "none",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["anchorXOffset"] = 0,    ["text_selfPoint"] = "CENTER",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["text_text_format_remainingAbsorb_format"] = "none",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["type"] = "subtext",    ["text_text_format_peopleInside_format"] = "none",    ["text_shadowYOffset"] = 0,    ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",    ["text_text_format_tooltip2_format"] = "none",    ["text_color"] = {     0.94901960784314,     0.2078431372549,     0.17647058823529,     1,    },    ["text_font"] = "Expressway",    ["text_fontType"] = "OUTLINE",    ["text_anchorYOffset"] = 0,    ["text_text_format_1.tooltip1_format"] = "none",    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = true,    ["text_anchorPoint"] = "CENTER",    ["text_text_format_tooltip1_format"] = "none",    ["text_text_format_1.matchCount_format"] = "none",    ["text_fontSize"] = 26,    ["text_text_format_1.ttoltip1_format"] = "none",    ["text_text_format_1.tooltip2_format"] = "BigNumber",   },   {    ["text_text_format_p_time_format"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "%p",    ["text_text_format_2.p_time_format"] = 0,    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_fixedWidth"] = 64,    ["rotateText"] = "NONE",    ["text_text_format_tooltip1_format"] = "none",    ["text_color"] = {     1,     1,     1,     1,    },    ["text_shadowYOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = true,    ["text_fontSize"] = 20,    ["text_text_format_1.ttoltip1_format"] = "none",    ["text_text_format_p_format"] = "timed",    ["text_selfPoint"] = "RIGHT",    ["text_automaticWidth"] = "Auto",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["text_text_format_2.p_time_precision"] = 1,    ["text_text_format_2.p_format"] = "timed",    ["anchorXOffset"] = 0,    ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",    ["text_text_format_1.tooltip2_format"] = "BigNumber",    ["text_text_format_tooltip2_format"] = "none",    ["text_font"] = "Expressway",    ["text_shadowXOffset"] = 0,    ["text_anchorYOffset"] = 0,    ["text_text_format_2.p_time_dynamic_threshold"] = 60,    ["text_text_format_1.tooltip1_format"] = "none",    ["text_text_format_p_time_precision"] = 1,    ["text_anchorPoint"] = "RIGHT",    ["type"] = "subtext",    ["text_text_format_1.matchCount_format"] = "none",    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_fontType"] = "OUTLINE",    ["text_text_format_1.tooltip3_format"] = "none",   },   {    ["text_text_format_p_time_precision"] = 1,    ["text_text_format_remainingAbsorb_format"] = "BigNumber",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "LEFT",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_p_format"] = "timed",    ["type"] = "subtext",    ["anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Expressway",    ["text_shadowXOffset"] = 0,    ["text_shadowYOffset"] = 0,    ["text_visible"] = true,    ["text_text_format_remainingAbsorb_big_number_format"] = "AbbreviateNumbers",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "LEFT",    ["text_text_format_p_time_format"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_fontSize"] = 20,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text"] = "%remainingAbsorb",   },  },  ["height"] = 24,  ["sparkBlendMode"] = "ADD",  ["useAdjustededMax"] = false,  ["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["crop_x"] = 0.41,  ["sparkRotationMode"] = "AUTO",  ["sparkColor"] = {   1,   1,   1,   1,  },  ["mirror"] = false,  ["uid"] = "gT2hFG0VP)R",  ["crop_y"] = 0.41,  ["actions"] = {   ["start"] = {   },   ["finish"] = {    ["do_custom"] = true,    ["custom"] = "aura_env.remainingAbsorb = nil",   },   ["init"] = {   },  },  ["width"] = 240,  ["icon_side"] = "LEFT",  ["authorOptions"] = {  },  ["user_y"] = 0,  ["sparkHeight"] = 30,  ["sparkHidden"] = "NEVER",  ["startAngle"] = 0,  ["backgroundColor"] = {   0.5,   0.5,   0.5,   0.5,  },  ["semver"] = "1.0.4",  ["compress"] = false,  ["id"] = "(08) Echo Public - Anduin - Num People in Barrier (Healer Only)",  ["cooldownTextDisabled"] = false,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["fontSize"] = 12,  ["foregroundColor"] = {   1,   1,   1,   1,  },  ["inverse"] = false,  ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",  ["orientation"] = "HORIZONTAL",  ["conditions"] = {  },  ["cooldown"] = false,  ["spark"] = false, }, [" (08) Echo Public - Anduin - Kingsmore assignment"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText"] = "%c1",  ["customText"] = "function()\
    return \"GO IN!!!\";\
end",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 5,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\phone.ogg",    ["do_sound"] = true,   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "local aura_env = aura_env;\
aura_env.updateIndexTarget = 0;\
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
  local noteText = VExRT and VExRT.Note.Text1\
  if not noteText then\
    aura_env.printError(\"Exosus note not found\")\
    return \
  end\
  \
  local keyword = \"#king\"\
  \
  local lines = {strsplit(\"\\n\",noteText)}\
  for lineNo, line in ipairs(lines) do\
    if line:sub(1, keyword:len()) == keyword then\
      local group = {}\
      local data = line:sub(keyword:len()+2)\
      for guy in string.gmatch(data, \"|c%x%x%x%x%x%x%x%x([A-Za-z]*)[,]?[ ]?\") do\
        table.insert(group, guy)\
      end\
      \
      table.insert(aura_env.rotation, group)\
    end\
  end\
  \
  aura_env.initialized = true;\
end\
\
aura_env.TryReadNote();",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "stateupdate",     ["custom_hide"] = "timed",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["subeventSuffix"] = "_CAST_START",     ["events"] = "READY_CHECK ENCOUNTER_START EXRT_NOTE_UPDATE CLEU:SPELL_CAST_START",     ["names"] = {     },     ["check"] = "event",     ["spellIds"] = {     },     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_CAST_START\" and spellID == 362405)then\
      \
      aura_env.count = aura_env.count + 1;\
      \
      local duration = 3.8;\
      for _,guy in ipairs(aura_env.rotation[aura_env.count])do\
        if(UnitIsUnit(\"player\",guy))then\
          allstates[\"\"] = \
          {\
            changed = true,\
            show = true,\
            autoHide = true,\
            progressType = \"timed\",\
            duration = duration,\
            expirationTime = GetTime() + duration,\
          };\
        end\
        WeakAuras.ScanEvents(\"ECHO_ANDUIN_KINGSMORNE\",guy);\
      end\
      \
      return allstates[\"\"] ~= nil;\
    end\
  elseif((event == \"ENCOUNTER_START\" or event == \"READY_CHECK\") and ...)then\
    aura_env.count = 0;\
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
end",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_c1SOAK_format"] = "none",  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["load"] = {   ["use_zoneIds"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["use_encounterid"] = false,   ["use_zone"] = false,   ["zoneIds"] = "2050",   ["zone"] = "Domination's Grasp",   ["class"] = {    ["multi"] = {    },   },   ["encounterid"] = "2429",   ["size"] = {    ["multi"] = {    },   },  },  ["selfPoint"] = "CENTER",  ["displayText_format_p_time_precision"] = 1,  ["conditions"] = {  },  ["yOffset"] = 200,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["useDesc"] = false,    ["key"] = "showGlow",    ["default"] = true,    ["name"] = "Show Glow",    ["width"] = 1,   },   {    ["type"] = "color",    ["useDesc"] = false,    ["key"] = "glowColor",    ["default"] = {     1,     0.51372549019608,     0,     1,    },    ["name"] = "Glow Color",    ["width"] = 1,   },  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Kingsmore assignment",  ["xOffset"] = 0,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["uid"] = "SPAF67dIVYZ",  ["config"] = {   ["showGlow"] = true,   ["glowColor"] = {    1,    0.51372549019608,    0,    1,   },  },  ["displayText_format_c1_format"] = "none",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "preset",    ["easeType"] = "none",    ["duration_type"] = "seconds",    ["preset"] = "bounce",    ["easeStrength"] = 3,   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, [" (08) Echo Public - Anduin - Prepull Soothe"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "SOOTHE PLZ <3",  ["yOffset"] = 200,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "addons",     ["event"] = "BigWigs Timer",     ["subeventSuffix"] = "_CAST_START",     ["useName"] = false,     ["text"] = "Pull",     ["use_text"] = true,     ["unit"] = "target",     ["useExactSpellId"] = true,     ["auraspellids"] = {      "350857",     },     ["spellIds"] = {     },     ["use_remaining"] = false,     ["names"] = {     },     ["subeventPrefix"] = "SPELL",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "aura2",     ["auraspellids"] = {      "453",     },     ["matchesShowOn"] = "showOnMatches",     ["unit"] = "target",     ["unitExists"] = false,     ["match_count"] = "0",     ["useExactSpellId"] = true,     ["match_countOperator"] = "==",     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["npcId"] = "181954",     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["use_absorbMode"] = true,     ["event"] = "Unit Characteristics",     ["unit"] = "target",     ["use_npcId"] = true,     ["use_unit"] = true,     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_namerealm"] = false,   ["use_zoneIds"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["single"] = "PRIEST",    ["multi"] = {    },   },   ["use_encounterid"] = false,   ["use_class"] = true,   ["role"] = {    ["single"] = "DAMAGER",    ["multi"] = {     ["DAMAGER"] = true,     ["TANK"] = true,    },   },   ["zoneIds"] = "g427",   ["class_and_spec"] = {   },   ["namerealm"] = "Rycntwo",   ["encounterid"] = "2435",   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["selfPoint"] = "CENTER",  ["shadowYOffset"] = -1,  ["conditions"] = {  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Prepull Soothe",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["config"] = {  },  ["authorOptions"] = {  },  ["uid"] = "9APvEGR5tOp",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "preset",    ["easeType"] = "none",    ["duration_type"] = "seconds",    ["easeStrength"] = 3,    ["preset"] = "bounce",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, [" (08) Echo Public - Anduin - Mass Dispel Reminder"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 0.1,    ["width"] = 1,    ["min"] = 0.1,    ["name"] = "Cast Duration",    ["desc"] = "Time on which the MD reminder will popup, after the notification that the player will go in.",    ["key"] = "castDuration",    ["default"] = 3.8,   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 5,    ["step"] = 0.1,    ["width"] = 1,    ["min"] = 0.1,    ["name"] = "Warn on remaining time",    ["default"] = 1,    ["key"] = "warnOnTimeRemaining",    ["desc"] = "Remaining cast duration to show the reminder.",   },   {    ["type"] = "range",    ["useDesc"] = true,    ["max"] = 30,    ["step"] = 1,    ["width"] = 2,    ["min"] = 1,    ["name"] = "Display Duration",    ["desc"] = "Duration the reminder get shown.",    ["default"] = 3,    ["key"] = "displayDuration",   },  },  ["displayText"] = "Mass Dispel",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RobotBlip.ogg",    ["do_sound"] = true,   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = "362055",     ["auranames"] = {      "334228",     },     ["remaining_operator"] = "<",     ["names"] = {     },     ["destUnit"] = "player",     ["remaining"] = "3",     ["subeventPrefix"] = "SPELL",     ["useName"] = true,     ["custom_type"] = "stateupdate",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HARMFUL",     ["check"] = "event",     ["use_remaining"] = true,     ["event"] = "Combat Log",     ["subeventSuffix"] = "_AURA_APPLIED",     ["custom"] = "function(allstates, event, guy)\
  if event == \"ECHO_ANDUIN_KINGSMORNE\" and guy and UnitIsUnit(guy, \"player\") then\
    local delay = math.max(aura_env.config.castDuration - aura_env.config.warnOnTimeRemaining, 0)\
    \
    if delay > 0 then\
      C_Timer.After(delay, function()\
          WeakAuras.ScanEvents(\"ECHO_ANDUIN_KINGSMORNE_MD\", guy)\
      end)\
    else\
      WeakAuras.ScanEvents(\"ECHO_ANDUIN_KINGSMORNE_MD\", guy)\
    end\
  elseif event == \"ECHO_ANDUIN_KINGSMORNE_MD\" and guy and UnitIsUnit(guy, \"player\") then\
    allstates[\":\"] = {\
      show = true,\
      changed = true,\
      name = guy,\
      progressType = \"timed\",\
      duration = aura_env.config.displayDuration,\
      expirationTime = GetTime() + aura_env.config.displayDuration,\
      autoHide = true\
    }\
    \
    return true\
  end\
end",     ["text"] = "Traps",     ["use_text"] = true,     ["duration"] = "3",     ["unit"] = "player",     ["use_spellId"] = true,     ["spellIds"] = {     },     ["events"] = "ECHO_ANDUIN_KINGSMORNE, ECHO_ANDUIN_KINGSMORNE_MD",     ["remOperator"] = "<",     ["use_destUnit"] = true,     ["type"] = "custom",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["displayText_format_1.p_time_precision"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["class"] = {    ["single"] = "PRIEST",    ["multi"] = {     ["PRIEST"] = true,    },   },   ["use_encounterid"] = true,   ["use_class"] = true,   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["size"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["class_and_spec"] = {    ["multi"] = {     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,     true,    },   },   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["faction"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["use_zoneIds"] = false,   ["race"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["regionType"] = "text",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["fixedWidth"] = 200,  ["displayText_format_1.p_time_format"] = 0,  ["yOffset"] = 200,  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["uid"] = "weNM)xcLKSx",  ["displayText_format_2.p_time_precision"] = 1,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Mass Dispel Reminder",  ["selfPoint"] = "CENTER",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = 0,  ["config"] = {   ["castDuration"] = 3.8,   ["displayDuration"] = 3,   ["warnOnTimeRemaining"] = 1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["displayText_format_2.p_format"] = "timed", }, ["(08) Echo Public - Anduin - Wicked Star Direction"] = {  ["user_y"] = 0,  ["user_x"] = 0,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "playSound",    ["useDesc"] = false,    ["name"] = "Play Sound",    ["default"] = true,    ["width"] = 2,   },  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 6,  ["displayText_format_p_time_format"] = 0,  ["sameTexture"] = true,  ["backgroundColor"] = {   0.5,   0.5,   0.5,   0.5,  },  ["wordWrap"] = "WordWrap",  ["displayText_format_marker_format"] = "none",  ["desaturate"] = false,  ["rotation"] = 270,  ["font"] = "Friz Quadrata TT",  ["crop_y"] = 0.41,  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["startAngle"] = 0,  ["shadowXOffset"] = 1,  ["useAdjustededMin"] = false,  ["regionType"] = "text",  ["blendMode"] = "BLEND",  ["slantMode"] = "INSIDE",  ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",  ["compress"] = false,  ["alpha"] = 1,  ["uid"] = "Yaa8yarRRVR",  ["fixedWidth"] = 200,  ["backgroundOffset"] = 2,  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["shadowYOffset"] = -1,  ["desaturateBackground"] = false,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["desaturateForeground"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "stateupdate",     ["customVariables"] = "{\
  playSound = \"bool\",\
  wave = \"number\"\
}",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["custom"] = "-- events CLEU:SPELL_CAST_SUCCESS:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_HEAL_ABSORBED\
function(allstates, event, ...)\
  local _, subEvent, _, _, _, _, _, _, destName, _, _, spellId = ...\
  if event == \"ENCOUNTER_START\" then\
    aura_env.bwStage = 0\
    aura_env.count = 0    \
  elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" and subEvent and spellId then\
    if subEvent == \"SPELL_CAST_SUCCESS\" and spellId == aura_env.wickedStarSpell then\
      aura_env.castExpiration = GetTime() + 10\
      \
      local stage = WeakAuras.GetBigWigsStage()\
      if stage ~= aura_env.bwStage then\
        aura_env.count = 0\
        aura_env.bwStage = stage\
      end\
      \
      aura_env.count = aura_env.count + 1\
      \
      return false\
    elseif subEvent == \"SPELL_AURA_APPLIED\" and spellId == aura_env.wickedStarDebuff then\
      if not UnitIsUnit(destName, \"player\") then\
        return false\
      end\
      \
      local identifier = string.format(\"%d:%d\", aura_env.bwStage, aura_env.count)\
      if aura_env.yolo[identifier] then\
        return false\
      end\
      \
      local remainingTime = aura_env.castExpiration - GetTime()\
      if remainingTime <= 0 then\
        return false\
      end\
      \
      local wave\
      if remainingTime > 9 then\
        wave = 1\
      elseif remainingTime > 6 then\
        wave = 2\
      elseif remainingTime > 4 then\
        wave = 3\
      end\
      \
      if not wave then\
        return false\
      end\
      \
      allstates[\":\"] = {\
        show = true,\
        changed = true,\
        name = (wave == 1 or wave == 3) and \"DIAMOND\" or \"GREEN\",\
        marker = aura_env.markers[wave%2],\
        progressType = \"timed\",\
        duration = 4,\
        expirationTime = GetTime() + 4,\
        autoHide = true,\
        playSound = aura_env.config.playSound,\
        wave = wave,\
      }\
      \
      return true\
    end\
  elseif event == \"OPTIONS\" then\
    local wave = math.random(1, 3)\
    allstates[\"options\"] = {\
      show = true,\
      changed = true,\
      name = (wave == 1 or wave == 3) and \"DIAMOND\" or \"GREEN\",\
      marker = aura_env.markers[wave%2],\
      progressType = \"timed\",\
      duration = 4,\
      expirationTime = GetTime() + 4,\
      autoHide = true,\
      playSound = aura_env.config.playSound,\
      wave = wave,\
    }\
    \
    return true\
  end\
end",     ["events"] = "CLEU:SPELL_CAST_SUCCESS:SPELL_AURA_APPLIED, ENCOUNTER_START",     ["spellIds"] = {     },     ["custom_hide"] = "timed",     ["check"] = "event",     ["names"] = {     },     ["unit"] = "player",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["discrete_rotation"] = 0,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 150,  ["rotate"] = true,  ["useAdjustededMax"] = false,  ["fontSize"] = 40,  ["displayText_format_n_format"] = "none",  ["mirror"] = false,  ["xOffset"] = 0,  ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",  ["crop_x"] = 0.41,  ["orientation"] = "VERTICAL",  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["size"] = {    ["multi"] = {    },   },  },  ["displayText_format_p_time_precision"] = 1,  ["selfPoint"] = "CENTER",  ["endAngle"] = 360,  ["foregroundColor"] = {   1,   1,   1,   1,  },  ["justify"] = "CENTER",  ["width"] = 150,  ["id"] = "(08) Echo Public - Anduin - Wicked Star Direction",  ["displayText"] = "%marker %n %marker",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["actions"] = {   ["start"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "aura_env.wickedStarSpell = 365030\
aura_env.wickedStarDebuff = 365021\
\
aura_env.markers = {\
  [0] = \"\",\
  [1] = \"\",\
}\
\
aura_env.yolo = {\
  -- <Stage:Count>\
  [\"1:2\"] = true,\
  [\"2:1\"] = true,  \
  [\"2:2\"] = true,\
  [\"2:3\"] = true,\
  [\"2:4\"] = true,\
  [\"2:5\"] = true,\
}\
\
aura_env.bwStage = 0\
\
-- Debug Mistweaver\
-- aura_env.wickedStarSpell = 116670\
-- aura_env.wickedStarDebuff = 119611",   },   ["finish"] = {   },  },  ["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["inverse"] = false,  ["config"] = {   ["playSound"] = true,  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "playSound",       ["value"] = 1,      },      {       ["trigger"] = -2,       ["variable"] = "OR",       ["checks"] = {        {         ["trigger"] = 1,         ["variable"] = "wave",         ["op"] = "==",         ["value"] = "1",        },        {         ["trigger"] = 1,         ["variable"] = "wave",         ["op"] = "==",         ["value"] = "3",        },       },      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Diamond.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "playSound",       ["value"] = 1,      },      {       ["op"] = "==",       ["checks"] = {        {         ["trigger"] = 1,         ["variable"] = "wave",         ["value"] = "2",         ["op"] = "==",        },        {         ["trigger"] = 1,         ["variable"] = "wave",         ["value"] = "3",         ["op"] = "==",        },       },       ["trigger"] = 1,       ["variable"] = "wave",       ["value"] = "2",      },     },    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Triangle.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },    ["linked"] = true,   },  },  ["information"] = {  },  ["tocversion"] = 90200, }, [" (08) Echo Public - Anduin - Num People in Barrier Scripe Pov"] = {  ["sparkWidth"] = 10,  ["iconSource"] = -1,  ["user_x"] = 0,  ["xOffset"] = 0,  ["yOffset"] = 0,  ["foregroundColor"] = {   1,   1,   1,   1,  },  ["echoVersion"] = 10,  ["sparkRotation"] = 0,  ["sameTexture"] = true,  ["url"] = "",  ["icon"] = true,  ["icon_color"] = {   1,   1,   1,   1,  },  ["keepAspectRatio"] = false,  ["selfPoint"] = "CENTER",  ["barColor"] = {   0.31372549019608,   0,   0.65882352941176,   1,  },  ["desaturate"] = false,  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["sparkOffsetY"] = 0,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["use_encounterid"] = true,   ["race"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["use_namerealm"] = true,   ["talent2"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["difficulty"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["namerealm"] = "Gingì,Rogerbrownie",   ["role"] = {    ["single"] = "HEALER",    ["multi"] = {     ["HEALER"] = true,     ["TANK"] = true,    },   },   ["class"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["useAdjustededMin"] = false,  ["regionType"] = "aurabar",  ["blendMode"] = "BLEND",  ["slantMode"] = "INSIDE",  ["texture"] = "Blizzard",  ["zoom"] = 0,  ["auto"] = true,  ["tocversion"] = 90200,  ["alpha"] = 1,  ["config"] = {  },  ["displayIcon"] = 3528301,  ["backgroundOffset"] = 2,  ["sparkOffsetX"] = 0,  ["color"] = {   1,   1,   1,   1,  },  ["customText"] = "function()\
  if WeakAuras.IsOptionsOpen() then\
    return AbbreviateNumbers(227500)\
  end\
  \
  return AbbreviateNumbers(aura_env.remainingAbsorb or 0)\
end",  ["desaturateBackground"] = false,  ["cooldownSwipe"] = true,  ["customTextUpdate"] = "update",  ["cooldownEdge"] = false,  ["desaturateForeground"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["custom_hide"] = "timed",     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HELPFUL",     ["custom"] = "-- events CLEU:SPELL_CAST_SUCCESS:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_HEAL_ABSORBED\
function(allstates, event, ...)\
    local _, subEvent, _, _, _, _, _, _, _, _, _, spellId = ...\
    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and subEvent and spellId then\
        if subEvent == \"SPELL_CAST_SUCCESS\" and spellId == 365295 then\
            -- Befouled barrier casted\
            allstates[\":\"] = {\
                show = true,\
                changed = true,\
                progressType = \"timed\",\
                duration = 30,\
                expirationTime = GetTime() + 30,\
                autoHide = true,\
                peopleInside = 0,\
            }\
            \
            return true\
        elseif subEvent == \"SPELL_AURA_APPLIED\" and spellId == 365293 and allstates[\":\"] then\
            -- Someone entered the barrier\
            local state = allstates[\":\"]\
            state.changed = true\
            state.peopleInside = state.peopleInside + 1\
            \
            if not state.remainingAbsorb then\
                state.remainingAbsorb = select(16, ...)\
            end\
            \
            return true\
        elseif subEvent == \"SPELL_AURA_REMOVED\" and spellId == 365293 and allstates[\":\"] then\
            -- Someone left the barrier\
            local state = allstates[\":\"]\
            state.changed = true\
            state.peopleInside = math.max(state.peopleInside - 1, 0)\
            \
            return true\
        elseif subEvent == \"SPELL_HEAL_ABSORBED\" and spellId == 365293 then\
            local state = allstates[\":\"]\
            if state and state.remainingAbsorb then\
                local _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, absorbed = ...\
                state.changed = true\
                state.remainingAbsorb = math.max(state.remainingAbsorb - absorbed, 0)\
                state.show = (state.remainingAbsorb > 0)\
                \
                return true\
            end\
        end\
    elseif event == \"OPTIONS\" then\
        allstates[\"options\"] = {\
            show = true,\
            changed = true,\
            progressType = \"timed\",\
            duration = 30,\
            expirationTime = GetTime() + 30,\
            autoHide = true,\
            peopleInside = 17,\
            remainingAbsorb = 227328,\
        }\
        \
        return true\
    end\
end",     ["event"] = "Health",     ["unit"] = "player",     ["events"] = "CLEU:SPELL_CAST_SUCCESS:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_HEAL_ABSORBED",     ["customName"] = "function()\
  return GetTime()\
end",     ["spellIds"] = {     },     ["subeventPrefix"] = "SPELL",     ["check"] = "event",     ["names"] = {     },     ["custom_type"] = "stateupdate",     ["customVariables"] = "{\
  peopleInside = \"number\",\
  remainingAbsorb = \"number\"\
}",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["customTriggerLogic"] = "function(t)\
    return t[1];\
end",   ["activeTriggerMode"] = -10,  },  ["endAngle"] = 360,  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["stickyDuration"] = false,  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["type"] = "subforeground",   },   {    ["type"] = "subborder",    ["border_anchor"] = "bar",    ["border_offset"] = 0,    ["border_color"] = {     0,     0,     0,     1,    },    ["border_visible"] = true,    ["border_edge"] = "Square Full White",    ["border_size"] = 1,   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text_format_remainingAbsorb_format"] = "none",    ["text_text_format_1.tooltip2_format"] = "BigNumber",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_text_format_1.ttoltip1_format"] = "none",    ["text_selfPoint"] = "CENTER",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["type"] = "subtext",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text"] = "%peopleInside",    ["text_text_format_tooltip2_format"] = "none",    ["text_anchorYOffset"] = 0,    ["text_text_format_peopleInside_format"] = "none",    ["text_text_format_tooltip1_format"] = "none",    ["text_color"] = {     0.94901960784314,     0.2078431372549,     0.17647058823529,     1,    },    ["text_font"] = "Expressway",    ["text_visible"] = true,    ["text_shadowYOffset"] = 0,    ["text_text_format_1.tooltip1_format"] = "none",    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",    ["text_text_format_1.matchCount_format"] = "none",    ["text_fontSize"] = 26,    ["anchorXOffset"] = 0,    ["text_text_format_1.tooltip3_format"] = "none",   },   {    ["text_text_format_p_time_format"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "%p",    ["text_text_format_2.p_time_format"] = 0,    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_fixedWidth"] = 64,    ["rotateText"] = "NONE",    ["text_text_format_tooltip1_format"] = "none",    ["text_color"] = {     1,     1,     1,     1,    },    ["text_shadowYOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = true,    ["text_fontSize"] = 20,    ["text_text_format_1.ttoltip1_format"] = "none",    ["text_text_format_p_format"] = "timed",    ["text_selfPoint"] = "RIGHT",    ["text_automaticWidth"] = "Auto",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["text_text_format_2.p_time_precision"] = 1,    ["text_text_format_2.p_format"] = "timed",    ["text_text_format_1.tooltip3_format"] = "none",    ["type"] = "subtext",    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_fontType"] = "OUTLINE",    ["text_font"] = "Expressway",    ["text_shadowXOffset"] = 0,    ["text_anchorYOffset"] = 0,    ["text_text_format_2.p_time_dynamic_threshold"] = 60,    ["text_text_format_tooltip2_format"] = "none",    ["text_text_format_p_time_precision"] = 1,    ["text_anchorPoint"] = "RIGHT",    ["text_text_format_1.tooltip2_format"] = "BigNumber",    ["text_text_format_1.matchCount_format"] = "none",    ["text_text_format_1.tooltip1_format"] = "none",    ["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",    ["anchorXOffset"] = 0,   },   {    ["text_shadowXOffset"] = 0,    ["text_text"] = "%remainingAbsorb",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "LEFT",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_remainingAbsorb_format"] = "BigNumber",    ["type"] = "subtext",    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Expressway",    ["text_text_format_p_time_precision"] = 1,    ["text_shadowYOffset"] = 0,    ["text_text_format_remainingAbsorb_big_number_format"] = "AbbreviateNumbers",    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "LEFT",    ["text_text_format_p_time_format"] = 0,    ["text_visible"] = true,    ["text_fontSize"] = 20,    ["anchorXOffset"] = 0,    ["text_text_format_p_format"] = "timed",   },  },  ["height"] = 24,  ["sparkBlendMode"] = "ADD",  ["useAdjustededMax"] = false,  ["fontSize"] = 12,  ["spark"] = false,  ["cooldown"] = false,  ["conditions"] = {  },  ["sparkColor"] = {   1,   1,   1,   1,  },  ["mirror"] = false,  ["sparkRotationMode"] = "AUTO",  ["crop_y"] = 0.41,  ["anchorPoint"] = "CENTER",  ["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["icon_side"] = "LEFT",  ["anchorFrameType"] = "SCREEN",  ["user_y"] = 0,  ["sparkHeight"] = 30,  ["cooldownTextDisabled"] = false,  ["id"] = "(08) Echo Public - Anduin - Num People in Barrier Scripe Pov",  ["compress"] = false,  ["semver"] = "1.0.4",  ["backgroundColor"] = {   0.5,   0.5,   0.5,   0.5,  },  ["sparkHidden"] = "NEVER",  ["startAngle"] = 0,  ["frameStrata"] = 1,  ["width"] = 240,  ["authorOptions"] = {  },  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {    ["do_custom"] = true,    ["custom"] = "aura_env.remainingAbsorb = nil",   },  },  ["inverse"] = false,  ["uid"] = "h8chlSHDkJe",  ["orientation"] = "HORIZONTAL",  ["crop_x"] = 0.41,  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark", }, ["(08) Echo Public - Anduin - Wicked Star Gunshot"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText"] = "",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",    ["do_sound"] = true,   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "0.2",     ["auranames"] = {      "Wicked Star",     },     ["useRem"] = true,     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["useName"] = true,     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["remOperator"] = "<",     ["names"] = {     },     ["unit"] = "player",     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2546",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 12,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["shadowYOffset"] = -1,  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(08) Echo Public - Anduin - Wicked Star Gunshot",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["config"] = {  },  ["uid"] = "9oAOBtFJW(F",  ["xOffset"] = 0,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["wordWrap"] = "WordWrap", },});
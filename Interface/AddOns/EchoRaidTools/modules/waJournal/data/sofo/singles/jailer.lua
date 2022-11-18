local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ [" (11) Echo Public - Jailer - Rouge Weapon Swap"] = {  ["outline"] = "OUTLINE",  ["displayText_format_2.p_format"] = "timed",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["yOffset"] = 200,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["npcId"] = "180990",     ["spellId"] = 363893,     ["use_exact_spellId"] = true,     ["genericShowOn"] = "showOnCooldown",     ["use_unit"] = true,     ["names"] = {     },     ["percenthealth_operator"] = "<=",     ["spellName"] = 0,     ["subeventPrefix"] = "SPELL",     ["use_genericShowOn"] = true,     ["debuffType"] = "HELPFUL",     ["subeventSuffix"] = "_CAST_START",     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["unevent"] = "auto",     ["use_spellName"] = true,     ["percenthealth"] = "50",     ["event"] = "Health",     ["use_npcId"] = true,     ["realSpellName"] = 0,     ["use_spellId"] = true,     ["spellIds"] = {     },     ["duration"] = "1",     ["unit"] = "boss",     ["use_percenthealth"] = true,     ["use_track"] = true,     ["use_absorbMode"] = true,    },    ["untrigger"] = {     ["unit"] = "boss",    },   },   {    ["trigger"] = {     ["npcId"] = "180990",     ["spellId"] = 363893,     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["names"] = {     },     ["unit"] = "boss",     ["use_track"] = true,     ["debuffType"] = "HELPFUL",     ["use_unit"] = true,     ["use_genericShowOn"] = true,     ["spellName"] = 0,     ["subeventSuffix"] = "_CAST_START",     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["unevent"] = "auto",     ["use_spellId"] = true,     ["percenthealth"] = "49.5",     ["event"] = "Health",     ["realSpellName"] = 0,     ["use_npcId"] = true,     ["use_spellName"] = true,     ["spellIds"] = {     },     ["use_exact_spellId"] = true,     ["subeventPrefix"] = "SPELL",     ["use_percenthealth"] = true,     ["percenthealth_operator"] = ">=",     ["duration"] = "1",    },    ["untrigger"] = {     ["unit"] = "boss",    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "CENTER",  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["use_encounterid"] = true,   ["use_class"] = true,   ["race"] = {   },   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["single"] = "ROGUE",    ["multi"] = {    },   },   ["zoneIds"] = "",  },  ["fontSize"] = 9,  ["shadowXOffset"] = 1,  ["xOffset"] = 0,  ["regionType"] = "text",  ["displayText_format_1.p_time_format"] = 0,  ["conditions"] = {  },  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["wordWrap"] = "WordWrap",  ["color"] = {   1,   0,   0,   1,  },  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["config"] = {  },  ["shadowYOffset"] = -1,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Rouge Weapon Swap",  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText"] = "SWAP WEAPONS",  ["uid"] = "Bs9lQZJ0W9F",  ["displayText_format_1.p_time_precision"] = 1,  ["authorOptions"] = {  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["subRegions"] = {   {    ["type"] = "subbackground",   },  }, }, [" (11) Echo Public - Jailer - Tank Soak Warning"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText"] = "WATCH OUT %1.p",  ["yOffset"] = 200,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = 363893,     ["use_exact_spellId"] = true,     ["genericShowOn"] = "showOnCooldown",     ["use_unit"] = true,     ["spellName"] = 0,     ["type"] = "unit",     ["debuffType"] = "HELPFUL",     ["subeventSuffix"] = "_CAST_START",     ["names"] = {     },     ["unit"] = "boss",     ["event"] = "Cast",     ["unevent"] = "auto",     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["spellIds"] = {     },     ["use_spellId"] = true,     ["use_genericShowOn"] = true,     ["duration"] = "1",     ["use_track"] = true,     ["subeventPrefix"] = "SPELL",    },    ["untrigger"] = {     ["unit"] = "boss",    },   },   {    ["trigger"] = {     ["type"] = "aura2",     ["useRem"] = false,     ["useExactSpellId"] = true,     ["names"] = {     },     ["useName"] = false,     ["event"] = "Health",     ["unit"] = "player",     ["subeventSuffix"] = "_CAST_START",     ["rem"] = "3",     ["spellIds"] = {     },     ["auranames"] = {      "364289",     },     ["remOperator"] = "<",     ["subeventPrefix"] = "SPELL",     ["auraspellids"] = {      "362192",     },     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = 1,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "CENTER",  ["font"] = "Friz Quadrata TT",  ["displayText_format_2.p_time_precision"] = 1,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_2.p_time_format"] = 0,  ["load"] = {   ["use_encounterid"] = true,   ["zoneIds"] = "",   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 48,  ["shadowXOffset"] = 1,  ["displayText_format_1.p_format"] = "timed",  ["regionType"] = "text",  ["color"] = {   1,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["displayText_format_1.p_time_format"] = 0,  ["displayText_format_1.p_time_dynamic_threshold"] = 60,  ["uid"] = "Ig4hzL9nJSr",  ["displayText_format_p_time_precision"] = 1,  ["displayText_format_2.p_time_dynamic_threshold"] = 60,  ["displayText_format_1.p_time_precision"] = 1,  ["xOffset"] = 0,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Tank Soak Warning",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["shadowYOffset"] = -1,  ["config"] = {  },  ["displayText_format_2.p_format"] = "timed",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["wordWrap"] = "WordWrap", }, ["(11) Echo Public - Jailer - Blood Soak Assignment (Bombs)"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["customText"] = "function()\
  if aura_env.state.progressType == \"timed\" then\
    return string.format(\"%d\", math.ceil(aura_env.state.expirationTime - GetTime()))\
  end\
  \
  return \"\"\
end",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 39,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["displayText_format_positionName_format"] = "none",  ["cooldownEdge"] = false,  ["icon"] = true,  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = 365872,     ["auranames"] = {      "Dark Eclipse",     },     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["names"] = {     },     ["custom"] = "function(allstates, event, ...)\
  if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...\
    if subEvent == \"SPELL_AURA_APPLIED\" and spellID and spellID == aura_env.runeOfDamnationDebuff then\
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
      aura_env.debuffedPlayers[destName] = true\
      \
      if aura_env.positionAssignment == aura_env.runeOfDamnationCount then      \
        local rotationIndex = aura_env.getRotationIndex(aura_env.currentWave, #aura_env.waves)\
        local rotation = aura_env.waves[rotationIndex]\
        \
        local priorityList = EchoUtil:GetPriorityList(aura_env.pickPriority)\
        local availablePlayers = {}\
        \
        -- Hot stuff in here\
        if aura_env.currentWave == 2 then\
          if UnitExists(\"Xerwotwo\") then\
            table.insert(availablePlayers, \"Xerwotwo\")\
          end\
          \
          if UnitExists(\"Siqs\") then\
            table.insert(availablePlayers, \"Siqs\")\
          end\
        end\
        \
        for playerName, priority in pairs(priorityList) do\
          if not aura_env.debuffedPlayers[playerName] then\
            table.insert(availablePlayers, playerName)\
          end\
        end\
        \
        aura_env.sortPlayers(availablePlayers, aura_env.pickPriority)\
        \
        local bloodSoakers = {}\
        for positionIndex=1, #rotation do\
          table.insert(bloodSoakers, availablePlayers[positionIndex])\
        end\
        \
        aura_env.sortPlayers(bloodSoakers, aura_env.positionPriority)\
        \
        \
        local updated = false\
        for positionIndex, position in ipairs(rotation) do\
          local playerName = bloodSoakers[positionIndex]\
          \
          --[[\
          if UnitIsUnit(playerName, \"player\") then\
            allstates[\":\"] = {\
              show = true,\
              changed = true,\
              name = playerName,\
              progressType = \"timed\",\
              duration = 5,\
              expirationTime = now + 5,\
              value = 0,\
              total = 1,\
              autoHide = true,\
              marker = string.format(\"\", position.marker),\
              positionName = position.name,\
            }\
            \
            updated = true\
          end\
          ]]\
          \
          C_Timer.After(0, function()\
              WeakAuras.ScanEvents(\"ECHO_JAILER_BLOODSOAK_ASSIGNED\", playerName, position.name, aura_env.currentWave)\
          end)\
        end\
        \
        return updated\
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
      positionName = \"1\"\
    }\
    \
    return true\
  end\
end",     ["debuffType"] = "HARMFUL",     ["subeventPrefix"] = "SPELL",     ["use_genericShowOn"] = true,     ["subeventSuffix"] = "_CAST_START",     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED, ENCOUNTER_START",     ["use_spellName"] = true,     ["spellName"] = 0,     ["useExactSpellId"] = false,     ["type"] = "custom",     ["use_absorbHealMode"] = true,     ["custom_type"] = "stateupdate",     ["use_unit"] = true,     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["useName"] = true,     ["realSpellName"] = 0,     ["use_spellId"] = true,     ["spellIds"] = {     },     ["auraspellids"] = {      "368524",     },     ["check"] = "event",     ["unit"] = "player",     ["use_track"] = true,     ["customVariables"] = "{\
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
  }\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["selfPoint"] = "TOP",  ["displayText_format_marker_format"] = "none",  ["stickyDuration"] = false,  ["xOffset"] = 0,  ["font"] = "Friz Quadrata TT",  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 55,  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["use_never"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,  },  ["displayIcon"] = "",  ["yOffset"] = 0,  ["fontSize"] = 30,  ["conditions"] = {  },  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "local aura_env = aura_env\
\
aura_env.waves = {\
  -- First Wave\
  {},\
  \
  -- Second Wave\
  {\
    { name = \"1\", marker = 6, after = 0 },\
    { name = \"2\", marker = 6, after = 0 },\
    { name = \"3\", marker = 6, after = 0 },\
    { name = \"4\", marker = 6, after = 0 },\
  },\
  \
  -- Third Wave\
  {},\
  \
  -- 4th Wave\
  {},\
  \
  -- 5th Wave\
  {},\
  \
  -- 6th Wave\
  {},\
  \
  -- 7th Wave\
  {},\
  \
  -- 8th Wave\
  {},\
}\
\
aura_env.swapWavePauseDuration = 4\
aura_env.currentWave = 0\
aura_env.positionAssignment = 0\
aura_env.runeOfDamnationDebuff = 360281\
aura_env.runeOfDamnationCount = 6\
aura_env.debuffedPlayers = {}\
aura_env.wasAssigned = {}\
aura_env.pickPriority = \"JailerBloodPickPriority\"\
aura_env.positionPriority = \"JailerBloodPositionPriority\"\
\
function aura_env.getRotationIndex(current, count)\
  return ((current-1)%count)+1\
end\
\
function aura_env.sortPlayers(playerList, priorityName)\
  priorityName = priorityName or \"JailerBloodPriority\"\
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
end",   },  },  ["shadowXOffset"] = 1,  ["uid"] = "Qp8J(8eeyAO",  ["auto"] = true,  ["anchorFrameType"] = "SCREEN",  ["regionType"] = "text",  ["alpha"] = 1,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "doTTS",    ["useDesc"] = false,    ["name"] = "TTS",    ["default"] = false,    ["width"] = 1,   },  },  ["wordWrap"] = "WordWrap",  ["url"] = "",  ["justify"] = "CENTER",  ["displayText_format_p_time_precision"] = 1,  ["cooldownTextDisabled"] = false,  ["desaturate"] = false,  ["zoom"] = 0,  ["semver"] = "1.0.4",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Blood Soak Assignment (Bombs)",  ["customTextUpdate"] = "update",  ["frameStrata"] = 1,  ["width"] = 55,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["config"] = {   ["doTTS"] = false,  },  ["inverse"] = false,  ["displayText"] = "SOAK BLOOD %positionName",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["cooldown"] = true,  ["automaticWidth"] = "Auto", }, ["(11) Echo Public - Jailer - Nameplate Prio Kill"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["do_glow"] = true,    ["glow_thickness"] = 3,    ["glow_color"] = {     1,     0.07843137254902,     0,     1,    },    ["glow_action"] = "show",    ["use_glow_color"] = true,    ["glow_type"] = "Pixel",    ["do_custom"] = false,    ["glow_frame_type"] = "NAMEPLATE",   },   ["init"] = {   },   ["finish"] = {    ["hide_all_glows"] = true,   },  },  ["triggers"] = {   {    ["trigger"] = {     ["use_namerealm"] = true,     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["nameplateType"] = "hostile",     ["use_absorbMode"] = true,     ["event"] = "Health",     ["unit"] = "nameplate",     ["namerealm"] = "Xerwotwo,Lorgok,Jeathpriest,Cameldisco,Gingitwo,Solwinas,Siqs,Deepshadess,Turbotobo",     ["subeventSuffix"] = "_CAST_START",     ["spellIds"] = {     },     ["names"] = {     },     ["use_nameplateType"] = true,     ["subeventPrefix"] = "SPELL",     ["use_unit"] = true,     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 12,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["shadowYOffset"] = -1,  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Nameplate Prio Kill",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["uid"] = "7Df7Fr47oDb",  ["authorOptions"] = {  },  ["config"] = {  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["(11) Echo Public - SOFO - Jailer"] = {  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["borderBackdrop"] = "Blizzard Tooltip",  ["uid"] = "Dl(Cpx0ttIp",  ["scale"] = 1,  ["information"] = {  },  ["border"] = false,  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 7,  ["authorOptions"] = {  },  ["borderColor"] = {   0,   0,   0,   1,  },  ["config"] = {  },  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["names"] = {     },     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["subeventPrefix"] = "SPELL",     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["xOffset"] = 0,  ["internalVersion"] = 50,  ["borderOffset"] = 4,  ["selfPoint"] = "CENTER",  ["id"] = "(11) Echo Public - SOFO - Jailer",  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["tocversion"] = 90200,  ["borderInset"] = 1,  ["borderSize"] = 2,  ["subRegions"] = {  },  ["regionType"] = "group",  ["conditions"] = {  },  ["load"] = {   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["borderEdge"] = "Square Full White", }, ["(11) Echo Public - Jailer - Chains Text"] = {  ["outline"] = "OUTLINE",  ["displayText_format_position_format"] = "none",  ["authorOptions"] = {  },  ["displayText"] = "%c",  ["customText"] = "function()\
    local state = aura_env.state;\
    if(state)then\
        local expIn = state.expirationTime - GetTime();\
        if(state.isExpire)then\
            --return \"LET IT EXPIRE \".. string.format(\"%.1f\",expIn);\
            return \"\";\
        else\
            if(expIn > 0)then\
                return \"BREAK IN \".. string.format(\"%.1f\",expIn);\
            else\
                return \"BREAK NOW!!\"\
            end\
        end \
    end\
end",  ["yOffset"] = 140,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 4,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "update",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "stateupdate",     ["custom_hide"] = "timed",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["names"] = {     },     ["custom"] = "function(allstates, event, ...)\
  if(event == \"CHAIN_ASSIGNED\")then\
    local player,duration,isExpire = ...;\
    \
    if(player and UnitIsUnit(\"player\",player))then\
      allstates[\"\"] = {\
        show = true,\
        changed = true,\
        progressType = \"timed\",\
        expirationTime = GetTime() + duration,\
        duration = duration,\
        isExpire = isExpire,\
      };\
      \
      return true;\
    end\
  elseif(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_AURA_REMOVED\" and spellID == 365222 and UnitIsUnit(\"player\",destName))then\
      local state = allstates[\"\"];\
      if(state)then\
        state.changed = true;\
        state.show = false;\
        \
        return true;\
      end\
    end\
  end\
end",     ["spellIds"] = {     },     ["events"] = "CHAIN_ASSIGNED CLEU:SPELL_AURA_REMOVED",     ["check"] = "event",     ["unit"] = "player",     ["debuffType"] = "HELPFUL",     ["customVariables"] = "{\
    expirationTime = true,\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["use_never"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 36,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["xOffset"] = 0,  ["wordWrap"] = "WordWrap",  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Chains Text",  ["color"] = {   1,   0.85490196078431,   0.43921568627451,   1,  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["config"] = {  },  ["shadowYOffset"] = -1,  ["uid"] = "HqtR85t3iJl",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["value"] = "5",     ["op"] = ">",    },    ["changes"] = {     {      ["value"] = {       1,       1,       1,       0,      },      ["property"] = "color",     },    },   },  },  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, ["(11) Echo Public - Jailer - Watch Line"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["xOffset"] = 0,  ["displayText"] = "WATCH LINE",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = "364942",     ["duration"] = "5",     ["subeventPrefix"] = "SPELL",     ["destUnit"] = "player",     ["debuffType"] = "HELPFUL",     ["type"] = "combatlog",     ["custom_type"] = "event",     ["event"] = "Combat Log",     ["unit"] = "player",     ["names"] = {     },     ["use_spellId"] = true,     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["check"] = "event",     ["use_destUnit"] = true,     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED",     ["custom_hide"] = "timed",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["spellId"] = "364488",     ["duration"] = "5",     ["unit"] = "player",     ["destUnit"] = "player",     ["debuffType"] = "HELPFUL",     ["type"] = "combatlog",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Combat Log",     ["custom_hide"] = "timed",     ["names"] = {     },     ["use_spellId"] = true,     ["spellIds"] = {     },     ["custom_type"] = "event",     ["check"] = "event",     ["use_destUnit"] = true,     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED",     ["subeventPrefix"] = "SPELL",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["selfPoint"] = "CENTER",  ["desaturate"] = false,  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 64,  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 56,  ["shadowXOffset"] = 1,  ["cooldownEdge"] = false,  ["cooldown"] = false,  ["fixedWidth"] = 200,  ["regionType"] = "text",  ["icon"] = true,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["color"] = {   1,   1,   1,   1,  },  ["config"] = {  },  ["yOffset"] = 150,  ["displayText_format_p_time_precision"] = 1,  ["width"] = 64,  ["frameStrata"] = 1,  ["zoom"] = 0,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Watch Line",  ["cooldownTextDisabled"] = false,  ["alpha"] = 1,  ["anchorFrameType"] = "SCREEN",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["uid"] = "wc6GlFsvqmN",  ["inverse"] = false,  ["authorOptions"] = {  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["wordWrap"] = "WordWrap", }, ["(11) Echo Public - Jailer Secret Phase Dispell Bullshit"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["customText"] = "function()\
print(123);\
end",  ["shadowYOffset"] = -1,  ["displayText_format_unit_abbreviate_max"] = 8,  ["echoVersion"] = 5,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["displayText_format_unit_abbreviate"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["customVariables"] = "{\
    expirationTime = true,\
}",     ["custom_type"] = "stateupdate",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_AURA_APPLIED\" and spellID == 368591)then\
      \
      aura_env.logl(\"New debuff:\",destName);\
      table.insert(aura_env.debuffs,destName);\
      \
      local dispellPrio = EchoInternal:GetPriorityList(\"P4Dispel\");\
      local soakPrio = EchoInternal:GetPriorityList(\"P4Soakers\");\
      \
      local indexedDispellList = {};\
      for dude,index in pairs(dispellPrio)do\
        indexedDispellList[index] = dude;\
      end\
      \
      local indexedSoakList = {};\
      for dude,index in pairs(soakPrio)do\
        indexedSoakList[index] = dude;\
      end\
      \
      local dispeller;\
      for i,healer in ipairs(indexedDispellList)do\
        if(not UnitIsDeadOrGhost(healer) and not aura_env.usedDispells[healer])then\
          dispeller = healer;\
          aura_env.usedDispells[healer] = destName;\
          break;\
        end\
      end\
      \
      if(dispeller)then\
        WeakAuras.ScanEvents(\"P3_DISPELL_ASSIGNED\",destName,dispeller);\
        \
        if(UnitIsUnit(\"player\",dispeller))then\
          allstates[destName] = {\
            changed = true,\
            show = true,\
            progressType = \"timed\",\
            expirationTime = GetTime() + 30;\
            duration = 30,\
            unit = destName,\
            autoHide = true,\
          };\
          \
          return true;\
        end\
      end\
      \
    elseif(subEvent == \"SPELL_DISPEL\" and (spellID >= 368591 and spellID <= 368593))then\
      aura_env.removeCount = aura_env.removeCount + 1;\
      \
      for healer,target in pairs(aura_env.usedDispells)do\
        if(UnitIsUnit(target,destName))then\
          aura_env.usedDispells[healer] = nil\
          break; \
        end \
      end\
      \
      local state = allstates[destName];\
      if(state)then\
        state.changed = true;\
        state.show = false;\
        \
        return true;\
      end\
    end\
  elseif(event == \"ENCOUNTER_START\")then\
    aura_env.debuffs = {};\
    aura_env.usedDispells = {};\
    aura_env.removeCount = 0;\
    aura_env.assignedSoakers = {};\
  end\
end",     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_DISPEL",     ["spellIds"] = {     },     ["custom_hide"] = "timed",     ["check"] = "event",     ["names"] = {     },     ["unit"] = "player",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 10,  ["shadowXOffset"] = 1,  ["displayText_format_unit_realm_name"] = "never",  ["regionType"] = "text",  ["anchorFrameParent"] = true,  ["conditions"] = {  },  ["actions"] = {   ["start"] = {    ["do_glow"] = false,    ["glow_type"] = "Pixel",    ["glow_frame_type"] = "UNITFRAME",    ["glow_action"] = "show",   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "aura_env.debuffs = {};\
aura_env.usedDispells = {};\
aura_env.removeCount = 0;\
aura_env.assignedSoakers = {};\
\
function aura_env.print(...)\
  print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.printError(...)\
  print(\"WA \"..aura_env.id..\" :\",...);\
end",   },   ["finish"] = {    ["hide_all_glows"] = true,   },  },  ["displayText"] = "%unit - %p",  ["displayText_format_unit_color"] = "class",  ["displayText_format_p_time_precision"] = 1,  ["config"] = {  },  ["selfPoint"] = "TOP",  ["xOffset"] = 0,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["displayText_format_unit_format"] = "Unit",  ["id"] = "(11) Echo Public - Jailer Secret Phase Dispell Bullshit",  ["frameStrata"] = 9,  ["anchorFrameType"] = "UNITFRAME",  ["authorOptions"] = {  },  ["uid"] = "Llz)hpGD2Mr",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["(11) Echo Public - Jailer - Soak Cleave p4"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "SOAK CLEAVE\
%p",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "aura2",     ["auraspellids"] = {      "360281",     },     ["matchesShowOn"] = "showOnMissing",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["names"] = {     },     ["useExactSpellId"] = true,     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["use_remaining"] = true,     ["text"] = "Meteor Cleave",     ["remaining_operator"] = "<=",     ["use_text"] = true,     ["unit"] = "player",     ["use_extend"] = true,     ["remaining"] = "5",     ["type"] = "addons",     ["use_spellId"] = false,     ["extend"] = "2",     ["event"] = "BigWigs Timer",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "preset",    ["easeType"] = "none",    ["duration_type"] = "seconds",    ["easeStrength"] = 3,    ["preset"] = "alphaPulse",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["desaturate"] = false,  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 200,  ["rotate"] = true,  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["size"] = {    ["multi"] = {    },   },  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["shadowXOffset"] = 1,  ["mirror"] = false,  ["selfPoint"] = "CENTER",  ["regionType"] = "text",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["blendMode"] = "BLEND",  ["conditions"] = {  },  ["yOffset"] = 190,  ["discrete_rotation"] = 0,  ["displayText_format_p_time_precision"] = 1,  ["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["color"] = {   1,   0.82352941176471,   0.41176470588235,   1,  },  ["config"] = {  },  ["justify"] = "CENTER",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Soak Cleave p4",  ["authorOptions"] = {  },  ["alpha"] = 1,  ["width"] = 200,  ["anchorFrameType"] = "SCREEN",  ["uid"] = "OK2XBHIAecu",  ["frameStrata"] = 1,  ["fontSize"] = 58,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["wordWrap"] = "WordWrap", }, ["(11) Echo Public - Jailer - Rune of Heal Absorb Assignment "] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText"] = "%c\
%p",  ["customText"] = "function()\
    local state = aura_env.state;\
    if(state and state.index)then\
        if(state.index == 1)then\
            return \"TANK SOAK\"; \
        elseif(state.index == 2)then\
            return \"MELEE SOAK\"; \
        else\
            return \"RANGE SOAK\"; \
        end\
    else \
        return \"SOAK\" \
    end\
end",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 9,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["glow_frame_type"] = "UNITFRAME",    ["glow_thickness"] = 3,    ["glow_action"] = "show",    ["do_glow"] = false,    ["glow_type"] = "Pixel",    ["use_glow_color"] = true,    ["glow_color"] = {     0,     0.8,     1,     1,    },   },   ["finish"] = {    ["hide_all_glows"] = false,   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "function aura_env.print(...)\
  print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.printError(...)\
  print(\"WA \"..aura_env.id..\" :\",...);\
end",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "stateupdate",     ["custom_hide"] = "timed",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["events"] = "CLEU:SPELL_AURA_APPLIED RUNE_OF_DOMINATION_THING",     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_AURA_APPLIED\" and spellID == 365150)then\
      local last = aura_env.last or 0;\
      if(last + 20 < GetTime())then\
        aura_env.last = GetTime();\
        aura_env.debuffs = {};\
        aura_env.usedPeople = {};\
        C_Timer.After(0.05,function() WeakAuras.ScanEvents(\"RUNE_OF_DOMINATION_THING\",true); end);\
      end\
      \
      aura_env.usedPeople[destName] = true;\
      table.insert(aura_env.debuffs,destName);\
    end\
  elseif(event == \"RUNE_OF_DOMINATION_THING\")then\
    local notFake = ...;\
    if(notFake)then\
      local prioList = EchoUtil:GetPriorityList(\"JailerRuneofDominationList\");\
      if(prioList)then\
        local indexedList = {};\
        for dude,index in pairs(prioList)do\
          indexedList[index] = dude;\
        end\
        \
        table.sort(aura_env.debuffs,function(t1,t2)\
            local prio1 = prioList[t1];\
            local prio2 = prioList[t2];\
            \
            return prio1 < prio2; \
        end);\
        \
        local deadCount = 0;\
        for dude,index in pairs(prioList)do\
          if(UnitIsDeadOrGhost(dude))then\
            deadCount = deadCount + 1;\
          end                    \
        end\
        \
        local groupTargetCount = (#indexedList - 2 - deadCount) / 2;\
        \
        for i=1,#aura_env.debuffs do \
          if(i == 1)then\
            WeakAuras.ScanEvents(\"RUNE_OF_DOM_ASSIGNED\",i,{aura_env.debuffs[i],indexedList[i]});\
            aura_env.usedPeople[indexedList[i]] = true;\
            aura_env.logl(\"Assigned\",i,unpack({aura_env.debuffs[i],indexedList[i]}));\
            \
            --if(UnitIsUnit(\"player\",aura_env.debuffs[i]) or UnitIsUnit(\"player\",indexedList[i]))then\
            if(UnitIsUnit(\"player\",aura_env.debuffs[i]))then\
              allstates[\"\"] = {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                expirationTime = GetTime() + 6,\
                duration = 6,\
                autoHide = true,\
                index = i,\
              }; \
            end\
          else\
            local dudes = {aura_env.debuffs[i]};\
            for j=1,groupTargetCount-1 do\
              local function findFreeDude()\
                for _,dude in ipairs(indexedList)do\
                  if(not aura_env.usedPeople[dude] and not UnitIsDeadOrGhost(dude))then\
                    aura_env.usedPeople[dude] = true;\
                    return dude; \
                  end \
                end\
              end\
              \
              local dude = findFreeDude();\
              if(dude)then\
                table.insert(dudes, dude);\
              end\
            end\
            \
            WeakAuras.ScanEvents(\"RUNE_OF_DOM_ASSIGNED\",i,dudes);\
            \
            --for _,leDude in ipairs(dudes)do\
            if(UnitIsUnit(\"player\",aura_env.debuffs[i]))then\
              allstates[\"\"] = {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                expirationTime = GetTime() + 6,\
                duration = 6,\
                autoHide = true,\
                index = i,\
              }; \
            end\
            --end\
          end\
        end\
        \
        return allstates[\"\"] ~= nil;\
      end\
    end\
  end    \
end",     ["names"] = {     },     ["check"] = "event",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["difficulty"] = {   },   ["size"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,  },  ["fontSize"] = 42,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "show",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\Addons\\Details\\sounds\\sound_jedi1.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },  },  ["justify"] = "CENTER",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Rune of Heal Absorb Assignment",  ["xOffset"] = 0,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SELECTFRAME",  ["config"] = {  },  ["uid"] = "TF51svD4xEe",  ["color"] = {   1,   1,   1,   1,  },  ["yOffset"] = 0,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, ["(11) Echo Public - Jailer - MC Disspel Send Help"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "Dispel",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 8,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["glow_color"] = {     0,     0.8,     1,     1,    },    ["glow_thickness"] = 3,    ["glow_action"] = "show",    ["do_glow"] = true,    ["glow_type"] = "Pixel",    ["use_glow_color"] = true,    ["glow_frame_type"] = "UNITFRAME",   },   ["finish"] = {    ["hide_all_glows"] = true,   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "stateupdate",     ["custom_hide"] = "timed",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_AURA_REMOVED\" and spellID == 362397)then\
      local last = aura_env.last or 0;\
      if(last + 20 < GetTime())then\
        aura_env.last = GetTime();\
        aura_env.assignCount = 0;\
      end\
      \
      aura_env.assignCount = aura_env.assignCount + 1;\
      \
      local healerCunts = EchoUtil:GetPriorityList(\"MC Dispell Prio\");\
      local actaulHealerCunts = {};\
      for dude,index in pairs(healerCunts)do\
        actaulHealerCunts[index] = dude;\
      end\
      \
      local current = 0;\
      for _,unit in ipairs(actaulHealerCunts) do\
        if(not UnitIsDeadOrGhost(unit))then\
          current = current + 1;\
          if(aura_env.assignCount == current)then\
            if(UnitIsUnit(\"player\",unit))then\
              allstates[\"\"] = {\
                changed = true,\
                show = true,\
                progressType = \"timed\",\
                expirationTime = GetTime() + 2.5,\
                duration = 2.5,\
                autoHide = true,\
                unit = destName,\
              }; \
              \
              return true;\
            end \
          end\
        end\
      end\
    end\
  end\
end",     ["events"] = "CLEU:SPELL_AURA_REMOVED ENCOUNTER_START",     ["names"] = {     },     ["check"] = "event",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["use_encounterid"] = true,  },  ["fontSize"] = 12,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["yOffset"] = 0,  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "show",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\Addons\\Details\\sounds\\sound_jedi1.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },  },  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - MC Disspel Send Help",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["config"] = {  },  ["authorOptions"] = {  },  ["uid"] = "TC3GqTWsQeN",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["(11) Echo Public - Jailer - Trigger Lines"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 4,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["do_custom"] = true,    ["custom"] = "WeakAuras.ScanEvents(\"ECHO_DO_THE_PLUS\",true);",   },   ["init"] = {   },   ["finish"] = {    ["do_custom"] = true,    ["custom"] = "WeakAuras.ScanEvents(\"ECHO_DONT_DO_THE_PLUS\",true);",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["names"] = {     },     ["use_remaining"] = true,     ["use_extend"] = true,     ["subeventSuffix"] = "_CAST_START",     ["type"] = "addons",     ["remaining_operator"] = "<=",     ["event"] = "BigWigs Timer",     ["subeventPrefix"] = "SPELL",     ["text"] = "Heal Azeroth",     ["remaining"] = "10",     ["spellIds"] = {     },     ["use_text"] = true,     ["extend"] = "5",     ["unit"] = "player",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "addons",     ["debuffType"] = "HELPFUL",     ["use_stage"] = true,     ["stage"] = "2",     ["stage_operator"] = "==",     ["event"] = "BigWigs Stage",     ["unit"] = "player",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_namerealm"] = true,   ["namerealm"] = "Canexxtwo,Xerwotwo,Lorgok,Jeathpriest,Cameldisco,Gingitwo,Solwinas,Siqs,Deepshadess,Turbotobo",   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["use_itemequiped"] = false,   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 12,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["selfPoint"] = "BOTTOM",  ["shadowYOffset"] = -1,  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Trigger Lines",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["uid"] = "tYgbQi9xY5L",  ["authorOptions"] = {  },  ["config"] = {  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["wordWrap"] = "WordWrap", }, ["(11) Echo Public - Jailer - Bomb Assignment"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText"] = "BOMB %index %c",  ["customText"] = "function()\
    local state = aura_env.state;\
    if(state and state.isReal and state.index)then\
        if not aura_env.last or aura_env.last < GetTime() - 1.5 then\
            aura_env.last = GetTime();\
            SendChatMessage(state.index);\
        end\
    end\
end",  ["yOffset"] = 250,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 21,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "update",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "aura_env.replacements = {\
  \"FRONT\",\
  \"LEFT\",\
  \"BACK LEFT\",\
  \"RIGHT\",\
  \"BACK MIDDLE\",\
  \"BACK RIGHT\",\
};\
\
function aura_env.print(...)\
  print(\"WA \"..aura_env.id..\" :\",...);\
end\
\
function aura_env.printError(...)\
  print(\"WA \"..aura_env.id..\" :\",...);\
end",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["spellIds"] = {     },     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_AURA_APPLIED\" and spellID == 360281)then\
      local last = aura_env.last or 0;\
      if(last + 10 < GetTime())then\
        aura_env.debuffs = {};\
        aura_env.last = GetTime();\
        aura_env.inPhaseCount = aura_env.inPhaseCount + 1;\
      end\
      \
      table.insert(aura_env.debuffs,destName);\
      \
      if(#aura_env.debuffs == 6)then\
        WeakAuras.ScanEvents(\"JAILER_BOMB_SHIT\",true);\
      end\
    end\
  elseif(event == \"JAILER_BOMB_SHIT\")then\
    local notFake = ...;\
    if(notFake)then\
      \
      local sortList = EchoUtil:GetPriorityList(\"JailerBombPrio\");\
      table.sort(aura_env.debuffs,function(t1,t2)\
          local prio1 = sortList[t1];\
          local prio2 = sortList[t2];\
          \
          return prio1 < prio2; \
      end);\
      \
      local duration = 7;\
      for i,dude in ipairs(aura_env.debuffs)do\
        \
        local realIndex = i;\
        \
        local displayWord = aura_env.config.perfecto and aura_env.perfecto[realIndex] or aura_env.replacements[realIndex];\
        \
        if(aura_env.inPhaseCount == 2 and aura_env.stage == 4 and i == 1)then\
          displayWord = \"SPECIAL front\"; \
        end\
        \
        WeakAuras.ScanEvents(\"BOMB_ASSIGNED\",dude,displayWord,duration,realIndex,aura_env.stage,aura_env.inPhaseCount);\
        \
        if(UnitIsUnit(\"player\",dude))then          \
          allstates[\"\"] = {\
            changed = true,\
            show = true,\
            progressType = \"timed\",\
            expirationTime = GetTime() + duration,\
            duration = duration,\
            index = displayWord,\
            autoHide = true,\
            isReal = true,\
          };\
        end\
      end\
      \
      return allstates[\"\"] ~= nil;\
    end\
  elseif(event == \"BigWigs_SetStage\")then\
    local _,stage = ...;\
    if(stage)then\
      aura_env.stage = stage;\
      aura_env.inPhaseCount = 0;\
    end\
  end\
end",     ["names"] = {     },     ["check"] = "event",     ["custom_type"] = "stateupdate",     ["events"] = "CLEU:SPELL_AURA_APPLIED JAILER_BOMB_SHIT BigWigs_SetStage",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["instance_type"] = {   },   ["use_encounterid"] = true,  },  ["fontSize"] = 46,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["xOffset"] = 0,  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["conditions"] = {  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Bomb Assignment",  ["authorOptions"] = {  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["shadowYOffset"] = -1,  ["config"] = {  },  ["uid"] = "IsgA85Yij8v",  ["displayText_format_index_format"] = "none",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["(11) Echo Public - Jailer - Absorb Amount"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["xOffset"] = 40,  ["displayText"] = "%1.absorb",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "RIGHT",  ["echoVersion"] = 2,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["cooldownEdge"] = false,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["use_showAbsorb"] = true,     ["spellId"] = "360281",     ["use_absorbMode"] = true,     ["unit"] = "nameplate",     ["destUnit"] = "player",     ["subeventPrefix"] = "SPELL",     ["use_class"] = false,     ["debuffType"] = "HELPFUL",     ["custom_hide"] = "timed",     ["names"] = {     },     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["custom_type"] = "event",     ["subeventSuffix"] = "_AURA_REMOVED",     ["spellIds"] = {     },     ["event"] = "Health",     ["nameplateType"] = "hostile",     ["absorbMode"] = "OVERLAY_FROM_END",     ["use_spellId"] = true,     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED",     ["duration"] = "29",     ["use_nameplateType"] = false,     ["use_destUnit"] = true,     ["class"] = "DEATHKNIGHT",     ["use_unit"] = true,    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["frameStrata"] = 1,  ["desaturate"] = false,  ["displayText_format_1.absorb_decimal_precision"] = 1,  ["font"] = "Expressway",  ["cooldown"] = false,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 64,  ["fixedWidth"] = 200,  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["size"] = {    ["multi"] = {    },   },  },  ["yOffset"] = 0,  ["zoom"] = 0,  ["fontSize"] = 20,  ["inverse"] = false,  ["config"] = {  },  ["shadowXOffset"] = 1,  ["anchorFrameParent"] = true,  ["width"] = 64,  ["displayText_format_1.absorb_color"] = true,  ["regionType"] = "text",  ["authorOptions"] = {  },  ["selfPoint"] = "LEFT",  ["displayText_format_1.absorb_abbreviate"] = false,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["wordWrap"] = "WordWrap",  ["displayText_format_p_time_precision"] = 1,  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_1.absorb_big_number_format"] = "AbbreviateNumbers",  ["cooldownTextDisabled"] = false,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Absorb Amount",  ["displayText_format_1.absorb_abbreviate_max"] = 8,  ["alpha"] = 1,  ["anchorFrameType"] = "NAMEPLATE",  ["displayText_format_1.absorb_realm_name"] = "never",  ["uid"] = "4FkYG)gAioR",  ["displayText_format_1.absorb_format"] = "BigNumber",  ["icon"] = true,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "absorb",     ["value"] = "0",     ["op"] = "<=",    },    ["changes"] = {     {      ["value"] = {       1,       1,       1,       0,      },      ["property"] = "color",     },    },   },  },  ["information"] = {  },  ["automaticWidth"] = "Auto", }, [" (11) Echo Public - Jailer - Prepull Soothe"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText"] = "SOOTHE PLZ <3",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 1,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "addons",     ["use_text"] = true,     ["subeventSuffix"] = "_CAST_START",     ["use_remaining"] = false,     ["text"] = "Pull",     ["event"] = "BigWigs Timer",     ["subeventPrefix"] = "SPELL",     ["auraspellids"] = {      "350857",     },     ["useExactSpellId"] = true,     ["spellIds"] = {     },     ["useName"] = false,     ["names"] = {     },     ["unit"] = "target",     ["text_operator"] = "find('%s')",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "aura2",     ["useExactSpellId"] = true,     ["matchesShowOn"] = "showOnMatches",     ["unit"] = "target",     ["unitExists"] = false,     ["match_count"] = "0",     ["auraspellids"] = {      "453",     },     ["match_countOperator"] = "==",     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["npcId"] = "180990",     ["type"] = "unit",     ["use_absorbHealMode"] = true,     ["use_absorbMode"] = true,     ["event"] = "Unit Characteristics",     ["unit"] = "target",     ["use_npcId"] = true,     ["use_unit"] = true,     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "preset",    ["easeType"] = "none",    ["duration_type"] = "seconds",    ["preset"] = "bounce",    ["easeStrength"] = 3,   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_namerealm"] = false,   ["namerealm"] = "Rycntwo",   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["single"] = "PRIEST",    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },   ["use_encounterid"] = false,   ["use_class"] = true,   ["role"] = {    ["single"] = "DAMAGER",    ["multi"] = {     ["DAMAGER"] = true,     ["TANK"] = true,    },   },   ["use_zoneIds"] = true,   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2435",   ["use_combat"] = false,   ["class_and_spec"] = {   },   ["zoneIds"] = "2051",  },  ["fontSize"] = 40,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["yOffset"] = 200,  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Prepull Soothe",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["uid"] = "I(fCPvvnIjy",  ["config"] = {  },  ["xOffset"] = 0,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["selfPoint"] = "CENTER", }, ["(11) Echo Public - Jailer - Blood Soak Assignment (Note)"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["color"] = {   1,   1,   1,   1,  },  ["displayText"] = "SOAK BLOOD %positionName",  ["customText"] = "function()\
  if aura_env.state.progressType == \"timed\" then\
    return string.format(\"%d\", math.ceil(aura_env.state.expirationTime - GetTime()))\
  end\
  \
  return \"\"\
end",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 55,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["displayText_format_positionName_format"] = "none",  ["url"] = "",  ["icon"] = true,  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = 365872,     ["auranames"] = {      "Dark Eclipse",     },     ["use_genericShowOn"] = true,     ["genericShowOn"] = "showOnCooldown",     ["names"] = {     },     ["events"] = "ENCOUNTER_START, ENCOUNTER_END, ECHO_JAILER_BLOODSOAK_ASSIGN, EXRT_NOTE_UPDATE",     ["spellName"] = 0,     ["unit"] = "player",     ["use_absorbMode"] = true,     ["custom_type"] = "stateupdate",     ["spellIds"] = {     },     ["use_spellId"] = true,     ["debuffType"] = "HARMFUL",     ["subeventSuffix"] = "_CAST_START",     ["type"] = "custom",     ["use_absorbHealMode"] = true,     ["useExactSpellId"] = false,     ["useName"] = true,     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["use_unit"] = true,     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["custom"] = "-- ENCOUNTER_START, ENCOUNTER_END, ECHO_JAILER_BLOODSOAK_ASSIGN, EXRT_NOTE_UPDATE\
function(allstates, event, ...)\
  if  event == \"ECHO_JAILER_BLOODSOAK_ASSIGN\" then\
    local instance, duration, blacklist, pickPriority, positionPriority = ...\
    \
    local providedBlacklist = aura_env.CloneTable(blacklist or {})\
    blacklist = {}\
    for k, _ in pairs(providedBlacklist) do\
      if type(k) == \"string\" then\
        blacklist[k] = true\
      elseif type(k) == \"number\" then\
        local setup = aura_env.setups[k] or {}\
        for position, playerName in pairs(setup.assigned or {}) do\
          blacklist[playerName] = true   \
        end\
      end\
    end\
    \
    local dummy = {}\
    for k,_ in pairs(blacklist) do\
      table.insert(dummy, k)\
    end\
    \
    pickPriority = pickPriority or \"JailerBloodPickPriority\"\
    positionPriority = positionPriority or \"JailerBloodPositionPriority\"\
    \
    local setup = aura_env.setups[instance]\
    if not setup then\
      return false\
    end\
    \
    local now = GetTime()\
    \
    local allowStaticReplacement = false\
    local positionCount = #setup.positions\
    local assignedCount = 0\
    local alreadyPicked = {}\
    local rotation = {}\
    local dynamicallyPicked = {}\
    for position, playerName in pairs(setup.assigned) do\
      if allowStaticReplacement then\
        local connected = UnitIsConnected(playerName)\
        local alive = not UnitIsDeadOrGhost(playerName)\
        local valid = not blacklist[playerName]\
        \
        if valid and connected and alive then\
          rotation[position] = playerName\
          aura_env.assignments[playerName] = now + duration\
          \
          alreadyPicked[playerName] = true\
          \
          assignedCount = assignedCount + 1\
        end\
      else\
        -- Will maybe need the blacklist thingy at some point\
        rotation[position] = playerName\
        aura_env.assignments[playerName] = now + duration\
        \
        alreadyPicked[playerName] = true\
      end\
    end\
    \
    if assignedCount < positionCount then\
      local priorityList = EchoUtil:GetPriorityList(pickPriority)\
      if not priorityList then\
        aura_env.log(\"Can not find pick priority list: \" .. pickPriority)\
      end\
      \
      local availablePlayers = {}\
      \
      for playerName, priority in pairs(priorityList) do\
        table.insert(availablePlayers, playerName)\
      end\
      \
      aura_env.sortPlayers(availablePlayers, pickPriority)\
      \
      local picked = {}\
      local index = 1\
      while assignedCount < positionCount and index <= #availablePlayers do\
        local playerName = availablePlayers[index]\
        \
        local valid = not alreadyPicked[playerName] and not blacklist[playerName]\
        local connected = UnitIsConnected(playerName)\
        local alive = not UnitIsDeadOrGhost(playerName)\
        local available = (aura_env.assignments[playerName] or 0) < now\
        \
        if valid and connected and alive and available then\
          table.insert(picked, playerName)\
          aura_env.assignments[playerName] = now + duration\
          assignedCount = assignedCount + 1\
        end\
        \
        index = index + 1\
      end\
      \
      aura_env.sortPlayers(picked, positionPriority)\
      for _, positionName in ipairs(setup.positions) do\
        if not rotation[positionName] then\
          local playerName = picked[1]\
          table.remove(picked, 1)\
          rotation[positionName] = playerName\
          dynamicallyPicked[positionName] = true\
        end\
      end\
    end\
    \
    local bloodSoakers = {}\
    \
    local updated = false\
    for positionIndex, positionName in ipairs(setup.positions) do\
      local playerName = rotation[positionName]\
      table.insert(bloodSoakers, playerName or \"?\")\
      \
      if playerName then\
        --[[\
        if UnitIsUnit(playerName, \"player\") then\
          allstates[\":\"] = {\
            show = true,\
            changed = true,\
            name = playerName,\
            progressType = \"timed\",\
            duration = duration,\
            expirationTime = now + duration,\
            value = 0,\
            total = 1,\
            autoHide = true,\
            positionName = positionName,\
          }\
          \
          if(aura_env.config.doTTS)then\
            EchoInternal:DoTTS(positionName);\
          end\
          \
          updated = true\
        end\
        ]]\
        \
        C_Timer.After(0, function()\
            WeakAuras.ScanEvents(\"ECHO_JAILER_BLOODSOAK_ASSIGNED\", playerName, positionName, instance, positionIndex, duration, dynamicallyPicked[positionName] or false)\
        end)\
      end\
    end\
    \
    C_Timer.After(0, function()\
        WeakAuras.ScanEvents(\"ECHO_JAILER_BLOODSOAK_ROTATION\", bloodSoakers, instance, duration, dynamicallyPicked)\
    end)\
    \
    return updated\
  elseif event == \"EXRT_NOTE_UPDATE\" then\
    aura_env.updateIndexTarget = aura_env.updateIndexTarget + 1;\
    local upEnv = aura_env\
    local updateIndexTarget = aura_env.updateIndexTarget\
    \
    C_Timer.After(1,function()\
        if(upEnv.updateIndexTarget == updateIndexTarget)then\
          upEnv.TryReadNote()\
          upEnv.updateIndexTarget = 0\
        end\
    end)\
  elseif event == \"ENCOUNTER_START\" then\
    aura_env.assignments = {}\
    \
    if not aura_env.noteRead and ... then\
      aura_env.TryReadNote()\
    end\
  elseif event == \"ENCOUNTER_END\" then\
    --\
  end\
end",     ["auraspellids"] = {      "368524",     },     ["check"] = "event",     ["subeventPrefix"] = "SPELL",     ["use_track"] = true,     ["customVariables"] = "",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["wordWrap"] = "WordWrap",  ["displayText_format_marker_format"] = "none",  ["stickyDuration"] = false,  ["xOffset"] = 0,  ["font"] = "Friz Quadrata TT",  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 55,  ["cooldown"] = true,  ["load"] = {   ["use_zoneIds"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["use_encounterid"] = false,   ["zoneIds"] = "2051",   ["use_never"] = false,   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fixedWidth"] = 200,  ["shadowYOffset"] = -1,  ["fontSize"] = 30,  ["selfPoint"] = "TOP",  ["actions"] = {   ["start"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "local aura_env = aura_env\
\
local debug = false\
------------------------------------------------------------------\
-- Example\
--\
-- Note\
-- !bloodsoak Azeroth, Inner, Outer, Pool:Xerwotwo, Siqs\
-- \
-- \
-- Table Layout\
local exampleSetup = {\
  positions = {\"Azeroth\", \"Inner\", \"Outer\", \"Pool\"},\
  assigned = {\
    [\"Azeroth\"] = \"Siqs\",\
    [\"Pool\"] = \"Xerwotwo\"\
  }\
}\
------------------------------------------------------------------\
\
aura_env.updateIndexTarget = 1\
aura_env.setups = {}\
aura_env.keyword = \"!bloodsoak\"\
aura_env.assignments = {}\
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
function aura_env.sortPlayers(playerList, priorityName)\
  priorityName = priorityName or \"JailerBloodPriority\"\
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
end\
\
function aura_env.log(message)\
  if UnitIsGroupLeader(\"player\") then    \
    print(\"WA \" .. aura_env.id .. \": \" ..message)\
  end\
end\
\
local function strStartsWith(s, start)\
  return s:sub(1, start:len()) == start\
end\
\
function aura_env.TryReadNote()\
  local noteText = VExRT and VExRT.Note.Text1\
  if not noteText then\
    return \
  end\
  \
  aura_env.setups = {}\
  \
  local lines = {strsplit(\"\\n\",noteText)}\
  \
  for lineNo, line in ipairs(lines)do\
    if strStartsWith(line, aura_env.keyword) then\
      local setup = {\
        positions = {},\
        assigned = {},\
      }\
      \
      local playerQueue = {}\
      \
      local dataText = line:sub(aura_env.keyword:len()+1)\
      local data = {strsplit(\",\", dataText)}\
      for _, entry in ipairs(data) do\
        local value = strtrim(entry)\
        \
        if strStartsWith(value, \"|c\") then\
          -- Unit\
          local name = string.match(value, \"|c%x%x%x%x%x%x%x%x([^-{}]*)|r\")\
          if not name then\
            name = value\
          end\
          \
          table.insert(playerQueue, name)\
        else\
          -- Position\
          local name, player = string.match(value, \"^([^:]*):|c%x%x%x%x%x%x%x%x([^-{}]*)|r$\")\
          if name then\
            table.insert(setup.positions, name)\
            setup.assigned[name] = player\
          else\
            table.insert(setup.positions, value)\
          end\
        end\
      end\
      \
      for _, positionName in ipairs(setup.positions) do\
        if not setup.assigned[positionName] and #playerQueue >= 1 then\
          local playerName = playerQueue[1]\
          table.remove(playerQueue, 1)\
          setup.assigned[positionName] = playerName\
        end\
      end\
      \
      table.insert(aura_env.setups, setup)\
    end\
  end\
  \
  aura_env.noteRead = true\
end",   },   ["finish"] = {   },  },  ["shadowXOffset"] = 1,  ["uid"] = "c5RSkoW0jGf",  ["justify"] = "CENTER",  ["width"] = 55,  ["regionType"] = "text",  ["frameStrata"] = 1,  ["zoom"] = 0,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["desaturate"] = false,  ["semver"] = "1.0.4",  ["displayText_format_p_time_precision"] = 1,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["cooldownEdge"] = false,  ["cooldownTextDisabled"] = false,  ["auto"] = true,  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Blood Soak Assignment (Note)",  ["displayIcon"] = "",  ["alpha"] = 1,  ["anchorFrameType"] = "SCREEN",  ["customTextUpdate"] = "update",  ["config"] = {   ["doTTS"] = false,  },  ["inverse"] = false,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["useDesc"] = false,    ["key"] = "doTTS",    ["default"] = false,    ["name"] = "TTS",    ["width"] = 1,   },  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["automaticWidth"] = "Auto", }, [" (11) Echo Public - Jailer - Torrment Circle"] = {  ["user_y"] = 0,  ["user_x"] = 0,  ["xOffset"] = 0,  ["yOffset"] = -10,  ["anchorPoint"] = "CENTER",  ["desaturateBackground"] = false,  ["sameTexture"] = false,  ["url"] = "",  ["desaturateForeground"] = false,  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = 363130,     ["auranames"] = {      "362401",     },     ["use_genericShowOn"] = true,     ["group_count"] = "0",     ["custom_hide"] = "timed",     ["showClones"] = false,     ["name_operator"] = "find('%s')",     ["use_debuffClass"] = false,     ["subeventSuffix"] = "_CAST_START",     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["use_spellId"] = true,     ["name"] = "Plasma Discharge",     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["useGroup_count"] = true,     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["subeventPrefix"] = "SPELL",     ["useExactSpellId"] = false,     ["use_tooltip"] = false,     ["ignoreSelf"] = true,     ["group_countOperator"] = ">",     ["use_absorbHealMode"] = true,     ["use_unit"] = true,     ["names"] = {      "Sacred Blade",     },     ["debuffType"] = "HARMFUL",     ["spellIds"] = {      283573,     },     ["useName"] = true,     ["duration"] = "3",     ["auraspellids"] = {     },     ["type"] = "aura2",     ["unevent"] = "auto",     ["unit"] = "player",     ["buffShowOn"] = "showOnActive",     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["matchesShowOn"] = "showOnActive",     ["remOperator"] = "<",     ["spellName"] = 0,     ["custom_type"] = "event",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "addons",     ["unit"] = "player",     ["use_stage"] = true,     ["event"] = "BigWigs Stage",     ["stage_operator"] = "==",     ["stage"] = "1",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "all",   ["activeTriggerMode"] = -10,  },  ["endAngle"] = 360,  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["version"] = 7,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_text_format_p_time_precision"] = 1,    ["text_text"] = "%p",    ["text_text_format_p_format"] = "Number",    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_text_format_p_decimal_precision"] = 1,    ["type"] = "subtext",    ["anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_shadowXOffset"] = 1,    ["text_shadowYOffset"] = -1,    ["text_text_format_n_format"] = "none",    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = true,    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_time_format"] = 0,    ["text_fontType"] = "OUTLINE",    ["text_fontSize"] = 16,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_round_type"] = "floor",   },  },  ["height"] = 120,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["encounterid"] = "2537",   ["talent2"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["class"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["crop_y"] = 0.41,  ["startAngle"] = 0,  ["useAdjustededMax"] = false,  ["fontSize"] = 12,  ["crop_x"] = 0.41,  ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",  ["backgroundColor"] = {   0.16078431372549,   1,   0,   0,  },  ["echoVersion"] = 1,  ["mirror"] = false,  ["useAdjustededMin"] = false,  ["regionType"] = "progresstexture",  ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",  ["blendMode"] = "BLEND",  ["uid"] = "JTGLsBLxHPc",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["slantMode"] = "INSIDE",  ["width"] = 120,  ["alpha"] = 0.9,  ["selfPoint"] = "CENTER",  ["compress"] = false,  ["semver"] = "1.0.6",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Torrment Circle",  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["authorOptions"] = {  },  ["config"] = {  },  ["inverse"] = false,  ["foregroundColor"] = {   0.40392156862745,   1,   0,   1,  },  ["orientation"] = "ANTICLOCKWISE",  ["conditions"] = {  },  ["information"] = {   ["ignoreOptionsEventErrors"] = false,  },  ["backgroundOffset"] = 0, }, ["(11) Echo Public - Jailer - Azeroth Health Bar"] = {  ["overlays"] = {   {    1,    0.082352941176471,    0,    0.60000002384186,   },   {    0.41960784313725,    1,    0.52549019607843,    0.60000002384186,   },  },  ["iconSource"] = -1,  ["xOffset"] = -763.0002746582,  ["yOffset"] = -157.99987792969,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 60,  ["sparkRotation"] = 0,  ["sparkRotationMode"] = "AUTO",  ["backgroundColor"] = {   0,   0,   0,   0.5,  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["custom_hide"] = "timed",     ["customVariables"] = "{\
  additionalProgress = 1,\
  hasPrediction = \"bool\",\
  currentPrediction = \"number\",\
  value = \"number\",\
}",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["custom"] = "-- UPDATE_UI_WIDGET, CLEU:SPELL_DAMAGE:SPELL_CAST_SUCCESS:SPELL_AURA_REMOVED, ENCOUNTER_START, ECHO_JAILER_AZEROTH_DAMAGE_SOON\
function(allstates, event, ...)\
  if event == \"ENCOUNTER_START\" then\
    aura_env.prediction = {}\
    aura_env.AddPrediction(0, 100)\
    aura_env.remainingBloodTicks = 8 * 3\
    aura_env.crackerCount = 0\
    aura_env.lastP3Tick = nil\
    \
    if aura_env.config.hideDefaultBar then\
      C_Timer.After(1, function()\
          if UIWidgetTopCenterContainerFrame and UIWidgetTopCenterContainerFrame:IsShown() then\
            UIWidgetTopCenterContainerFrame:Hide()\
          end\
      end)\
    end\
    \
    --[[\
    allstates[\"options\"] = {\
      show = true,\
      changed = true,\
      name = \"Azeroth's Health\",\
      progressType = \"static\",\
      value = math.random(1, 50),\
      total = 100,\
      currentPrediction = math.random(1, 100),\
      additionalProgress = {\
        -- Cost Overlay\
        {\
          direction = \"backward\",\
          width = 0\
        },\
        \
        -- Gain Overlay\
        {\
          direction = \"forward\",\
          width = 0\
        }\
      }\
    }\
    \
    return true\
]]\
  elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\
    local _, subEvent, _, _, sourceName, _, _ ,_, destName, _, _, spellID = ...\
    if subEvent and destName and spellID and subEvent == \"SPELL_DAMAGE\" and spellID == 366408 then\
      aura_env.lastSurging = aura_env.lastSurging or 0\
      local now = GetTime()\
      \
      if now ~= aura_env.lastSurging then\
        -- if aura_env.condensedSurging then\
        -- elogl(\"Azeroth Healthbar: Surging Azerite on #\" .. #aura_env.condensedSurging .. \" targets: \".. table.concat(aura_env.condensedSurging, \", \"))\
        -- end\
        \
        aura_env.condensedSurging = {}\
        aura_env.lastSurging = now\
        \
        aura_env.remainingBloodTicks = math.max(aura_env.remainingBloodTicks - 1, 0)\
        --elogl(\"Azeroth Healthbar: Remaining Ticks \" .. aura_env.remainingBloodTicks)\
      end\
      \
      table.insert(aura_env.condensedSurging, destName)\
    elseif subEvent and subEvent == \"SPELL_CAST_SUCCESS\" and spellID then\
      if spellID == 366374 then\
        -- Crusher on pull!\
        aura_env.AddPrediction(0, -85)\
        aura_env.AddPrediction(24, 21.252)\
        aura_env.AddPrediction(71, 21.252)\
        aura_env.AddPrediction(103, 21.252)\
        aura_env.AddPrediction(137, 21.252)\
      elseif spellID == 366678 then\
        -- Has casted Cracker, clear prediction\
        aura_env.crackerCount = aura_env.crackerCount + 1\
        aura_env.AddPrediction(0, -21.252)\
        \
        if aura_env.crackerCount == 1 then\
          aura_env.AddPrediction(25, 21.252)\
        elseif aura_env.crackerCount == 2 then\
          aura_env.AddPrediction(30, 21.252)\
        elseif aura_env.crackerCount == 3 then\
          aura_env.AddPrediction(39, 21.252)\
        elseif aura_env.crackerCount == 4 then\
          aura_env.AddPrediction(34, 21.252)\
        end\
        \
        local state = allstates[\":\"]\
        if state then\
          state.additionalProgress[1].width = (state.additionalProgress[1].width or 0) - aura_env.worldCrackerDamage\
          state.predictionValue = state.value - (state.additionalProgress[1].width or 0)\
          state.predictionValue = math.max(math.min(state.predictionValue, 100), 0)\
          state.hasPrediction = (state.predictionValue ~= state.value)\
          state.currentPrediction = aura_env.GetCurrentPrediction()\
          \
          return true\
        end\
      elseif spellID == 360373 then\
        aura_env.remainingBloodTicks = 0\
        aura_env.ClearFuturePredicitions()\
        \
        local state = allstates[\":\"]\
        if state then\
          state.predictionValue = state.value - (state.additionalProgress[1].width or 0)\
          state.predictionValue = math.max(math.min(state.predictionValue, 100), 0)\
          state.hasPrediction = (state.predictionValue ~= state.value)\
          state.currentPrediction = aura_env.GetCurrentPrediction()\
          \
          return true\
        end\
      elseif spellID == 363332 then\
        -- Unbreaking Grasp (P3 entered)\
        aura_env.AddPrediction(45.5, 10.626)\
        aura_env.AddPrediction(65.5, 10.626)\
        aura_env.AddPrediction(99.5, 21.252)\
        aura_env.AddPrediction(138, 10.626)\
      elseif spellID == 367051 then\
        -- Wold Shatterer (Hits on Azeroth on P3 entered)\
        aura_env.AddPrediction(0, -20)\
        aura_env.AddPrediction(1, -32)\
      end\
    elseif subEvent and subEvent == \"SPELL_AURA_REMOVED\" and spellID then\
      if spellID == 370718 and destName and UnitIsUnit(destName, \"player\") then\
        aura_env.AddPrediction(0, -1)\
        aura_env.lastP3Tick = GetTime()\
      end\
    end\
  elseif event == \"UPDATE_UI_WIDGET\" and ... then\
    local data = ...\
    \
    if data.widgetID == aura_env.widgetID then\
      local widgetData = C_UIWidgetManager.GetStatusBarWidgetVisualizationInfo(data.widgetID)\
      if not widgetData then\
        return false\
      end\
      \
      local state = allstates[\":\"] or {\
        show = true,\
        changed = true,\
        name = \"Azeroth's Health\",\
        progressType = \"static\",\
        value = 0,\
        total = 100,\
        currentPrediction = 0,\
        additionalProgress = {\
          -- Cost Overlay\
          {\
            direction = \"backward\",\
            width = false\
          }\
        }\
      }\
      \
      --elogl(string.format(\"Azeroth Healthbar: Updated %.1f -> %.1f\", state.value, widgetData.barValue))\
      \
      state.changed = true\
      state.value = widgetData.barValue\
      state.predictionValue = state.value - (state.additionalProgress[1].width or 0)\
      state.predictionValue = math.max(math.min(state.predictionValue, 100), 0)\
      state.hasPrediction = (state.predictionValue ~= state.value)\
      state.currentPrediction = aura_env.GetCurrentPrediction()\
      state.timeLeft = string.format(\"%ds\", (state.value - 10) * 2)\
      \
      allstates[\":\"] = state\
      return true\
    end\
  elseif event == \"ECHO_JAILER_AZEROTH_DAMAGE_SOON\" and ... then\
    local damage = ...\
    \
    local state = allstates[\":\"]\
    if state then\
      --elogl(\"Azeroth Healthbar: Damage soon \" .. damage)\
      \
      state.changed = true\
      state.additionalProgress[1].width = (state.additionalProgress[1].width or 0) + damage\
      state.predictionValue = state.value - (state.additionalProgress[1].width or 0)\
      state.predictionValue = math.max(math.min(state.predictionValue, 100), 0)\
      state.hasPrediction = (state.predictionValue ~= state.value)\
      state.currentPrediction = aura_env.GetCurrentPrediction()\
      \
      return true\
    end\
  elseif event == \"OPTIONS\" then\
    local value = math.random(25, 100)\
    local gainCost = math.random(1, 100)%2 == 0 and 20 or 0\
    \
    allstates[\"options\"] = {\
      show = true,\
      changed = true,\
      name = \"Azeroth's Health\",\
      progressType = \"static\",\
      value = value,\
      total = 100,\
      predictionValue = value - gainCost,\
      hasPrediction = gainCost ~= 0, \
      currentPrediction = math.random(1, 100),\
      timeLeft = \"18s\",\
      additionalProgress = {\
        -- Cost Overlay\
        {\
          direction = \"backward\",\
          width = gainCost\
        }\
      }\
    }\
    \
    return true\
  end\
end",     ["spellIds"] = {     },     ["events"] = "UPDATE_UI_WIDGET, CLEU:SPELL_DAMAGE:SPELL_CAST_SUCCESS:SPELL_AURA_REMOVED, ENCOUNTER_START, ECHO_JAILER_AZEROTH_DAMAGE_SOON",     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["names"] = {     },     ["unit"] = "player",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["use_remaining"] = true,     ["spellId"] = "366678",     ["remaining_operator"] = "<=",     ["event"] = "BigWigs Timer",     ["unit"] = "player",     ["use_spellId"] = true,     ["remaining"] = "3",     ["type"] = "addons",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "custom",     ["custom_type"] = "status",     ["duration"] = "1",     ["unit"] = "player",     ["custom"] = "function()\
  local now = GetTime()\
  \
  if aura_env.lastP3Tick then\
    local timeSinceLast = now - aura_env.lastP3Tick\
    if timeSinceLast >= 2 then\
      local overflow = timeSinceLast - 2\
      aura_env.AddPrediction(-overflow, -1)\
      \
      aura_env.lastP3Tick = now - overflow\
    end\
  end\
  \
  aura_env.lastTick = aura_env.lastTick or 0\
  if now >= (aura_env.lastTick + 1) then\
    aura_env.updatePrediction = true\
    aura_env.lastTick = now\
    \
    return true\
  end\
end",     ["check"] = "update",     ["custom_hide"] = "timed",     ["events"] = "ECHO_JAILER_HEALTHBAR_UPDATE_PREDICITION",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "addons",     ["unit"] = "player",     ["use_stage"] = true,     ["event"] = "BigWigs Stage",     ["stage_operator"] = "==",     ["stage"] = "3",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "custom",   ["customTriggerLogic"] = "function(t)\
  return t[1]\
end",   ["activeTriggerMode"] = -10,  },  ["icon_color"] = {   1,   1,   1,   1,  },  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["translateType"] = "custom",    ["scalex"] = 1,    ["colorB"] = 1,    ["colorG"] = 1,    ["use_translate"] = true,    ["type"] = "custom",    ["easeType"] = "none",    ["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\
  if aura_env.updatePrediction then\
    local percent = aura_env.GetCurrentPrediction()\
    local r = aura_env.GetTick(1)\
    if r then\
      r:SetTickPlacement(percent)\
    end\
    aura_env.updatePrediction = false\
  end\
  \
  return startX, startY\
  -- return startX + (progress * deltaX), startY + (progress * deltaY)\
end",    ["scaley"] = 1,    ["alpha"] = 0,    ["y"] = 0,    ["x"] = 0,    ["colorA"] = 1,    ["colorR"] = 1,    ["easeStrength"] = 3,    ["rotate"] = 0,    ["duration_type"] = "seconds",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["barColor"] = {   0,   0.43137254901961,   0.2,   1,  },  ["desaturate"] = false,  ["sparkOffsetY"] = 0,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["tick_blend_mode"] = "BLEND",    ["type"] = "subtick",    ["tick_xOffset"] = 0,    ["tick_desaturate"] = false,    ["automatic_length"] = false,    ["tick_thickness"] = 2,    ["tick_rotation"] = 0,    ["use_texture"] = false,    ["tick_color"] = {     1,     1,     1,     1,    },    ["tick_placement"] = "0",    ["tick_yOffset"] = 0,    ["tick_texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",    ["tick_visible"] = true,    ["tick_length"] = 38,    ["tick_mirror"] = false,    ["tick_placement_mode"] = "AtPercent",   },   {    ["type"] = "subforeground",   },   {    ["border_offset"] = 0,    ["border_anchor"] = "bar",    ["border_size"] = 2,    ["border_color"] = {     0,     0,     0,     1,    },    ["border_visible"] = true,    ["border_edge"] = "Square Full White",    ["type"] = "subborder",   },   {    ["text_text_format_p_time_precision"] = 1,    ["text_text"] = "%p%%",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_shadowXOffset"] = 0,    ["text_text_format_p_decimal_precision"] = 0,    ["type"] = "subtext",    ["anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_text_format_p_time_format"] = 0,    ["text_shadowYOffset"] = 0,    ["text_text_format_n_format"] = "none",    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "INNER_CENTER",    ["text_text_format_p_format"] = "Number",    ["text_visible"] = true,    ["text_fontSize"] = 18,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_round_type"] = "floor",   },   {    ["text_text_format_p_time_precision"] = 1,    ["text_text"] = "%p%% > %predictionValue%%",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["text_text_format_predictionValue_format"] = "none",    ["rotateText"] = "NONE",    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_decimal_precision"] = 0,    ["type"] = "subtext",    ["text_shadowXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_text_format_p_time_format"] = 0,    ["text_shadowYOffset"] = 0,    ["text_fontType"] = "OUTLINE",    ["text_wordWrap"] = "WordWrap",    ["text_visible"] = false,    ["text_anchorPoint"] = "INNER_CENTER",    ["text_text_format_p_format"] = "Number",    ["text_text_format_n_format"] = "none",    ["text_fontSize"] = 18,    ["anchorXOffset"] = 0,    ["text_text_format_p_round_type"] = "floor",   },   {    ["text_shadowXOffset"] = 0,    ["text_text"] = "%timeLeft",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "RIGHT",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["type"] = "subtext",    ["text_anchorXOffset"] = -2,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_shadowYOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "LEFT",    ["text_visible"] = false,    ["text_text_format_n_format"] = "none",    ["text_fontSize"] = 18,    ["anchorXOffset"] = 0,    ["text_text_format_timeLeft_format"] = "none",   },  },  ["height"] = 25,  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["size"] = {    ["multi"] = {    },   },  },  ["sparkBlendMode"] = "ADD",  ["useAdjustededMax"] = false,  ["selfPoint"] = "CENTER",  ["icon"] = false,  ["authorOptions"] = {   {    ["type"] = "toggle",    ["key"] = "hideDefaultBar",    ["desc"] = "Will hide the default UI widget.",    ["useDesc"] = true,    ["name"] = "Hide Default Bar",    ["default"] = false,    ["width"] = 2,   },  },  ["uid"] = "td5wa6jKVBc",  ["sparkOffsetX"] = 0,  ["smoothProgress"] = false,  ["useAdjustededMin"] = false,  ["regionType"] = "aurabar",  ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",  ["config"] = {   ["hideDefaultBar"] = false,  },  ["icon_side"] = "RIGHT",  ["overlayclip"] = true,  ["anchorFrameType"] = "SCREEN",  ["sparkHeight"] = 30,  ["texture"] = "Clean",  ["overlaysTexture"] = {   "Clean",   "Clean",  },  ["zoom"] = 0,  ["spark"] = false,  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Azeroth Health Bar",  ["frameStrata"] = 1,  ["alpha"] = 1,  ["width"] = 300,  ["sparkHidden"] = "NEVER",  ["sparkColor"] = {   1,   1,   1,   1,  },  ["inverse"] = false,  ["sparkWidth"] = 10,  ["orientation"] = "HORIZONTAL",  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "hasPrediction",     ["value"] = 1,    },    ["changes"] = {     {      ["property"] = "sub.5.text_visible",     },     {      ["value"] = true,      ["property"] = "sub.6.text_visible",     },    },   },   {    ["check"] = {     ["trigger"] = 2,     ["variable"] = "show",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = {       ["custom"] = "local damage = aura_env.worldCrackerDamage\
C_Timer.After(0, function()\
    WeakAuras.ScanEvents(\"ECHO_JAILER_AZEROTH_DAMAGE_SOON\", damage)\
end)",      },      ["property"] = "customcode",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "OR",     ["checks"] = {      {       ["trigger"] = 1,       ["variable"] = "currentPrediction",       ["op"] = "<=",       ["value"] = "0.1",      },      {       ["trigger"] = 1,       ["variable"] = "currentPrediction",       ["op"] = ">=",       ["value"] = "99.9",      },     },    },    ["changes"] = {     {      ["property"] = "sub.2.tick_visible",     },    },   },   {    ["check"] = {     ["trigger"] = -2,     ["variable"] = "AND",     ["checks"] = {      {       ["trigger"] = 4,       ["variable"] = "show",       ["value"] = 1,      },      {       ["trigger"] = 1,       ["variable"] = "value",       ["value"] = "10",       ["op"] = ">=",      },     },    },    ["changes"] = {     {      ["value"] = true,      ["property"] = "sub.7.text_visible",     },    },   },  },  ["information"] = {  },  ["actions"] = {   ["start"] = {    ["do_custom"] = false,    ["custom"] = "local r = aura_env.region\
--ViragDevTool_AddData(r, \"Health Bar Region\")",   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "local aura_env = aura_env\
\
aura_env.widgetID = 3554\
aura_env.remainingBloodTicks = 8 * 3\
aura_env.bloodTickHealth = 3.542\
aura_env.worldCrackerDamage = 20\
\
aura_env.updatePrediction = false\
aura_env.prediction = {}\
\
function aura_env.AddPrediction(after, value)\
  table.insert(aura_env.prediction, {\
      ts = GetTime() + after,\
      value = value\
  })\
  \
  if #aura_env.prediction >= 2 then\
    local last = aura_env.prediction[#aura_env.prediction]\
    local prev = aura_env.prediction[#aura_env.prediction - 1]\
    \
    if prev.ts > last.ts then\
      -- Only sort if last two are in the wrong order\
      -- Due to previous sorting and inserting order, unsorted lists \
      -- are always detectable by this\
      table.sort(aura_env.prediction, function(a, b)\
          return a.ts < b.ts\
      end)\
    end\
  end\
  \
  if after == 0 then\
    aura_env.updatePrediction = true\
  end\
end\
\
function aura_env.GetCurrentPrediction()\
  local now = GetTime()\
  local sum = 0\
  \
  for _, entry in ipairs(aura_env.prediction) do\
    if entry.ts <= now then\
      sum = math.max(math.min(sum + entry.value, 100), 0)\
    end\
  end\
  \
  return sum\
end\
\
function aura_env.ClearFuturePredicitions()\
  local now = GetTime()\
  local newPrediction = {}\
  \
  for _, entry in ipairs(aura_env.prediction) do\
    if entry.ts <= now then\
      table.insert(newPrediction, entry)\
    end\
  end\
  \
  aura_env.prediction = newPrediction\
end\
\
function aura_env.GetTick(tick)\
  local sr = aura_env.region.subRegions\
  local count = 0\
  for _, tickRegion in ipairs(sr) do\
    if tickRegion.type == \"subtick\" then\
      count = count + 1\
      if count == tick then\
        return tickRegion\
      end\
    end\
  end\
end",   },   ["finish"] = {   },  }, }, [" (11) Echo Public - Jailer - Torrment Circle P2 Onwards"] = {  ["user_y"] = 0,  ["user_x"] = 0,  ["authorOptions"] = {  },  ["yOffset"] = -10,  ["anchorPoint"] = "CENTER",  ["desaturateBackground"] = false,  ["sameTexture"] = false,  ["url"] = "",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = 363130,     ["auranames"] = {      "362401",     },     ["matchesShowOn"] = "showOnActive",     ["group_count"] = "0",     ["custom_hide"] = "timed",     ["showClones"] = false,     ["name_operator"] = "find('%s')",     ["use_debuffClass"] = false,     ["useExactSpellId"] = false,     ["fetchTooltip"] = false,     ["event"] = "Cast",     ["use_spellId"] = true,     ["name"] = "Plasma Discharge",     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["useGroup_count"] = true,     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["names"] = {      "Sacred Blade",     },     ["custom_type"] = "event",     ["use_tooltip"] = false,     ["ignoreSelf"] = true,     ["group_countOperator"] = ">",     ["use_absorbHealMode"] = true,     ["subeventPrefix"] = "SPELL",     ["use_unit"] = true,     ["debuffType"] = "HARMFUL",     ["spellIds"] = {      283573,     },     ["useName"] = true,     ["duration"] = "3",     ["auraspellids"] = {     },     ["type"] = "aura2",     ["unevent"] = "auto",     ["unit"] = "player",     ["buffShowOn"] = "showOnActive",     ["realSpellName"] = 0,     ["use_spellName"] = true,     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["use_genericShowOn"] = true,     ["remOperator"] = "<",     ["spellName"] = 0,     ["subeventSuffix"] = "_CAST_START",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["rem"] = "3",     ["spellId"] = "362401",     ["auranames"] = {      "362401",     },     ["duration"] = "2.5",     ["destUnit"] = "player",     ["group_count"] = "0",     ["group_countOperator"] = ">",     ["showClones"] = false,     ["name_operator"] = "find('%s')",     ["use_debuffClass"] = false,     ["custom_type"] = "event",     ["fetchTooltip"] = false,     ["event"] = "Combat Log",     ["use_spellId"] = true,     ["name"] = "Plasma Discharge",     ["check"] = "event",     ["combineMatches"] = "showLowest",     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
    spellID = \"number\",\
}",     ["useGroup_count"] = true,     ["use_destUnit"] = true,     ["use_absorbMode"] = true,     ["genericShowOn"] = "showOnCooldown",     ["use_unit"] = true,     ["subeventSuffix"] = "_AURA_REMOVED",     ["use_tooltip"] = false,     ["ignoreSelf"] = true,     ["useExactSpellId"] = false,     ["spellName"] = 0,     ["names"] = {      "Sacred Blade",     },     ["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",     ["debuffType"] = "HARMFUL",     ["use_genericShowOn"] = true,     ["type"] = "combatlog",     ["useName"] = true,     ["unevent"] = "auto",     ["matchesShowOn"] = "showOnActive",     ["buffShowOn"] = "showOnActive",     ["unit"] = "player",     ["auraspellids"] = {     },     ["realSpellName"] = 0,     ["use_spellName"] = false,     ["spellIds"] = {      283573,     },     ["subeventPrefix"] = "SPELL",     ["remOperator"] = "<",     ["use_absorbHealMode"] = true,     ["custom_hide"] = "timed",     ["useRem"] = false,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "addons",     ["unit"] = "player",     ["use_stage"] = true,     ["event"] = "BigWigs Stage",     ["stage_operator"] = ">",     ["stage"] = "1",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "custom",   ["customTriggerLogic"] = "function(t)\
    return (t[1] or t[2]) and t[3]\
end",   ["activeTriggerMode"] = -10,  },  ["endAngle"] = 360,  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["version"] = 7,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_shadowXOffset"] = 1,    ["text_text"] = "%p",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_p_format"] = "Number",    ["text_text_format_p_decimal_precision"] = 1,    ["type"] = "subtext",    ["anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_text_format_p_time_precision"] = 1,    ["text_shadowYOffset"] = -1,    ["text_text_format_n_format"] = "none",    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_time_format"] = 0,    ["text_visible"] = true,    ["text_fontSize"] = 16,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_round_type"] = "floor",   },  },  ["height"] = 120,  ["desaturateForeground"] = false,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",   ["encounterid"] = "2537",   ["talent2"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["selfPoint"] = "CENTER",  ["useAdjustededMax"] = false,  ["fontSize"] = 12,  ["crop_x"] = 0.41,  ["startAngle"] = 0,  ["backgroundColor"] = {   0.16078431372549,   1,   0,   0,  },  ["foregroundColor"] = {   0.098039215686275,   1,   0,   1,  },  ["mirror"] = false,  ["useAdjustededMin"] = false,  ["regionType"] = "progresstexture",  ["crop_y"] = 0.41,  ["blendMode"] = "BLEND",  ["uid"] = "xYCYyqhVyAb",  ["echoVersion"] = 3,  ["slantMode"] = "INSIDE",  ["anchorFrameType"] = "SCREEN",  ["alpha"] = 0.9,  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["tocversion"] = 90200,  ["semver"] = "1.0.6",  ["compress"] = false,  ["id"] = "(11) Echo Public - Jailer - Torrment Circle P2 Onwards",  ["xOffset"] = 0,  ["frameStrata"] = 1,  ["width"] = 120,  ["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",  ["config"] = {  },  ["inverse"] = false,  ["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",  ["orientation"] = "ANTICLOCKWISE",  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 2,     ["variable"] = "show",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = true,      ["property"] = "inverse",     },     {      ["value"] = {       0,       0.83137254901961,       0.34901960784314,       1,      },      ["property"] = "foregroundColor",     },    },   },  },  ["information"] = {   ["ignoreOptionsEventErrors"] = false,  },  ["backgroundOffset"] = 0, }, ["(11) Echo Public - Jailer - Mass Dispel Reminder"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "MASS DISPEL",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 3,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "combatlog",     ["spellId"] = "366284",     ["auraspellids"] = {      "362206",     },     ["subeventSuffix"] = "_CAST_SUCCESS",     ["duration"] = "20",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["destUnit"] = "player",     ["use_spellId"] = true,     ["spellIds"] = {     },     ["useExactSpellId"] = true,     ["unit"] = "player",     ["use_destUnit"] = false,     ["names"] = {     },     ["debuffType"] = "HARMFUL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["debuffType"] = "HELPFUL",     ["use_remaining"] = false,     ["text_operator"] = "find('%s')",     ["text"] = "Massive Bang",     ["use_text"] = true,     ["use_genericShowOn"] = true,     ["genericShowOn"] = "showOnCooldown",     ["unit"] = "player",     ["realSpellName"] = "Mass Dispel",     ["remaining"] = "5",     ["use_spellName"] = true,     ["remaining_operator"] = "<=",     ["event"] = "Cooldown Progress (Spell)",     ["type"] = "spell",     ["use_track"] = true,     ["spellName"] = 32375,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["debuffType"] = "HELPFUL",     ["type"] = "spell",     ["text_operator"] = "find('%s')",     ["text"] = "Massive Bang",     ["use_text"] = true,     ["use_genericShowOn"] = true,     ["genericShowOn"] = "showOnReady",     ["unit"] = "player",     ["realSpellName"] = "Mass Dispel",     ["remaining"] = "5",     ["use_spellName"] = true,     ["remaining_operator"] = "<=",     ["event"] = "Cooldown Progress (Spell)",     ["use_remaining"] = true,     ["use_track"] = true,     ["spellName"] = 32375,    },    ["untrigger"] = {    },   },   ["disjunctive"] = "custom",   ["customTriggerLogic"] = "function(t)\
  return t[1] and (t[2] or t[3])\
end",   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["selfPoint"] = "BOTTOM",  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_namerealm"] = true,   ["use_encounterid"] = true,   ["namerealm"] = "Solwinas",   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 43,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["displayText_format_p_time_precision"] = 1,  ["wordWrap"] = "WordWrap",  ["yOffset"] = 180,  ["fixedWidth"] = 200,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Mass Dispel Reminder",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["color"] = {   1,   1,   1,   1,  },  ["uid"] = "bgnTCiOCh77",  ["authorOptions"] = {  },  ["config"] = {  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["(11) Echo Public - Jailer - Immune To Bombs Kinda"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = -1,  ["color"] = {   1,   1,   1,   1,  },  ["displayText"] = "BOMB IMMUNE",  ["yOffset"] = 150,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 5,  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["cooldownEdge"] = false,  ["icon"] = true,  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = "360281",     ["duration"] = "29",     ["unit"] = "player",     ["destUnit"] = "player",     ["debuffType"] = "HELPFUL",     ["type"] = "custom",     ["subeventSuffix"] = "_AURA_REMOVED",     ["custom_hide"] = "timed",     ["event"] = "Combat Log",     ["custom"] = "function(allstates, event, ...)\
    if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
        local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
        \
        if(spellID == 360281)then\
            if(subEvent == \"SPELL_AURA_APPLIED\")then\
                local last = aura_env.last or 0;\
                if(last + 10 < GetTime())then\
                    aura_env.last = GetTime();\
                    \
                    local state = allstates[\"\"];\
                    if(state)then\
                        state.changed = true;\
                        state.show = false;\
                        \
                        return true; \
                    end\
                end\
            elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
                if(UnitIsUnit(\"player\",destName))then\
                    allstates[\"\"] = {\
                        show = true,\
                        changed = true,\
                        progressType = \"static\",\
                        value = 1,\
                        total = 1,\
                    };\
                    \
                    return true;\
                end \
            end\
        end\
    end\
end",     ["subeventPrefix"] = "SPELL",     ["use_spellId"] = true,     ["spellIds"] = {     },     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["use_destUnit"] = true,     ["names"] = {     },     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["type"] = "addons",     ["unit"] = "player",     ["use_stage"] = true,     ["event"] = "BigWigs Stage",     ["stage_operator"] = "==",     ["stage"] = "1",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "all",   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["desaturate"] = false,  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 64,  ["load"] = {   ["use_encounterid"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 18,  ["shadowXOffset"] = 1,  ["wordWrap"] = "WordWrap",  ["information"] = {  },  ["conditions"] = {  },  ["regionType"] = "text",  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["automaticWidth"] = "Auto",  ["xOffset"] = 0,  ["uid"] = "VK07dC1TzW8",  ["cooldownTextDisabled"] = false,  ["displayText_format_p_time_precision"] = 1,  ["anchorFrameType"] = "SCREEN",  ["alpha"] = 1,  ["zoom"] = 0,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Immune To Bombs Kinda",  ["shadowYOffset"] = -1,  ["frameStrata"] = 1,  ["width"] = 64,  ["authorOptions"] = {  },  ["config"] = {  },  ["inverse"] = false,  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["cooldown"] = false,  ["selfPoint"] = "CENTER", }, ["(11) Echo Public - Jailer - Tank Soak Assignment"] = {  ["outline"] = "OUTLINE",  ["authorOptions"] = {  },  ["displayText"] = "SOAK %p",  ["customText"] = "function()\
    return aura_env.state.marker and (\"{rt\"..aura_env.state.marker..\"}\") or \"{rt2}\";\
end",  ["yOffset"] = 120,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 9,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {    ["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RingingPhone.ogg",    ["do_sound"] = true,   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "local aura_env = aura_env;\
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
  local keyword = \"#soak\"\
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
end",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["custom_hide"] = "timed",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["custom_type"] = "stateupdate",     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 363893)then\
      aura_env.count = aura_env.count + 1;\
      \
      local duration = 3.5;\
      for marker,guy in ipairs(aura_env.rotation[aura_env.count])do\
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
end",     ["names"] = {     },     ["check"] = "event",     ["events"] = "READY_CHECK ENCOUNTER_START EXRT_NOTE_UPDATE CLEU:SPELL_CAST_SUCCESS",     ["spellIds"] = {     },     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "preset",    ["easeType"] = "none",    ["duration_type"] = "seconds",    ["preset"] = "alphaPulse",    ["easeStrength"] = 3,   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["displayText_format_c1SOAK_format"] = "none",  ["fontSize"] = 45,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["load"] = {   ["zoneIds"] = "2051",   ["size"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2429",   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["use_encounterid"] = false,  },  ["wordWrap"] = "WordWrap",  ["displayText_format_p_time_precision"] = 1,  ["conditions"] = {  },  ["displayText_format_c1_format"] = "none",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Tank Soak Assignment",  ["uid"] = "1Jn3uBWY9kG",  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = 0,  ["config"] = {  },  ["color"] = {   1,   1,   1,   1,  },  ["shadowYOffset"] = -1,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, ["(11) Echo Public - Jailer - Rune of Damnation  Traffic Light"] = {  ["iconSource"] = -1,  ["xOffset"] = 0,  ["yOffset"] = -0.0001220703125,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 10,  ["cooldownSwipe"] = true,  ["customTextUpdate"] = "update",  ["url"] = "",  ["icon"] = true,  ["triggers"] = {   {    ["trigger"] = {     ["events"] = "CLEU:SPELL_AURA_REMOVED:SPELL_AURA_APPLIED",     ["use_unit"] = true,     ["spellId"] = "360281",     ["auranames"] = {      "360281",      "Rune of Damnation",     },     ["unit"] = "player",     ["use_genericShowOn"] = true,     ["genericShowOn"] = "showOnCooldown",     ["subeventPrefix"] = "SPELL",     ["destUnit"] = "player",     ["duration"] = "5.8",     ["debuffType"] = "HARMFUL",     ["custom"] = "function(allstates, event, ...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(spellID == 360281 and UnitIsUnit(\"player\",destName))then\
      elog(\"Did the thing\");\
      if(subEvent == \"SPELL_AURA_APPLIED\")then\
        allstates[\"\"] = {\
          changed = true,\
          show = true,\
          progressType = \"timed\",\
          expirationTime = GetTime() + 5.5,\
          duration = 5.5,\
        };\
      elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
        local state = allstates[\"\"];\
        if(state)then\
          state.changed = true;\
          state.show = false; \
        end\
      end\
      \
      return true;\
    end\
  end\
end",     ["use_spellName"] = false,     ["use_destName"] = false,     ["type"] = "custom",     ["spellName"] = 0,     ["use_destNpcId"] = false,     ["useName"] = true,     ["use_absorbHealMode"] = true,     ["useExactSpellId"] = false,     ["names"] = {     },     ["use_absorbMode"] = true,     ["event"] = "Combat Log",     ["subeventSuffix"] = "_AURA_APPLIED",     ["realSpellName"] = 0,     ["use_spellId"] = true,     ["spellIds"] = {     },     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["use_destUnit"] = true,     ["use_track"] = true,     ["customVariables"] = "{\
    expirationTime = true,\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["stickyDuration"] = false,  ["discrete_rotation"] = 0,  ["version"] = 5,  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "%p",    ["text_text_format_p_format"] = "timed",    ["anchorXOffset"] = 0,    ["text_selfPoint"] = "TOP",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["text_text_format_1.tooltip1_format"] = "none",    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_text_format_p_time_precision"] = 1,    ["text_anchorXOffset"] = 0,    ["type"] = "subtext",    ["text_text_format_tooltip2_format"] = "none",    ["text_color"] = {     0.98823529411765,     0.99607843137255,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_shadowYOffset"] = 0,    ["text_anchorYOffset"] = 0,    ["text_visible"] = true,    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_tooltip1_format"] = "none",    ["text_text_format_p_time_format"] = 0,    ["text_fontSize"] = 16,    ["text_text_format_1.ttoltip1_format"] = "none",    ["text_text_format_p_time_dynamic_threshold"] = 60,   },   {    ["text_text_format_p_time_format"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "WAIT",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "BOTTOM",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_shadowXOffset"] = 0,    ["anchorXOffset"] = 0,    ["type"] = "subtext",    ["text_anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_shadowYOffset"] = 0,    ["text_anchorYOffset"] = 0,    ["text_visible"] = true,    ["text_text_format_P_format"] = "none",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_format"] = "timed",    ["text_wordWrap"] = "WordWrap",    ["text_fontSize"] = 14,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_time_precision"] = 1,   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "READY",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "BOTTOM",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_p_time_precision"] = 1,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["type"] = "subtext",    ["text_anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_anchorYOffset"] = 0,    ["text_shadowYOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_text_format_P_format"] = "none",    ["text_visible"] = false,    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_format"] = "timed",    ["text_fontType"] = "OUTLINE",    ["text_fontSize"] = 14,    ["anchorXOffset"] = 0,    ["text_text_format_p_time_format"] = 0,   },   {    ["text_shadowXOffset"] = 0,    ["text_text_format_s_format"] = "none",    ["text_text"] = "JUMP",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "BOTTOM",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_p_time_precision"] = 1,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["type"] = "subtext",    ["text_anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Friz Quadrata TT",    ["text_anchorYOffset"] = 0,    ["text_shadowYOffset"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_text_format_P_format"] = "none",    ["text_visible"] = false,    ["text_anchorPoint"] = "CENTER",    ["text_text_format_p_format"] = "timed",    ["text_fontType"] = "OUTLINE",    ["text_fontSize"] = 14,    ["anchorXOffset"] = 0,    ["text_text_format_p_time_format"] = 0,   },  },  ["height"] = 100,  ["rotate"] = true,  ["load"] = {   ["ingroup"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["role"] = {    ["single"] = "TANK",    ["multi"] = {     ["TANK"] = true,    },   },   ["use_encounterid"] = true,   ["difficulty"] = {    ["multi"] = {    },   },   ["race"] = {    ["multi"] = {    },   },   ["faction"] = {    ["multi"] = {    },   },   ["pvptalent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent2"] = {    ["multi"] = {    },   },   ["zoneIds"] = "",  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["desaturate"] = false,  ["cooldown"] = true,  ["mirror"] = false,  ["displayIcon"] = 236249,  ["regionType"] = "texture",  ["rotation"] = 0,  ["blendMode"] = "BLEND",  ["selfPoint"] = "CENTER",  ["cooldownTextDisabled"] = false,  ["config"] = {  },  ["authorOptions"] = {  },  ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White",  ["anchorFrameType"] = "SCREEN",  ["zoom"] = 0,  ["semver"] = "1.0.4",  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Rune of Damnation  Traffic Light",  ["alpha"] = 1,  ["frameStrata"] = 1,  ["width"] = 100,  ["auto"] = true,  ["uid"] = "a(qvXvQybKX",  ["inverse"] = false,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["color"] = {   1,   0,   0,   0.24000000953674,  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["op"] = "<=",     ["value"] = "1",    },    ["changes"] = {     {      ["value"] = {       0.85882352941176,       1,       0,       0.44999998807907,      },      ["property"] = "color",     },     {      ["value"] = true,      ["property"] = "sub.4.text_visible",     },     {      ["value"] = false,      ["property"] = "sub.5.text_visible",     },     {      ["property"] = "sub.3.text_visible",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["value"] = "0",     ["op"] = "<=",    },    ["changes"] = {     {      ["value"] = {       0.07843137254902,       1,       0,       0.44999998807907,      },      ["property"] = "color",     },     {      ["value"] = false,      ["property"] = "sub.4.text_visible",     },     {      ["value"] = true,      ["property"] = "sub.5.text_visible",     },     {      ["property"] = "sub.3.text_visible",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["value"] = "3",     ["op"] = "<=",    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Amy\\3.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["op"] = "<=",     ["value"] = "2",    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Amy\\2.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["value"] = "1",     ["op"] = "<=",    },    ["changes"] = {     {      ["value"] = {       ["sound_type"] = "Play",       ["sound"] = "Interface\\AddOns\\BigWigs\\Media\\Sounds\\Amy\\1.ogg",       ["sound_channel"] = "Master",      },      ["property"] = "sound",     },    },   },  },  ["information"] = {   ["ignoreOptionsEventErrors"] = true,  },  ["cooldownEdge"] = false, },});
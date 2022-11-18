local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ ["Echo Public - Volatile Charges v3 - Duration"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "%p",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HELPFUL",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["names"] = {     },     ["spellIds"] = {     },     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["custom"] = "function(allstates, event, ...)\
    --ECHO_VOLATILE_CHARGE_PICKUP ECHO_VOLATILE_CHARGE_DROPOFF ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED ECHO_VOLATILE_CHARGES_INIT\
    if(...)then\
        if(event == \"ECHO_VOLATILE_CHARGES_INIT\")then\
            local rotation = ...;\
            for i,player in ipairs(rotation)do\
                if(UnitIsUnit(\"player\",player))then\
                    \
                    for i,state in pairs(allstates)do\
                        state.changed = true;\
                        state.show = false; \
                    end\
                    \
                    aura_env.myGroup = {};\
                    \
                    for i,player in ipairs(rotation)do\
                        aura_env.myGroup[player] = i;\
                        \
                        allstates[i] = {\
                            changed = true,\
                            show = true,\
                            progressType = \"timed\",\
                            expirationTime = GetTime(),\
                            duration = 0,\
                            offsetX = -40,\
                            offsetY = 20 * (i-1),\
                        };\
                    end\
                    \
                    \
                    return true;\
                end\
            end\
        else\
            local state = aura_env.myGroup and allstates[aura_env.myGroup[...]];\
            if(state)then\
                state.changed = true;\
                if(event == \"ECHO_VOLATILE_CHARGE_PICKUP\")then\
                    state.expirationTime = GetTime() + 10;\
                    state.duration = 10;\
                elseif(event == \"ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED\")then\
                    state.expirationTime = GetTime() + 16;\
                    state.duration = 16;\
                end\
                \
                return true;\
            end\
        end\
    end\
end",     ["events"] = "ECHO_VOLATILE_CHARGE_PICKUP ECHO_VOLATILE_CHARGE_DROPOFF ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED ECHO_VOLATILE_CHARGES_INIT",     ["customVariables"] = "{\
    expirationTime = true,\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "Number",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["displayText_format_p_gcd_channel"] = false,  ["displayText_format_p_gcd_cast"] = false,  ["displayText_format_p_round_type"] = "floor",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_never"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 20,  ["displayText_format_p_gcd_hide_zero"] = false,  ["displayText_format_p_gcd_gcd"] = true,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["font"] = "Expressway",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["displayText_format_p_time_precision"] = 1,  ["fixedWidth"] = 200,  ["shadowYOffset"] = -1,  ["displayText_format_p_time_dynamic_threshold"] = 0,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "Echo Public - Volatile Charges v3 - Duration",  ["authorOptions"] = {  },  ["displayText_format_p_decimal_precision"] = 0,  ["anchorFrameType"] = "SCREEN",  ["config"] = {  },  ["uid"] = "ySRUDD(QB43",  ["frameStrata"] = 1,  ["color"] = {   1,   1,   1,   1,  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "expirationTime",     ["value"] = "0",     ["op"] = "==",    },    ["changes"] = {     {      ["value"] = {       1,       1,       1,       0,      },      ["property"] = "color",     },    },   },  },  ["information"] = {  },  ["selfPoint"] = "BOTTOM", }, ["Echo Public - Volatile Charges v3 - BombDropped"] = {  ["outline"] = "OUTLINE",  ["iconSource"] = 0,  ["authorOptions"] = {  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["cooldownSwipe"] = true,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["cooldownEdge"] = false,  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HELPFUL",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["names"] = {     },     ["events"] = "ECHO_VOLATILE_CHARGE_PICKUP ECHO_VOLATILE_CHARGE_DROPOFF ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED ECHO_VOLATILE_CHARGES_INIT UNIT_FLAGS",     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["spellIds"] = {     },     ["custom"] = "function(allstates, event, ...)\
  --ECHO_VOLATILE_CHARGE_PICKUP ECHO_VOLATILE_CHARGE_DROPOFF ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED ECHO_VOLATILE_CHARGES_INIT\
  if(...)then\
    if(event == \"ECHO_VOLATILE_CHARGES_INIT\")then\
      local rotation = ...;\
      for i,player in ipairs(rotation)do\
        if(UnitIsUnit(\"player\",player))then\
          \
          for i,state in pairs(allstates)do\
            state.changed = true;\
            state.show = false; \
          end\
          \
          aura_env.myGroup = {};\
          \
          for i,player in ipairs(rotation)do\
            aura_env.myGroup[player] = i;\
          end\
          \
          break\
        end\
      end\
    else\
      local ourGroup = aura_env.myGroup and aura_env.myGroup[...];\
      if(ourGroup)then\
        if(event == \"ECHO_VOLATILE_CHARGE_PICKUP\")then\
          local state = allstates[\"\"];\
          if(state)then\
            state.show = false;\
            state.changed = true;\
            \
            return true;\
          end\
        elseif(event == \"ECHO_VOLATILE_CHARGE_DROPOFF\")then\
          allstates[\"\"] = {\
            show = true;\
            changed = true;\
            \
            offsetX = 70,\
            offsetY = 20,\
            \
            progressType = \"timed\",\
            expirationTime = GetTime() + 10,\
            duration = 10,\
            \
            autoHide = true,\
          };\
          \
          return true;\
          \
        end\
        \
      end\
    end\
  end\
end",     ["customVariables"] = "{\
    pickedUp = \"timer\",\
    debuff = \"timer\",\
    isDead = \"bool\",\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["keepAspectRatio"] = false,  ["wordWrap"] = "WordWrap",  ["desaturate"] = false,  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 40,  ["load"] = {   ["use_never"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 12,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["shadowXOffset"] = 1,  ["information"] = {  },  ["displayIcon"] = 237290,  ["automaticWidth"] = "Auto",  ["regionType"] = "icon",  ["yOffset"] = 0,  ["color"] = {   1,   1,   1,   1,  },  ["config"] = {  },  ["xOffset"] = 0,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_p_time_precision"] = 1,  ["frameStrata"] = 1,  ["selfPoint"] = "BOTTOM",  ["zoom"] = 0,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "Echo Public - Volatile Charges v3 - BombDropped",  ["cooldownTextDisabled"] = false,  ["alpha"] = 1,  ["width"] = 40,  ["displayText"] = "",  ["uid"] = "fQLDHkEhYfL",  ["inverse"] = false,  ["icon"] = true,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["cooldown"] = true,  ["fixedWidth"] = 200, }, ["Echo Public - Volatile Charges v3 - Player"] = {  ["outline"] = "OUTLINE",  ["xOffset"] = 0,  ["displayText"] = "%unit",  ["yOffset"] = 0,  ["displayText_format_unit_realm_name"] = "never",  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Fixed",  ["displayText_format_unit_abbreviate"] = true,  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["debuffType"] = "HELPFUL",     ["event"] = "Health",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["names"] = {     },     ["custom"] = "function(allstates, event, ...)\
  --ECHO_VOLATILE_CHARGE_PICKUP ECHO_VOLATILE_CHARGE_DROPOFF ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED ECHO_VOLATILE_CHARGES_INIT\
  if(...)then\
    if(event == \"ECHO_VOLATILE_CHARGES_INIT\")then\
      local rotation = ...;\
      for i,player in ipairs(rotation)do\
        if(UnitIsUnit(\"player\",player))then\
          \
          for i,state in pairs(allstates)do\
            state.changed = true;\
            state.show = false; \
          end\
          \
          aura_env.myGroup = {};\
          \
          for i,player in ipairs(rotation)do\
            aura_env.myGroup[player] = i;\
            \
            allstates[i] = {\
              changed = true,\
              show = true,\
              progressType = \"timed\",\
              expirationTime = GetTime(),\
              duration = 0,\
              offsetX = 20,\
              offsetY = 20 * (i-1),\
              unit = player,\
              \
              pickedUp = 0,\
              debuff = 0,\
              isDead = false,\
            };\
          end\
          \
          \
          return true;\
        end\
      end\
    elseif(event == \"UNIT_HEALTH\")then\
      local unit = UnitName(...);\
      if(unit)then\
        local state = aura_env.myGroup and aura_env.myGroup[unit];\
        if(state)then\
          state.changed = true;\
          state.isDead = UnitHealth(unit) <= 0;\
          \
          return true; \
        end\
      end\
    else\
      local state = aura_env.myGroup and allstates[aura_env.myGroup[...]];\
      if(state)then\
        state.changed = true;\
        if(event == \"ECHO_VOLATILE_CHARGE_PICKUP\")then\
          state.pickedUp = GetTime() + 10;\
        elseif(event == \"ECHO_VOLATILE_CHARGE_DROPOFF\")then\
          state.pickedUp = 0;\
        elseif(event == \"ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED\")then\
          state.debuff = GetTime() + 16;\
        elseif(event == \"ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED\")then\
          state.debuff = GetTime() + 0;\
        end\
        \
        return true;\
      end\
    end\
  end\
end",     ["custom_type"] = "stateupdate",     ["check"] = "event",     ["spellIds"] = {     },     ["events"] = "ECHO_VOLATILE_CHARGE_PICKUP ECHO_VOLATILE_CHARGE_DROPOFF ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED ECHO_VOLATILE_CHARGES_INIT UNIT_FLAGS",     ["customVariables"] = "{\
    pickedUp = \"timer\",\
    debuff = \"timer\",\
    isDead = \"bool\",\
}",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Expressway",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["use_never"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["fontSize"] = 20,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["selfPoint"] = "BOTTOM",  ["wordWrap"] = "Elide",  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "debuff",     ["value"] = "0",     ["op"] = ">",    },    ["changes"] = {     {      ["value"] = {       0.97254901960784,       0.34117647058824,       0.34117647058824,       0.8200000077486,      },      ["property"] = "color",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "pickedUp",     ["op"] = ">",     ["value"] = "0",    },    ["changes"] = {     {      ["value"] = {       1,       0.84313725490196,       0.43921568627451,       0.8200000077486,      },      ["property"] = "color",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "isDead",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = {       0.5843137254902,       0.5843137254902,       0.5843137254902,       0.8200000077486,      },      ["property"] = "color",     },    },   },  },  ["displayText_format_unit_abbreviate_max"] = 6,  ["displayText_format_unit_color"] = "none",  ["displayText_format_p_time_precision"] = 1,  ["anchorPoint"] = "CENTER",  ["uid"] = "Ro3tcsL72pn",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "Echo Public - Volatile Charges v3 - Player",  ["color"] = {   1,   1,   1,   1,  },  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["displayText_format_unit_format"] = "Unit",  ["config"] = {  },  ["authorOptions"] = {  },  ["shadowYOffset"] = -1,  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 100,  ["information"] = {  },  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  }, }, ["(07) Echo Public - Halondrus - Volatile Charges Driver v3"] = {  ["outline"] = "OUTLINE",  ["color"] = {   1,   1,   1,   1,  },  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 8,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["automaticWidth"] = "Auto",  ["actions"] = {   ["start"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "local aura_env = aura_env or {}\
\
aura_env.rotations = {};\
aura_env.backups = {};\
\
aura_env.volatileChargeSpellID = 368969--17;\
aura_env.debuffSpellID = 368961--121557;\
aura_env.debuffDuration = 16--15;\
aura_env.boomDuration = 10;\
\
aura_env.markers = {6,4,3,7,1,2,5,8};\
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
  aura_env.rotations2 = {};\
  \
  local noteText = VExRT and VExRT.Note.Text1\
  if not noteText then\
    aura_env.printError(\"Exosus note not found\")\
    return \
  end\
  \
  local keyword = \"#vc\"\
  local keyword2 = \"#vc2\"\
  \
  local lines = {strsplit(\"\\n\",noteText)}\
  for lineNo, line in ipairs(lines) do\
    if line:sub(1, keyword:len()) == keyword then\
      local newRotation = {}\
      local data = line:sub(keyword:len()+2)\
      for guy in string.gmatch(data, \"|c%x%x%x%x%x%x%x%x([A-Za-z]*)[,]?[ ]?\") do\
        table.insert(newRotation, guy)\
      end\
      \
      table.insert(aura_env.rotations, newRotation)\
    end\
    \
    if line:sub(1, keyword2:len()) == keyword2 then\
      local newRotation = {}\
      local data = line:sub(keyword2:len()+2)\
      for guy in string.gmatch(data, \"|c%x%x%x%x%x%x%x%x([A-Za-z]*)[,]?[ ]?\") do\
        table.insert(newRotation, guy)\
      end\
      \
      table.insert(aura_env.rotations2, newRotation)\
    end\
  end\
  \
  aura_env.initialized = true;\
  \
  for i,rotation in ipairs(aura_env.rotations)do\
    WeakAuras.ScanEvents(\"ECHO_VOLATILE_CHARGES_INIT\",rotation); \
  end\
end\
\
aura_env.TryReadNote();",   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Combat Log",     ["subeventPrefix"] = "SPELL",     ["custom_hide"] = "timed",     ["custom"] = "function(allstates,event,...)\
  if(event == \"COMBAT_LOG_EVENT_UNFILTERED\")then\
    local _, subEvent, _, _, _, _, _ ,_, destName, _, _, spellID = ...;\
    \
    if(subEvent == \"SPELL_AURA_APPLIED\")then\
      if(spellID == aura_env.volatileChargeSpellID)then\
        WeakAuras.ScanEvents(\"ECHO_VOLATILE_CHARGE_PICKUP\",destName);\
        if(UnitIsGroupLeader(\"player\"))then\
          for i,rotation in ipairs(aura_env.rotations)do\
            for j,player in ipairs(rotation)do\
              if(UnitIsUnit(player,destName))then\
                --SetRaidTarget(destName,aura_env.markers[i]);\
                --elog(\"Doing it\",aura_env.markers[i]);\
                break; \
              end\
            end\
          end\
        end\
        \
      elseif(spellID == aura_env.debuffSpellID)then\
        WeakAuras.ScanEvents(\"ECHO_VOLATILE_CHARGE_DEBUFF_APPLIED\",destName);  \
        if(UnitIsGroupLeader(\"player\"))then\
          --SetRaidTarget(destName,0);\
        end\
      end\
      \
    elseif(subEvent == \"SPELL_AURA_REMOVED\")then\
      if(spellID == aura_env.volatileChargeSpellID)then\
        WeakAuras.ScanEvents(\"ECHO_VOLATILE_CHARGE_DROPOFF\",destName);     \
      elseif(spellID == aura_env.debuffSpellID)then\
        WeakAuras.ScanEvents(\"ECHO_VOLATILE_CHARGE_DEBUFF_REMOVED\",destName);     \
      end\
    end\
  elseif(event == \"READY_CHECK\" or event == \"ENCOUNTER_START\")then\
    local initiatorName = ...;\
    if(initiatorName)then\
      aura_env.TryReadNote();\
    end\
  elseif(event == \"BigWigs_SetStage\")then\
    local _, stage = ...;\
    if(stage == 3)then\
      for i,rotation in ipairs(aura_env.rotations2)do\
        WeakAuras.ScanEvents(\"ECHO_VOLATILE_CHARGES_INIT\",rotation); \
      end\
    end\
  end\
  \
end",     ["spellIds"] = {     },     ["events"] = "CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED:SPELL_CAST_SUCCESS ENCOUNTER_START READY_CHECK BigWigs_SetStage",     ["custom_type"] = "stateupdate",     ["names"] = {     },     ["unit"] = "player",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["wordWrap"] = "WordWrap",  ["desaturate"] = false,  ["rotation"] = 0,  ["font"] = "Friz Quadrata TT",  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["height"] = 200,  ["rotate"] = true,  ["load"] = {   ["use_zoneIds"] = true,   ["talent"] = {    ["multi"] = {    },   },   ["zoneIds"] = "2061",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["shadowXOffset"] = 1,  ["mirror"] = false,  ["discrete_rotation"] = 0,  ["regionType"] = "text",  ["xOffset"] = 0,  ["blendMode"] = "BLEND",  ["fixedWidth"] = 200,  ["yOffset"] = 0,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["displayText_format_p_time_precision"] = 1,  ["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",  ["selfPoint"] = "CENTER",  ["uid"] = "o7f2RfoMhwr",  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "(07) Echo Public - Halondrus - Volatile Charges Driver v3",  ["fontSize"] = 12,  ["frameStrata"] = 1,  ["width"] = 200,  ["anchorFrameType"] = "SCREEN",  ["config"] = {  },  ["alpha"] = 1,  ["displayText"] = "",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["authorOptions"] = {  }, }, [" (06) Echo Public - SOFO - Halondrus - Volatile Charges v3"] = {  ["grow"] = "CUSTOM",  ["borderBackdrop"] = "Blizzard Tooltip",  ["xOffset"] = -496.66662597656,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["borderColor"] = {   0,   0,   0,   1,  },  ["space"] = 2,  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["subeventPrefix"] = "SPELL",     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["names"] = {     },     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["columnSpace"] = 1,  ["internalVersion"] = 50,  ["selfPoint"] = "CENTER",  ["align"] = "CENTER",  ["stagger"] = 0,  ["subRegions"] = {  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["talent"] = {    ["multi"] = {    },   },  },  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["useLimit"] = false,  ["animate"] = false,  ["customGrow"] = "function(newPositions, activeRegions)\
    for i, regionData in ipairs(activeRegions) do\
        local region = regionData.region\
        local x = region.state.offsetX\
        local y = region.state.offsetY\
        \
        newPositions[i] = {x, y}\
    end\
end",  ["scale"] = 1,  ["radius"] = 200,  ["border"] = false,  ["borderEdge"] = "Square Full White",  ["regionType"] = "dynamicgroup",  ["borderSize"] = 2,  ["sort"] = "none",  ["limit"] = 5,  ["yOffset"] = 193.33325195312,  ["authorOptions"] = {  },  ["fullCircle"] = true,  ["constantFactor"] = "RADIUS",  ["borderInset"] = 1,  ["borderOffset"] = 4,  ["rowSpace"] = 1,  ["tocversion"] = 90200,  ["id"] = "(06) Echo Public - SOFO - Halondrus - Volatile Charges v3",  ["frameStrata"] = 1,  ["gridWidth"] = 5,  ["anchorFrameType"] = "SCREEN",  ["arcLength"] = 360,  ["uid"] = "xROdEE8457M",  ["config"] = {  },  ["gridType"] = "RD",  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["conditions"] = {  },  ["information"] = {  },  ["rotation"] = 0, },});
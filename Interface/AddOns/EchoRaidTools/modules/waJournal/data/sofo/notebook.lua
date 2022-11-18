local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ ["Echo Public - SOFO - Artificer Notebook DG"] = {  ["arcLength"] = 360,  ["borderBackdrop"] = "Blizzard Tooltip",  ["wagoID"] = "chmXW1jEc",  ["authorOptions"] = {  },  ["yOffset"] = 203.00012207031,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 6,  ["fullCircle"] = true,  ["space"] = 0,  ["url"] = "https://wago.io/chmXW1jEc/4",  ["actions"] = {   ["start"] = {   },   ["init"] = {   },   ["finish"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["names"] = {     },     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["columnSpace"] = 1,  ["internalVersion"] = 50,  ["useLimit"] = false,  ["align"] = "CENTER",  ["stagger"] = 0,  ["version"] = 4,  ["subRegions"] = {  },  ["load"] = {   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["rotation"] = 0,  ["animate"] = false,  ["selfPoint"] = "TOP",  ["scale"] = 1,  ["rowSpace"] = 1,  ["border"] = false,  ["borderEdge"] = "Square Full White",  ["regionType"] = "dynamicgroup",  ["borderSize"] = 2,  ["sort"] = "none",  ["grow"] = "DOWN",  ["limit"] = 5,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["uid"] = "DG2aZgmU(Jl",  ["constantFactor"] = "RADIUS",  ["borderInset"] = 1,  ["borderOffset"] = 4,  ["semver"] = "1.0.3",  ["tocversion"] = 90200,  ["id"] = "Echo Public - SOFO - Artificer Notebook DG",  ["frameStrata"] = 1,  ["gridWidth"] = 5,  ["anchorFrameType"] = "SCREEN",  ["xOffset"] = -286.00024414063,  ["config"] = {  },  ["radius"] = 200,  ["borderColor"] = {   0,   0,   0,   1,  },  ["gridType"] = "RD",  ["conditions"] = {  },  ["information"] = {  },  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  }, }, ["Echo Public - Artificer Notebook"] = {  ["sparkWidth"] = 10,  ["iconSource"] = -1,  ["xOffset"] = 0,  ["adjustedMax"] = "3",  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["sparkRotation"] = 0,  ["url"] = "https://wago.io/chmXW1jEc/4",  ["actions"] = {   ["start"] = {   },   ["init"] = {    ["custom"] = "aura_env.Trim = function(s)\
  return (s:gsub(\"^%s*(.-)%s*$\", \"%1\"))\
end\
\
aura_env.Split = function(haystack, token, trim)\
  token = token or \",\"\
  trim = trim or true\
  \
  if token == \"/\" then\
    token = \"\\\\/\"\
  end\
  \
  if token ~= \" \" then\
    -- This will fail if splitted by space\
    haystack = haystack:gsub(token .. token, token .. \" \" .. token)\
  end\
  \
  local t = {}\
  \
  for word in string.gmatch(haystack, '([^' .. token .. ']+)') do\
    if trim then\
      table.insert(t, aura_env.Trim(word))\
    else\
      table.insert(t, word)\
    end\
  end \
  \
  return t\
end\
\
aura_env.Format = function(haystack, placeholders)\
  local placeholder = true\
  local info = {}\
  \
  while placeholder do\
    placeholder = haystack:match(\"^.*{([A-Za-z0-9-_:]+)}.*$\")\
    if placeholder then\
      local needle = \"{\" .. placeholder .. \"}\"\
      \
      local arg1\
      local arg2\
      if placeholder:find(\":\") then\
        local splitted = aura_env.Split(placeholder, \":\")\
        placeholder = splitted[1]\
        arg1 = tonumber(splitted[2] or \"0\")\
        if splitted[3] then\
          arg2 = tonumber(splitted[3])\
        end\
      end\
      \
      local replacer = placeholders[placeholder]\
      if type(replacer) == \"function\" then\
        local new_text, additional_info = replacer(placeholder, arg1, arg2)\
        haystack = haystack:gsub(needle, new_text)\
        \
        -- Transfer required information to collection\
        for key, value in pairs(additional_info or {}) do\
          info[key] = value\
        end\
      else\
        haystack = haystack:gsub(needle, replacer)\
      end\
    end\
  end\
  \
  return haystack, info\
end\
\
aura_env.placeholders = {\
  -- Marker: Symbol\
  [\"star\"] = \"\",\
  [\"orange\"] = \"\",\
  [\"diamond\"] = \"\",\
  [\"triangle\"] = \"\",\
  [\"moon\"] = \"\",\
  [\"square\"] = \"\",\
  [\"cross\"] = \"\",\
  [\"skull\"] = \"\",\
  \
  -- Marker: Color\
  [\"yellow\"] = \"\",\
  [\"orange\"] = \"\",\
  [\"purple\"] = \"\",\
  [\"green\"] = \"\",\
  [\"white\"] = \"\",\
  [\"blue\"] = \"\",\
  [\"red\"] = \"\",\
  [\"bone\"] = \"\",\
  \
  -- Marker Index\
  [\"rt1\"] = \"\",\
  [\"rt2\"] = \"\",\
  [\"rt3\"] = \"\",\
  [\"rt4\"] = \"\",\
  [\"rt5\"] = \"\",\
  [\"rt6\"] = \"\",\
  [\"rt7\"] = \"\",\
  [\"rt8\"] = \"\",\
  \
  [\"spell\"] = function(placeholder, spellid)\
    local name, _, icon = GetSpellInfo(spellid)\
    if name and icon then\
      return \" \" .. name\
    end\
    \
    return \"\"\
  end,\
  \
  [\"spellicon\"] = function(placeholder, spellid)\
    local _, _, icon = GetSpellInfo(spellid)\
    if icon then\
      return \"\"\
    end\
    \
    return \"\"\
  end,\
  \
  [\"spellname\"] = function(placeholder, spellid)\
    local name = GetSpellInfo(spellid)\
    return name or \"\"\
  end,\
  \
  [\"time\"] = function(placeholder, arg1, arg2)\
    if arg2 == nil then\
      return \"\", { time = arg1 }\
    end\
    \
    return \"\", { time = arg1*60 + arg2 }\
  end\
}\
\
aura_env.pages = {}\
aura_env.current_page = 1\
\
aura_env.LoadBook = function(bookName)\
  for _, book in ipairs(aura_env.config.books) do\
    if book.name == bookName then\
      aura_env.pages = book.pages\
    end\
  end\
end\
\
aura_env.GetNote = function(pageNumber)\
  local page = aura_env.pages[aura_env.current_page]\
  if not page then\
    return {\"\"}\
  end\
  \
  local rawLines = aura_env.Split(page.note, \"\\n\")\
  local lines = {}\
  \
  for _, rawLine in ipairs(rawLines) do\
    local line, info = aura_env.Format(rawLine, aura_env.placeholders)\
    --[[\
        ViragDevTool_AddData({\
                rawLine = rawLine,\
                line = line,\
                info = info\
        }, \"Line\")\
        ]]\
    table.insert(lines, { text = line, info = info })\
  end\
  \
  return lines\
end\
\
aura_env.HidePage = function(allstates)\
  for i=1, (aura_env.lineCount or 0) do\
    local state = allstates[\"current_page:\"..i]\
    if state then\
      state.show = false\
      state.change = true\
    end\
  end\
end\
\
aura_env.ShowPage = function(allstates, page)\
  -- remove old lines\
  aura_env.HidePage(allstates)\
  \
  -- Setup new page\
  aura_env.current_page = page\
  \
  if aura_env.pages[aura_env.current_page] then\
    local lines = aura_env.GetNote(aura_env.current_page)\
    aura_env.lineCount = #lines\
    \
    for i=1, aura_env.lineCount do\
      local time\
      if lines[i][\"info\"] then\
        time = lines[i][\"info\"][\"time\"]\
      end\
      \
      if time then\
        allstates[\"current_page:\" .. i] = {\
          show = true,\
          changed = true,\
          index = i,\
          name = aura_env.Trim(lines[i].text:gsub(\"|\", \"|\")),\
          progressType = \"timed\",\
          expirationTime = GetTime() + time,\
          duration = time,\
          autoHide = true\
        }\
      else            \
        allstates[\"current_page:\" .. i] = {\
          show = true,\
          changed = true,\
          index = i,\
          name = aura_env.Trim(lines[i].text:gsub(\"|\", \"|\")),\
          progressType = \"static\",\
          value = 100,\
          total = 100\
        }\
      end\
    end\
    \
    -- ViragDevTool_AddData(allstates, \"States\")\
    WeakAuras.ScanEvents(\"ECHO_ARTIFICER_NOTEBOOK_PAGE_LOADED\", aura_env.pages[aura_env.current_page].note)\
  end\
end",    ["do_custom"] = true,   },   ["finish"] = {    ["custom"] = "WeakAuras.ScanEvents(\"ECHO_ARTIFICER_NOTEBOOK_CLEANUP\", true)",    ["do_custom"] = true,   },  },  ["icon_color"] = {   1,   1,   1,   1,  },  ["wordWrap"] = "WordWrap",  ["barColor"] = {   1,   0,   0,   0,  },  ["desaturate"] = false,  ["font"] = "Expressway",  ["sparkOffsetY"] = 0,  ["load"] = {   ["use_never"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["use_encounterid"] = true,   ["size"] = {    ["multi"] = {    },   },   ["use_zoneIds"] = false,   ["encounterid"] = "2553",   ["class"] = {    ["single"] = "WARRIOR",    ["multi"] = {     ["WARRIOR"] = true,    },   },   ["zoneIds"] = "1670, 1671",  },  ["shadowXOffset"] = 1,  ["useAdjustededMin"] = false,  ["regionType"] = "aurabar",  ["texture"] = "Blizzard",  ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",  ["spark"] = false,  ["tocversion"] = 90200,  ["alpha"] = 1,  ["sparkColor"] = {   1,   1,   1,   1,  },  ["fixedWidth"] = 200,  ["outline"] = "OUTLINE",  ["sparkOffsetX"] = 0,  ["wagoID"] = "chmXW1jEc",  ["color"] = {   1,   1,   1,   1,  },  ["customText"] = "function()\
  if not aura_env.state.expirationTime then\
    return \"\"\
  end\
  \
  local remaining = math.max(aura_env.state.expirationTime - GetTime(), 0)\
  return aura_env.state.name, string.format(\"%d:%02d\", math.floor(remaining/60), math.floor(remaining)%60)\
end",  ["shadowYOffset"] = -1,  ["sparkRotationMode"] = "AUTO",  ["automaticWidth"] = "Auto",  ["triggers"] = {   {    ["trigger"] = {     ["type"] = "custom",     ["subeventSuffix"] = "_CAST_START",     ["customVariables"] = "{\
  expirationTime = true,\
  progressType = {\
    display = \"Type\",\
    type = \"select\",\
    values = {\
      [\"timed\"] = \"Timed\",\
      [\"static\"] = \"Static\"\
    }\
  },\
  name = \"string\"\
}",     ["event"] = "Health",     ["unit"] = "player",     ["subeventPrefix"] = "SPELL",     ["events"] = "ECHO_ARTIFICER_NOTEBOOK_SHOW, ECHO_ARTIFICER_NOTEBOOK_HIDE, ECHO_ARTIFICER_NOTEBOOK_NEXT_PAGE, ECHO_ARTIFICER_NOTEBOOK_CLEANUP",     ["custom"] = "function(allstates, event, data)\
    if event == \"ECHO_ARTIFICER_NOTEBOOK_SHOW\" and data then\
        aura_env.LoadBook(data)\
        aura_env.ShowPage(allstates, 1)\
        return true\
    end\
    \
    if event == \"ECHO_ARTIFICER_NOTEBOOK_HIDE\" and data then\
        aura_env.pages = {}\
        aura_env.HidePage(allstates)\
        return true\
    end\
    \
    if event == \"ECHO_ARTIFICER_NOTEBOOK_NEXT_PAGE\" and data then\
        local page = (aura_env.current_page or 0) + 1\
        aura_env.ShowPage(allstates, page)\
        return true\
    end\
    \
    if event == \"ECHO_ARTIFICER_NOTEBOOK_CLEANUP\" and flag then\
        -- Remove last line, if it is an empty one\
        local index = -1\
        local name\
        \
        for stateName, state in pairs(allstates) do\
            if state.index > index and state.show then\
                index = state.index\
                name = stateName\
            end\
        end\
        \
        local state = allstates[name]\
        if state then\
            local trimmedText = aura_env.Trim(state.name)\
            if trimmedText == \"\" then\
                state.show = false\
                state.changed = true\
            end\
        end\
        \
        return true\
    end\
    \
    return false\
end",     ["names"] = {     },     ["check"] = "event",     ["spellIds"] = {     },     ["custom_type"] = "stateupdate",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["type"] = "none",    ["easeStrength"] = 3,    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["version"] = 4,  ["subRegions"] = {   {    ["type"] = "subforeground",   },   {    ["type"] = "subbackground",   },   {    ["text_text_format_n_format"] = "none",    ["text_text"] = "",    ["text_text_format_p_format"] = "timed",    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["anchorXOffset"] = 0,    ["type"] = "subtext",    ["text_anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Expressway",    ["text_shadowXOffset"] = 1,    ["text_shadowYOffset"] = -1,    ["text_wordWrap"] = "WordWrap",    ["text_text_format_c2_format"] = "none",    ["text_fontType"] = "OUTLINE",    ["text_anchorPoint"] = "INNER_RIGHT",    ["text_text_format_p_time_format"] = 0,    ["text_visible"] = true,    ["text_fontSize"] = 14,    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["text_text_format_p_time_precision"] = 1,   },   {    ["text_text_format_n_format"] = "none",    ["text_text"] = "%c1",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["type"] = "subtext",    ["text_anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Expressway",    ["text_shadowYOffset"] = -1,    ["text_visible"] = true,    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "OUTLINE",    ["text_text_format_c1_format"] = "none",    ["text_anchorYOffset"] = 0,    ["text_shadowXOffset"] = 1,    ["text_fontSize"] = 14,    ["anchorXOffset"] = 0,    ["text_anchorPoint"] = "INNER_LEFT",   },   {    ["text_text_format_p_time_precision"] = 1,    ["text_text"] = "%c2",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["text_text_format_p_format"] = "timed",    ["text_text_format_p_time_dynamic_threshold"] = 60,    ["type"] = "subtext",    ["text_anchorXOffset"] = 0,    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Expressway",    ["text_text_format_n_format"] = "none",    ["text_shadowYOffset"] = -1,    ["text_fontType"] = "OUTLINE",    ["text_text_format_c2_format"] = "none",    ["text_visible"] = true,    ["text_anchorPoint"] = "INNER_RIGHT",    ["text_text_format_p_time_format"] = 0,    ["text_wordWrap"] = "WordWrap",    ["text_fontSize"] = 14,    ["anchorXOffset"] = 0,    ["text_shadowXOffset"] = 1,   },   {    ["border_size"] = 1,    ["border_anchor"] = "bar",    ["border_offset"] = 1,    ["border_color"] = {     0,     0,     0,     1,    },    ["border_visible"] = true,    ["border_edge"] = "Square Full White",    ["type"] = "subborder",   },  },  ["height"] = 24,  ["sparkBlendMode"] = "ADD",  ["useAdjustededMax"] = true,  ["fontSize"] = 14,  ["displayText_format_n_format"] = "none",  ["authorOptions"] = {   {    ["subOptions"] = {     {      ["type"] = "input",      ["useDesc"] = false,      ["width"] = 2,      ["key"] = "name",      ["default"] = "",      ["name"] = "Name",      ["length"] = 10,      ["multiline"] = false,      ["useLength"] = false,     },     {      ["subOptions"] = {       {        ["type"] = "input",        ["useDesc"] = false,        ["width"] = 2,        ["key"] = "note",        ["default"] = "",        ["name"] = "Note",        ["length"] = 10,        ["multiline"] = true,        ["useLength"] = false,       },      },      ["hideReorder"] = false,      ["useDesc"] = false,      ["nameSource"] = 0,      ["width"] = 1,      ["useCollapse"] = false,      ["collapse"] = false,      ["name"] = "Pages",      ["key"] = "pages",      ["limitType"] = "none",      ["groupType"] = "array",      ["type"] = "group",      ["size"] = 10,     },    },    ["hideReorder"] = false,    ["useDesc"] = false,    ["nameSource"] = 1,    ["width"] = 1,    ["useCollapse"] = false,    ["collapse"] = false,    ["name"] = "Books",    ["key"] = "books",    ["limitType"] = "none",    ["groupType"] = "array",    ["type"] = "group",    ["size"] = 10,   },  },  ["sparkHeight"] = 30,  ["displayText"] = "%p - %n",  ["shadowColor"] = {   0,   0,   0,   1,  },  ["zoom"] = 0,  ["icon_side"] = "RIGHT",  ["selfPoint"] = "BOTTOM",  ["justify"] = "LEFT",  ["displayText_format_p_time_precision"] = 1,  ["backgroundColor"] = {   0.13333333333333,   0.13333333333333,   0.13333333333333,   0.40345501899719,  },  ["displayText_format_p_time_dynamic_threshold"] = 0,  ["width"] = 180,  ["semver"] = "1.0.3",  ["customTextUpdate"] = "update",  ["id"] = "Echo Public - Artificer Notebook",  ["displayText_format_p_time_format"] = 0,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["icon"] = false,  ["sparkHidden"] = "NEVER",  ["inverse"] = false,  ["config"] = {   ["books"] = {    {     ["name"] = "Rings S1 (1)",     ["pages"] = {      {       ["note"] = "{time:0:16} OUT\
{time:0:20} GRIP",      },     },    },    {     ["name"] = "Rings S1 (2)",     ["pages"] = {      {       ["note"] = "{time:0:13} OUT",      },     },    },    {     ["name"] = "Rings S2 (1)",     ["pages"] = {      {       ["note"] = "{time:0:17} OUT\
{time:0:22} GRIP",      },     },    },    {     ["name"] = "Rings S2 (2)",     ["pages"] = {      {       ["note"] = "{time:0:18} OUT\
{time:0:19} SPREAD\
{time:0:27} GRIP",      },     },    },    {     ["name"] = "Rings S3 (1)",     ["pages"] = {      {       ["note"] = "{time:0:18} OUT\
{time:0:23} GRIP\
{time:0:24} SPREAD\
{time:0:29} OUT\
{time:0:29} SPREAD",      },     },    },    {     ["name"] = "Rings S3 (2)",     ["pages"] = {      {       ["note"] = "{time:0:11} GRIP\
{time:0:18} OUT\
{time:0:23} IN\
{time:0:28} OUT",      },     },    },    {     ["name"] = "Rings S4 (1)",     ["pages"] = {      {       ["note"] = "{time:0:21} OUT\
{time:0:25} GRIP\
{time:0:26} SPREAD\
{time:0:35} IN",      },     },    },   },  },  ["orientation"] = "HORIZONTAL",  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["op"] = "==",     ["variable"] = "progressType",     ["value"] = "static",    },    ["changes"] = {     {      ["value"] = true,      ["property"] = "sub.4.text_visible",     },     {      ["value"] = false,      ["property"] = "sub.3.text_visible",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["op"] = "==",     ["value"] = "timed",     ["variable"] = "progressType",    },    ["changes"] = {     {      ["value"] = true,      ["property"] = "sub.4.text_visible",     },     {      ["value"] = true,      ["property"] = "sub.5.text_visible",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "name",     ["value"] = "OUT",     ["op"] = "==",    },    ["changes"] = {     {      ["value"] = {       1,       0.4078431372549,       0,       1,      },      ["property"] = "barColor",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "name",     ["value"] = "IN",     ["op"] = "==",    },    ["linked"] = true,    ["changes"] = {     {      ["value"] = {       0.12941176470588,       0.29019607843137,       1,       1,      },      ["property"] = "barColor",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "name",     ["op"] = "==",     ["value"] = "SPREAD",    },    ["linked"] = true,    ["changes"] = {     {      ["value"] = {       0.058823529411765,       0.50588235294118,       0,       1,      },      ["property"] = "barColor",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "name",     ["op"] = "==",     ["value"] = "BAIT",    },    ["linked"] = true,    ["changes"] = {     {      ["value"] = {       0.5921568627451,       0,       0.37254901960784,       1,      },      ["property"] = "barColor",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "name",     ["value"] = "GRIP",     ["op"] = "==",    },    ["linked"] = true,    ["changes"] = {     {      ["value"] = {       0.5921568627451,       0,       0.054901960784314,       1,      },      ["property"] = "barColor",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "name",     ["op"] = "==",     ["value"] = "WAIT",    },    ["linked"] = true,    ["changes"] = {     {      ["value"] = {       0.10196078431373,       0.53725490196078,       0.5921568627451,       1,      },      ["property"] = "barColor",     },    },   },  },  ["information"] = {  },  ["uid"] = "oPaHovda1Hu", }, ["Echo Public - Artificer Notebook Driver"] = {  ["outline"] = "OUTLINE",  ["wagoID"] = "chmXW1jEc",  ["authorOptions"] = {  },  ["displayText"] = "",  ["shadowYOffset"] = -1,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 2,  ["displayText_format_p_time_format"] = 0,  ["customTextUpdate"] = "event",  ["url"] = "https://wago.io/chmXW1jEc/4",  ["actions"] = {   ["start"] = {    ["do_custom"] = true,    ["custom"] = "WeakAuras.ScanEvents(\"ECHO_ARTIFICER_NOTEBOOK_SHOW\", aura_env.state.text)",   },   ["finish"] = {   },   ["init"] = {    ["custom"] = "aura_env.Trim = function(s)\
  return (s:gsub(\"^%s*(.-)%s*$\", \"%1\"))\
end\
\
aura_env.Split = function(haystack, token, trim)\
  token = token or \",\"\
  trim = trim or true\
  \
  if token == \"/\" then\
    token = \"\\\\/\"\
  end\
  \
  if token ~= \" \" then\
    -- This will fail if splitted by space\
    haystack = haystack:gsub(token .. token, token .. \" \" .. token)\
  end\
  \
  local t = {}\
  \
  for word in string.gmatch(haystack, '([^' .. token .. ']+)') do\
    if trim then\
      table.insert(t, aura_env.Trim(word))\
    else\
      table.insert(t, word)\
    end\
  end \
  \
  return t\
end\
\
aura_env.Format = function(haystack, placeholders)\
  local placeholder = true\
  local info = {}\
  \
  while placeholder do\
    placeholder = haystack:match(\"^.*{([A-Za-z0-9-_:]+)}.*$\")\
    if placeholder then\
      local needle = \"{\" .. placeholder .. \"}\"\
      \
      local arg1\
      local arg2\
      if placeholder:find(\":\") then\
        local splitted = aura_env.Split(placeholder, \":\")\
        placeholder = splitted[1]\
        arg1 = tonumber(splitted[2] or \"0\")\
        if splitted[3] then\
          arg2 = tonumber(splitted[3])\
        end\
      end\
      \
      local replacer = placeholders[placeholder]\
      if type(replacer) == \"function\" then\
        local new_text, additional_info = replacer(placeholder, arg1, arg2)\
        haystack = haystack:gsub(needle, new_text)\
        \
        -- Transfer required information to collection\
        for key, value in pairs(additional_info or {}) do\
          info[key] = value\
        end\
      else\
        haystack = haystack:gsub(needle, replacer)\
      end\
    end\
  end\
  \
  return haystack, info\
end\
\
aura_env.placeholders = {\
  -- Marker: Symbol\
  [\"star\"] = \"\",\
  [\"orange\"] = \"\",\
  [\"diamond\"] = \"\",\
  [\"triangle\"] = \"\",\
  [\"moon\"] = \"\",\
  [\"square\"] = \"\",\
  [\"cross\"] = \"\",\
  [\"skull\"] = \"\",\
  \
  -- Marker: Color\
  [\"yellow\"] = \"\",\
  [\"orange\"] = \"\",\
  [\"purple\"] = \"\",\
  [\"green\"] = \"\",\
  [\"white\"] = \"\",\
  [\"blue\"] = \"\",\
  [\"red\"] = \"\",\
  [\"bone\"] = \"\",\
  \
  -- Marker Index\
  [\"rt1\"] = \"\",\
  [\"rt2\"] = \"\",\
  [\"rt3\"] = \"\",\
  [\"rt4\"] = \"\",\
  [\"rt5\"] = \"\",\
  [\"rt6\"] = \"\",\
  [\"rt7\"] = \"\",\
  [\"rt8\"] = \"\",\
  \
  [\"spell\"] = function(placeholder, spellid)\
    local name, _, icon = GetSpellInfo(spellid)\
    if name and icon then\
      return \" \" .. name\
    end\
    \
    return \"\"\
  end,\
  \
  [\"spellicon\"] = function(placeholder, spellid)\
    local _, _, icon = GetSpellInfo(spellid)\
    if icon then\
      return \"\"\
    end\
    \
    return \"\"\
  end,\
  \
  [\"spellname\"] = function(placeholder, spellid)\
    local name = GetSpellInfo(spellid)\
    return name or \"\"\
  end,\
  \
  [\"time\"] = function(placeholder, arg1, arg2)\
    if arg2 == nil then\
      return \"\", { time = arg1 }\
    end\
    \
    return \"\", { time = arg1*60 + arg2 }\
  end\
}\
\
aura_env.pages = {}\
aura_env.current_page = 1\
\
aura_env.LoadBook = function(bookName)\
  for _, book in ipairs(aura_env.config.books) do\
    if book.name == bookName then\
      aura_env.pages = book.pages\
    end\
  end\
end\
\
aura_env.GetNote = function(pageNumber)\
  local page = aura_env.pages[aura_env.current_page]\
  if not page then\
    return {\"\"}\
  end\
  \
  local rawLines = aura_env.Split(page.note, \"\\n\")\
  local lines = {}\
  \
  for _, rawLine in ipairs(rawLines) do\
    local line, info = aura_env.Format(rawLine, aura_env.placeholders)\
    --[[\
        ViragDevTool_AddData({\
                rawLine = rawLine,\
                line = line,\
                info = info\
        }, \"Line\")\
        ]]\
    table.insert(lines, { text = line, info = info })\
  end\
  \
  return lines\
end\
\
aura_env.HidePage = function(allstates)\
  for i=1, (aura_env.lineCount or 0) do\
    local state = allstates[\"current_page:\"..i]\
    if state then\
      state.show = false\
      state.change = true\
    end\
  end\
end\
\
aura_env.ShowPage = function(allstates, page)\
  -- remove old lines\
  aura_env.HidePage(allstates)\
  \
  -- Setup new page\
  aura_env.current_page = page\
  \
  if aura_env.pages[aura_env.current_page] then\
    local lines = aura_env.GetNote(aura_env.current_page)\
    aura_env.lineCount = #lines\
    \
    for i=1, aura_env.lineCount do\
      local time\
      if lines[i][\"info\"] then\
        time = lines[i][\"info\"][\"time\"]\
      end\
      \
      if time then\
        allstates[\"current_page:\" .. i] = {\
          show = true,\
          changed = true,\
          index = i,\
          name = aura_env.Trim(lines[i].text:gsub(\"|\", \"|\")),\
          progressType = \"timed\",\
          expirationTime = GetTime() + time,\
          duration = time,\
          autoHide = true\
        }\
      else            \
        allstates[\"current_page:\" .. i] = {\
          show = true,\
          changed = true,\
          index = i,\
          name = aura_env.Trim(lines[i].text:gsub(\"|\", \"|\")),\
          progressType = \"static\",\
          value = 100,\
          total = 100\
        }\
      end\
    end\
    \
    -- ViragDevTool_AddData(allstates, \"States\")\
    WeakAuras.ScanEvents(\"ECHO_ARTIFICER_NOTEBOOK_PAGE_LOADED\", aura_env.pages[aura_env.current_page].note)\
  end\
end",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["spellId"] = "359236",     ["remaining_operator"] = "<=",     ["unit"] = "player",     ["remaining"] = "3",     ["text_operator"] = "==",     ["debuffType"] = "HELPFUL",     ["use_remaining"] = true,     ["subeventSuffix"] = "_CAST_SUCCESS",     ["text"] = "Rings S1 (1)",     ["use_text"] = true,     ["use_spellId"] = false,     ["spellIds"] = {     },     ["event"] = "BigWigs Timer",     ["duration"] = "55",     ["type"] = "addons",     ["names"] = {     },     ["subeventPrefix"] = "SPELL",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["spellId"] = "359236",     ["duration"] = "55",     ["names"] = {     },     ["remaining"] = "3",     ["text_operator"] = "==",     ["debuffType"] = "HELPFUL",     ["type"] = "addons",     ["subeventSuffix"] = "_CAST_SUCCESS",     ["text"] = "Rings S1 (2)",     ["event"] = "BigWigs Timer",     ["use_spellId"] = false,     ["spellIds"] = {     },     ["unit"] = "player",     ["subeventPrefix"] = "SPELL",     ["use_remaining"] = true,     ["remaining_operator"] = "<=",     ["use_text"] = true,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["spellId"] = "359236",     ["duration"] = "55",     ["names"] = {     },     ["remaining"] = "3",     ["text_operator"] = "==",     ["debuffType"] = "HELPFUL",     ["type"] = "addons",     ["subeventSuffix"] = "_CAST_SUCCESS",     ["text"] = "Rings S2 (1)",     ["event"] = "BigWigs Timer",     ["use_spellId"] = false,     ["spellIds"] = {     },     ["unit"] = "player",     ["subeventPrefix"] = "SPELL",     ["use_remaining"] = true,     ["remaining_operator"] = "<=",     ["use_text"] = true,    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["spellId"] = "359236",     ["duration"] = "55",     ["subeventPrefix"] = "SPELL",     ["remaining"] = "3",     ["text_operator"] = "==",     ["debuffType"] = "HELPFUL",     ["use_remaining"] = true,     ["subeventSuffix"] = "_CAST_SUCCESS",     ["text"] = "Rings S2 (2)",     ["event"] = "BigWigs Timer",     ["use_spellId"] = false,     ["spellIds"] = {     },     ["use_text"] = true,     ["remaining_operator"] = "<=",     ["type"] = "addons",     ["unit"] = "player",     ["names"] = {     },    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["spellId"] = "359236",     ["remaining_operator"] = "<=",     ["unit"] = "player",     ["remaining"] = "3",     ["text_operator"] = "==",     ["debuffType"] = "HELPFUL",     ["type"] = "addons",     ["subeventSuffix"] = "_CAST_SUCCESS",     ["text"] = "Rings S3 (1)",     ["use_text"] = true,     ["use_spellId"] = false,     ["spellIds"] = {     },     ["subeventPrefix"] = "SPELL",     ["names"] = {     },     ["use_remaining"] = true,     ["duration"] = "55",     ["event"] = "BigWigs Timer",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["spellId"] = "359236",     ["remaining_operator"] = "<=",     ["names"] = {     },     ["remaining"] = "3",     ["text_operator"] = "==",     ["debuffType"] = "HELPFUL",     ["use_remaining"] = true,     ["subeventSuffix"] = "_CAST_SUCCESS",     ["text"] = "Rings S3 (2)",     ["use_text"] = true,     ["use_spellId"] = false,     ["spellIds"] = {     },     ["event"] = "BigWigs Timer",     ["duration"] = "55",     ["type"] = "addons",     ["subeventPrefix"] = "SPELL",     ["unit"] = "player",    },    ["untrigger"] = {    },   },   {    ["trigger"] = {     ["spellId"] = "359236",     ["duration"] = "55",     ["subeventPrefix"] = "SPELL",     ["remaining"] = "3",     ["text_operator"] = "==",     ["debuffType"] = "HELPFUL",     ["type"] = "addons",     ["subeventSuffix"] = "_CAST_SUCCESS",     ["text"] = "Rings S3 (3)",     ["event"] = "BigWigs Timer",     ["use_spellId"] = false,     ["spellIds"] = {     },     ["names"] = {     },     ["unit"] = "player",     ["use_remaining"] = true,     ["remaining_operator"] = "<=",     ["use_text"] = true,    },    ["untrigger"] = {    },   },   ["disjunctive"] = "any",   ["customTriggerLogic"] = "function(t)\
  return t[1] and (t[2] or t[3] or t[4] or t[5])\
end",   ["activeTriggerMode"] = -10,  },  ["displayText_format_p_format"] = "timed",  ["internalVersion"] = 50,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["font"] = "Friz Quadrata TT",  ["version"] = 4,  ["subRegions"] = {   {    ["type"] = "subbackground",   },  },  ["load"] = {   ["size"] = {    ["multi"] = {    },   },   ["use_never"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["encounterid"] = "2553",   ["use_encounterid"] = true,  },  ["fontSize"] = 12,  ["shadowXOffset"] = 1,  ["regionType"] = "text",  ["selfPoint"] = "BOTTOM",  ["semver"] = "1.0.3",  ["displayText_format_p_time_precision"] = 1,  ["conditions"] = {  },  ["yOffset"] = 0,  ["xOffset"] = 0,  ["justify"] = "LEFT",  ["tocversion"] = 90200,  ["id"] = "Echo Public - Artificer Notebook Driver",  ["displayText_format_p_time_dynamic_threshold"] = 60,  ["frameStrata"] = 1,  ["anchorFrameType"] = "SCREEN",  ["config"] = {  },  ["uid"] = "VGDUtMU95pR",  ["wordWrap"] = "WordWrap",  ["color"] = {   1,   1,   1,   1,  },  ["shadowColor"] = {   0,   0,   0,   1,  },  ["fixedWidth"] = 200,  ["information"] = {  },  ["automaticWidth"] = "Auto", },});
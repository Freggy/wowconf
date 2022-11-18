local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

journal:AddImportData({ ["(11) Echo Public - Jailer - Bomb Helper"] = {  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",  ["information"] = {  },  ["conditions"] = {   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "highlight",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = {       0.086274509803922,       0.45490196078431,       0.12156862745098,       1,      },      ["property"] = "color",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "me",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = {       0.14117647058824,       0.15686274509804,       0.43137254901961,       1,      },      ["property"] = "color",     },    },   },   {    ["check"] = {     ["trigger"] = 1,     ["variable"] = "showName",     ["value"] = 1,    },    ["changes"] = {     {      ["value"] = true,      ["property"] = "sub.2.text_visible",     },    },   },  },  ["xOffset"] = 0,  ["width"] = 40,  ["mirror"] = false,  ["yOffset"] = 0,  ["regionType"] = "texture",  ["uid"] = "BGxEjhaObT5",  ["blendMode"] = "BLEND",  ["color"] = {   1,   0.25490196078431,   0.22745098039216,   1,  },  ["discrete_rotation"] = 0,  ["authorOptions"] = {   {    ["type"] = "select",    ["key"] = "transform",    ["values"] = {     "None",     "Rotate Left",     "Rotate Right",     "Flig Upside Down",    },    ["useDesc"] = false,    ["name"] = "Transform",    ["default"] = 1,    ["width"] = 2,   },  },  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {    ["do_custom"] = true,    ["custom"] = "function aura_env.CloneTable(t)\
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
local margin = 10 \
local size = 40\
\
local transforms = {\
  [1] = function(x, y) \
    return x, y\
  end,\
  [2] = function(x, y)\
    return -y, x\
  end,\
  [3] = function(x, y)\
    return y, -x\
  end,\
  [4] = function(x, y)\
    return -x, -y\
  end\
}\
\
aura_env.helper = {}\
function aura_env.helper.angleOfPoint(x, y)\
  -- Top: 0°\
  -- Right: 90°\
  -- Bottom: 180°\
  -- Left: 270°\
  return math.atan2(-y, x) + (math.pi/2)\
end\
\
function aura_env.helper.rad(deg)\
  return (2*math.pi*deg) / 360\
end\
\
function aura_env.helper.deg(rad)\
  return rad * (360 / (2*math.pi))\
end\
\
aura_env.formations = {}\
\
aura_env.formations.bounds = function(data)\
  if not data then\
    return\
  end\
  \
  local xmin\
  local xmax\
  local ymin\
  local ymax\
  \
  for _, entry in ipairs(data) do\
    if not xmin or entry.x < xmin then\
      xmin = entry.x\
    end\
    \
    if not xmax or entry.x > xmax then\
      xmax = entry.x\
    end\
    \
    if not ymin or entry.y < ymin then\
      ymin = entry.y\
    end\
    \
    if not ymax or entry.y > ymax then\
      ymax = entry.y\
    end\
  end\
  \
  return xmin, xmax, ymin, ymax\
end\
\
aura_env.formations.center = function(data)\
  local xmin, xmax, ymin, ymax = aura_env.formations.bounds(data)\
  if not xmin then\
    return\
  end\
  \
  return (xmax-xmin)/2 + xmin, (ymax-ymin)/2 + ymin\
end\
\
aura_env.formations.flipHorizontal = function(data)\
  for _, entry in ipairs(data) do\
    entry.y = -entry.y\
  end\
  \
  return data\
end\
\
aura_env.formations.flipVertical = function(data)\
  for _, entry in ipairs(data) do\
    entry.x = -entry.x\
  end\
  \
  return data\
end\
\
aura_env.formations.rotate = function(data, angle)\
  -- positive angle: clockwise\
  -- negative angle: counter clockwise\
  local cx, cy = aura_env.formations.center(data)\
  \
  for _, entry in ipairs(data) do\
    local d = { x = entry.x - cx, y = entry.y - cy }\
    local r = math.sqrt(d.x*d.x + d.y+d.y)\
    local phi = aura_env.helper.angleOfPoint(d.x, d.y)\
    local delta = phi + angle\
    entry.x, entry.y = r*math.sin(delta) + cx, r*math.cos(delta) + cy\
  end\
  \
  return data\
end\
\
aura_env.formations.combine = function(...)\
  local newFormation = {}\
  \
  for i=1, select(\"#\", ...) do\
    local part = select(i, ...)\
    if part and type(part) == \"table\" then\
      local offsetX = part.x\
      local offsetY = part.y\
      \
      for _, entry in ipairs(part.entries) do\
        table.insert(newFormation, {\
            name = entry.name,\
            x = entry.x + offsetX,\
            y = entry.y + offsetY\
        })\
      end\
    end\
  end\
  \
  return newFormation\
end\
\
aura_env.formations.rectangle = function(columns, rows, ...)\
  local data = {}\
  \
  local width = columns * size + (columns - 1) * margin\
  local height = rows * size + (rows - 1) * margin\
  local offsetX = width/2\
  local offsetY = height/2\
  local half_step = size/2\
  local full_step = size+margin\
  for row=1, rows do \
    for col=1, columns do\
      local x = (col == 1 and half_step or ((col - 1)*full_step) + half_step) - offsetX\
      local y = (row == 1 and half_step or -((row - 1)*full_step) + half_step)\
      local index = (row - 1) * columns + col\
      local name = select(index, ...) or string.format(\"%d/%d\", col, row)\
      \
      table.insert(data, {\
          name = name,\
          x = x,\
          y = y\
      })\
    end\
  end\
  \
  return data\
end\
\
aura_env.formations.rectangle45 = function(columns, rows, ...)\
  local data = {}\
  \
  local width = ((columns - 1) * (size + margin)) + ((rows - 1) * (size + margin))\
  local height = 0\
  local offsetX = width/2\
  local offsetY = height/2\
  \
  for col=1, columns do\
    for row=1, rows do\
      local x = ((col - 1) * (size + margin)) + ((row - 1) * (size + margin)) - offsetX\
      local y = ((col - 1) * (size + margin)) - ((row - 1) * (size + margin)) - offsetY\
      local index = (row - 1) * columns + col\
      local name = select(index, ...) or string.format(\"%d/%d\", col, row)\
      \
      table.insert(data, {\
          name = name,\
          x = x,\
          y = y\
      })\
    end\
  end\
  \
  return data\
end\
\
aura_env.formations.Y = function(length, ...)  \
  local data = {}\
  local nameIndex = 1\
  \
  local width = (2 * (length - 1)) * (size + margin)\
  local height = (((length - 1) + length)-1) * (size + margin)\
  \
  local offsetX = 0\
  local offsetY = 0\
  for i=length-1, 1, -1  do\
    local x = ((length - 1) - i) * (size + margin) + offsetX - (width/2)\
    local y = -(((length - 1) - i) * (size + margin)) + offsetY + (height/2)\
    \
    local name = select(nameIndex, ...) or string.format(\"%d\", nameIndex)\
    nameIndex = nameIndex + 1\
    \
    table.insert(data, {\
        name = name,\
        x = x,\
        y = y\
    })\
  end\
  \
  offsetX = (length - 1) * (size + margin)\
  offsetY = (length - 1) * (size + margin)\
  for i=1, length do\
    local x = offsetX - (width/2)\
    local y = -(offsetY + (i-1) * (size + margin)) + (height/2)\
    \
    local name = select(nameIndex, ...) or string.format(\"%d\", nameIndex)\
    nameIndex = nameIndex + 1\
    \
    table.insert(data, {\
        name = name,\
        x = x,\
        y = y\
    })\
  end\
  \
  offsetX = length * (size + margin)\
  offsetY = 0\
  for i=1, length-1  do\
    local x = (i - 1) * (size + margin) + offsetX - (width/2)\
    local y = -(((length - 1) - i) * (size + margin)) + offsetY + (height/2)\
    \
    local name = select(nameIndex, ...) or string.format(\"%d\", nameIndex)\
    nameIndex = nameIndex + 1\
    \
    table.insert(data, {\
        name = name,\
        x = x,\
        y = y\
    })\
  end\
  \
  return data\
end\
\
aura_env.formations.T = function(horizontalLen, verticalLen, ...)\
  local vSize = (verticalLen*size + (verticalLen-1)*margin)/2\
  \
  -- Generate names\
  local horizontalNames = {}\
  local verticalNames = {}\
  for i=1, horizontalLen do\
    table.insert(horizontalNames, select(i, ...) or string.format(\"%d\", i))\
  end\
  for i=1, verticalLen do\
    table.insert(verticalNames, select(horizontalLen+i, ...) or string.format(\"%d\", horizontalLen+i))\
  end\
  \
  -- Combine formations\
  local data = aura_env.formations.combine(\
    {x = 0, y = 0, entries = aura_env.formations.rectangle(horizontalLen, 1, unpack(horizontalNames)) },\
    {x = 0, y = -(vSize/2 + margin + size/2), entries = aura_env.formations.rectangle(1, verticalLen, unpack(verticalNames))}\
  )\
  \
  return data\
end\
\
aura_env.positions = {\
  {\
    name = \"\",\
    x = 0,\
    y = 0,\
    entries = aura_env.formations.rectangle(1, 1, \"1\"),\
  },\
  {\
    name = \"\",\
    x = 0,\
    y = -40,\
    entries = aura_env.formations.rectangle(2, 1, \"2\", \"4\")\
  },\
  {\
    name = \"\",\
    x = 0,\
    y = -80,\
    entries = aura_env.formations.rectangle(3, 1, \"3\", \"5\", \"6\")\
  }\
}\
\
aura_env.prepared_states = {}\
\
for _, group in ipairs(aura_env.positions) do\
  for _, entry in ipairs(group.entries) do\
    local x,y = transforms[aura_env.config.transform or 1](group.x + entry.x, group.y + entry.y)\
    \
    \
    aura_env.prepared_states[group.name .. \":\" .. entry.name] = {\
      show = true,\
      changed = true,\
      name = group.name .. \":\" .. entry.name,\
      highlight = false,\
      offsetX = x,\
      offsetY = y,\
      showName = group.showNames and true or false,\
      hideTexture = group.hideTexture and true or false,\
      me = false,\
    }\
  end\
end",   },  },  ["triggers"] = {   {    ["trigger"] = {     ["use_alwaystrue"] = true,     ["use_absorbMode"] = true,     ["use_unit"] = true,     ["debuffType"] = "HELPFUL",     ["type"] = "custom",     ["use_absorbHealMode"] = true,     ["subeventSuffix"] = "_CAST_START",     ["event"] = "Conditions",     ["events"] = "BOMB_ASSIGNED",     ["unit"] = "player",     ["custom_type"] = "stateupdate",     ["custom"] = "function(allstates, event, dude, displayWord, duration, index, stage, count)\
  if event == \"BOMB_ASSIGNED\" and dude then\
    if stage and stage == 1 then\
      if UnitIsUnit(dude, \"player\") then\
        for i=1,6 do\
          local state = aura_env.CloneTable(aura_env.prepared_states[\":\" .. i])\
          state.progressType = \"timed\"\
          state.duration = duration\
          state.expirationTime = GetTime() + duration\
          state.autoHide = true\
          state.me = (i == index)\
          \
          allstates[i] = state\
        end\
        \
        return true    \
      end\
    end\
  elseif(event == \"OPTIONS\")then\
    for k, v in pairs(aura_env.prepared_states) do\
      allstates[k] = aura_env.CloneTable(v);\
      \
      allstates[k].show = true\
      allstates[k].changed = true\
      if k == \"left:top1\" then\
        allstates[k].highlight = true;\
      end\
      \
      if k == \"left:bottom3\" then\
        allstates[k].me = true;\
      end\
    end\
    return true;\
  end\
end",     ["names"] = {     },     ["check"] = "event",     ["subeventPrefix"] = "SPELL",     ["spellIds"] = {     },     ["customVariables"] = "{\
  highlight = \"bool\",\
  me = \"bool\",\
  showName = \"bool\"\
}",    },    ["untrigger"] = {    },   },   ["disjunctive"] = "all",   ["activeTriggerMode"] = -10,  },  ["anchorFrameType"] = "SCREEN",  ["internalVersion"] = 50,  ["frameStrata"] = 1,  ["selfPoint"] = "CENTER",  ["id"] = "(11) Echo Public - Jailer - Bomb Helper",  ["tocversion"] = 90200,  ["alpha"] = 1,  ["desaturate"] = false,  ["rotation"] = 0,  ["config"] = {   ["transform"] = 1,  },  ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_Smooth",  ["subRegions"] = {   {    ["type"] = "subbackground",   },   {    ["text_shadowXOffset"] = 1,    ["text_text"] = "%n",    ["text_shadowColor"] = {     0,     0,     0,     1,    },    ["text_selfPoint"] = "AUTO",    ["text_automaticWidth"] = "Auto",    ["text_fixedWidth"] = 64,    ["anchorYOffset"] = 0,    ["text_justify"] = "CENTER",    ["rotateText"] = "NONE",    ["type"] = "subtext",    ["text_color"] = {     1,     1,     1,     1,    },    ["text_font"] = "Expressway",    ["text_shadowYOffset"] = -1,    ["text_wordWrap"] = "WordWrap",    ["text_fontType"] = "None",    ["text_anchorPoint"] = "CENTER",    ["text_visible"] = false,    ["text_fontSize"] = 12,    ["anchorXOffset"] = 0,    ["text_text_format_n_format"] = "none",   },  },  ["height"] = 40,  ["rotate"] = true,  ["load"] = {   ["use_encounterid"] = true,   ["use_never"] = false,   ["talent"] = {    ["multi"] = {    },   },   ["encounterid"] = "2537",   ["class"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["anchorPoint"] = "CENTER", }, ["(11) Echo Public - Jailer - Bomb Helper DG"] = {  ["grow"] = "CUSTOM",  ["borderBackdrop"] = "Blizzard Tooltip",  ["authorOptions"] = {  },  ["yOffset"] = 0,  ["anchorPoint"] = "CENTER",  ["echoVersion"] = 19,  ["fullCircle"] = true,  ["space"] = 2,  ["actions"] = {   ["start"] = {   },   ["finish"] = {   },   ["init"] = {   },  },  ["triggers"] = {   {    ["trigger"] = {     ["names"] = {     },     ["type"] = "aura2",     ["spellIds"] = {     },     ["subeventSuffix"] = "_CAST_START",     ["unit"] = "player",     ["subeventPrefix"] = "SPELL",     ["event"] = "Health",     ["debuffType"] = "HELPFUL",    },    ["untrigger"] = {    },   },  },  ["columnSpace"] = 1,  ["radius"] = 200,  ["animation"] = {   ["start"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["main"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },   ["finish"] = {    ["easeStrength"] = 3,    ["type"] = "none",    ["duration_type"] = "seconds",    ["easeType"] = "none",   },  },  ["align"] = "CENTER",  ["stagger"] = 0,  ["subRegions"] = {  },  ["load"] = {   ["talent"] = {    ["multi"] = {    },   },   ["spec"] = {    ["multi"] = {    },   },   ["class"] = {    ["multi"] = {    },   },   ["size"] = {    ["multi"] = {    },   },  },  ["backdropColor"] = {   1,   1,   1,   0.5,  },  ["config"] = {  },  ["animate"] = false,  ["customGrow"] = "function(newPositions, activeRegions)\
  for i, regionData in ipairs(activeRegions) do\
    local region = regionData.region\
    local x = region.state.offsetX\
    local y = region.state.offsetY\
    \
    newPositions[i] = {x, y}\
  end\
end",  ["scale"] = 1,  ["rotation"] = 0,  ["border"] = false,  ["borderEdge"] = "Square Full White",  ["regionType"] = "dynamicgroup",  ["borderSize"] = 2,  ["sort"] = "none",  ["rowSpace"] = 1,  ["xOffset"] = 0,  ["useLimit"] = false,  ["groupIcon"] = "Interface/AddOns/EchoRaidTools/assets/textures/ELp1.tga",  ["constantFactor"] = "RADIUS",  ["borderInset"] = 1,  ["borderOffset"] = 4,  ["arcLength"] = 360,  ["tocversion"] = 90200,  ["id"] = "(11) Echo Public - Jailer - Bomb Helper DG",  ["gridWidth"] = 5,  ["frameStrata"] = 9,  ["anchorFrameType"] = "SCREEN",  ["gridType"] = "RD",  ["uid"] = "8I8iQb1OpC2",  ["limit"] = 5,  ["internalVersion"] = 50,  ["borderColor"] = {   0,   0,   0,   1,  },  ["conditions"] = {  },  ["information"] = {  },  ["selfPoint"] = "CENTER", },});

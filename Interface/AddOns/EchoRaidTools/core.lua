local _AddonName, _EchoRaidTools = ...

-----------------------------------------------------------------
-- TODO Remove me!
--__EchoRaidTools = _EchoRaidTools
-----------------------------------------------------------------

EchoAddon:Initialize(_EchoRaidTools, _AddonName)


function _EchoRaidTools:ADDON_LOADED(name)
    if name == _AddonName then
        -- Load Modules
        --[[
        for _, module in ipairs(_EchoRaidTools.modules or {}) do
            if module["ADDON_LOADED"] and type(module["ADDON_LOADED"]) == "function" then
                module["ADDON_LOADED"](module, name)
            end
        end
        ]]

        --[[
        local AceConsole = LibStub:GetLibrary("AceConsole-3.0")

        if AceConsole then
            AceConsole:RegisterChatCommand("echort", function(msg)
                _EchoRaidTools:OpenPanel()
            end)
        end
        ]]
    end
end

function _EchoRaidTools:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
    if(isInitialLogin or isReloadingUi)then
        _EchoRaidTools:InitializeEncounterData();
    end
end

function _EchoRaidTools:GetEchoColor()
    return {0.898, 0.063, 0.224, 1}
end
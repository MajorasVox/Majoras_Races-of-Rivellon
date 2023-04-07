Ext.Require("Shared.lua")

Ext.Require("Server/OriginSetup.lua")
Ext.Require("Server/RaceWorkaround.lua")
Ext.Require("Server/SkillListeners.lua")

if Ext.Debug.IsDeveloperMode() then
    Ext.Require("Server/DebugCommands.lua")
end
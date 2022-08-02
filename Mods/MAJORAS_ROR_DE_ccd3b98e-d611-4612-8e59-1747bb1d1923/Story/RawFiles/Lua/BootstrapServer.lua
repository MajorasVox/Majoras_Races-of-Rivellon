Ext.Require("Shared.lua")

VM = VisualManager.Elements

Ext.Require("Server/Armor/_InitArmor.lua")
Ext.Require("Server/OriginSetup.lua")
Ext.Require("Server/RaceWorkaround.lua")
Ext.Require("Server/SkillListeners.lua")

if Ext.IsDeveloperMode() then
	Ext.Require("Server/DebugCommands.lua")
end
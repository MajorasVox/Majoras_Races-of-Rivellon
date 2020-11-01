---@type fun(ve:VisualElementData, vr:VisualResourceData)[]
local ArmorInitFunctions = {
	Ext.Require("Server/Armor/AncientElf.lua"),
	Ext.Require("Server/Armor/DemonKin.lua"),
	Ext.Require("Server/Armor/FailedGheist.lua"),
	Ext.Require("Server/Armor/LivingBear.lua"),
	Ext.Require("Server/Armor/Zombie.lua"),
}

VISUALID = {
    AncientElf = "6439c71c-87f4-4c02-80c2-0f9537954f9d",
    FailedGheist = "6439c71c-87f4-4c02-80c2-0f9537954f9d",
    DemonicKin = "d656291b-81f3-445e-84df-4e32cfc18d46",
    LivingBear = "b8ddbc75-415f-4894-afc2-2256e11b723d",
    Zombie = "ab01c22a-cce0-483b-84e6-2d331b6c2982"
}

---@type VisualElementData
local ve = LeaderLib.Classes.VisualElementData
---@type VisualResourceData
local vr = LeaderLib.Classes.VisualResourceData

ITEMSLOT = VisualManager.Slot
VISUALSLOT = VisualManager.VisualSlot

for i,func in pairs(ArmorInitFunctions) do
	local b,result = xpcall(func, debug.traceback, ve, vr)
	if not b then
		Ext.PrintError(result)
	end
end
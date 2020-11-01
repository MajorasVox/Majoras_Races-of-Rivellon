VISUALID = {
    AncientElf = "6439c71c-87f4-4c02-80c2-0f9537954f9d",
    FailedGheist = "6439c71c-87f4-4c02-80c2-0f9537954f9d",
    DemonicKin = "d656291b-81f3-445e-84df-4e32cfc18d46",
    LivingBear = "b8ddbc75-415f-4894-afc2-2256e11b723d",
    Zombie = "ab01c22a-cce0-483b-84e6-2d331b6c2982"
}

VisualManager = LeaderLib.VisualManager

---@type VisualElementData
local ve = LeaderLib.Classes.VisualElementData
---@type VisualResourceData
local vr = LeaderLib.Classes.VisualResourceData

ITEMSLOT = VisualManager.Slot
VISUALSLOT = VisualManager.VisualSlot

EMPTY_VISUAL = "ROR_Empty"

---@return VisualResourceData|nil
local function GetTieredArmorData(visual, armorType, rarity, level, slot, tieredArmorData)
	if tieredArmorData == nil then
		return nil
	end
	local tieredArmorTypeData = tieredArmorData[armorType]
	if tieredArmorTypeData ~= nil then
		local rarityData = tieredArmorTypeData[rarity]
		if rarityData ~= nil then
			for i,v in pairs(rarityData) do
				if (v.Min == nil or level >= v.Min or v.Min <= 0) and (v.Max == nil or level <= v.Max or v.Max >= Ext.ExtraData.LevelCap) then
					return v[slot]
				end
			end
		end
	end
	return nil
end

---@alias OnEquipmentChangedCallback fun(self:VisualElementData, char:EsvCharacter, item:EsvItem, equipped:boolean, tieredArmorData:table<string,table>, uniqueItemTags:table<string,string>)

---@param self VisualElementData
---@param char EsvCharacter
---@param item EsvItem
---@param equipped boolean
---@param tieredArmorData table<string,table>
---@param uniqueItemTags table<string,string>
local function OnEquipmentChanged(self, char, item, equipped, tieredArmorData, uniqueItemTags)
	if Debug.Enabled then
		Ext.Print(string.format(Debug.TraceEquipParams, char.DisplayName, item.StatsId, equipped))
	end
	local visualsChanged = false
	if equipped then
		local slot = GameHelpers.Item.GetEquippedSlot(char.MyGuid, item.MyGuid) or item.Stats.Slot
		if item.Stats.Unique == 1 then
			if uniqueItemTags ~= nil then
				local specialArmorType = ""
				for tag,armorType in pairs(uniqueItemTags) do
					if item:HasTag(tag) or string.find(item.Stats.Tags, tag) then
						specialArmorType = armorType
						break
					end
				end
				if specialArmorType ~= "" then
					self:ApplyVisualsForArmorType(char, specialArmorType, item.Stats.Slot)
					visualsChanged = true
				end
			end
		else
			local tieredArmorData = GetTieredArmorData(char.RootTemplate.VisualTemplate, item.Stats.ArmorType, item.Stats.ItemTypeReal, item.Stats.Level, slot)
			if tieredArmorData ~= nil then
				tieredArmorData:SetVisualOnCharacter(char.MyGuid)
				visualsChanged = true
			end
		end
	end
	if not visualsChanged then
		self.OnEquipmentChangedDefault(self, char, item, equipped)
	end
end

---@type fun(ve:VisualElementData, vr:VisualResourceData)[]
local ArmorInitFunctions = {
	Ext.Require("Server/Armor/AncientElf.lua"),
	Ext.Require("Server/Armor/DemonKin.lua"),
	Ext.Require("Server/Armor/FailedGheist.lua"),
	Ext.Require("Server/Armor/LivingBear.lua"),
	Ext.Require("Server/Armor/Zombie.lua"),
}

for i,func in pairs(ArmorInitFunctions) do
	local b,result = xpcall(func, debug.traceback, ve, vr, OnEquipmentChanged)
	if not b then
		Ext.PrintError(result)
	end
end
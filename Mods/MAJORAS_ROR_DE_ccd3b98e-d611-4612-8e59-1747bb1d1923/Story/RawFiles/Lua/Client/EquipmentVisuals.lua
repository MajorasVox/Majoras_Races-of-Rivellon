
--TODO Replace with CurrentTemplate.VisualSetResourceID once that stops being empty.
OriginID = {
	AncientElf = "ROR_Ancestor_Husk",
	FailedGheist = "ROR_Failed_Gheist",
	DemonKin = "ROR_Demonic_Kin",
	LivingBear = "ROR_Living_Bear",
	Zombie = "ROR_Zombie"
}

local OriginToSkeleton = {
	ROR_Ancestor_Husk = "6439c71c-87f4-4c02-80c2-0f9537954f9d",
	ROR_Failed_Gheist = "6439c71c-87f4-4c02-80c2-0f9537954f9d",
	ROR_Demonic_Kin = "d656291b-81f3-445e-84df-4e32cfc18d46",
	ROR_Living_Bear = "b8ddbc75-415f-4894-afc2-2256e11b723d",
	ROR_Zombie = "ab01c22a-cce0-483b-84e6-2d331b6c2982"
}

EMPTY_VISUAL = "ROR_Empty"

VisualResources = {}
Ext.Require("Client/VisualResources.lua")
VisualData = {}

---@alias VisualDataUniques {Stats:table<string,string>, Tags:table<string,string>}

---@class VisualDataEntry
---@field Uniques VisualDataUniques
---@field ArmorTypes table<ArmorType, table<ItemSlot, string>>
---@field RarityArmorTypes table<ArmorType, table<ItemRarity, table<integer, table<ItemSlot, string>>>>
---@field Weapons table<string,string>

Ext.Require("Client/Armor/AncientElf.lua")
Ext.Require("Client/Armor/DemonKin.lua")
Ext.Require("Client/Armor/FailedGheist.lua")
Ext.Require("Client/Armor/LivingBear.lua")
Ext.Require("Client/Armor/Zombie.lua")

---@param char EclCharacter
---@param item EclItem
---@param data VisualDataUniques
---@return string|nil
local function _GetUniqueArmorType(char, item, data)
	if not data then
		return nil
	end
	local statArmorType = data.Stats[item.StatsId]
	if statArmorType then
		return statArmorType
	end
	for tag,armorType in pairs(data.Tags) do
		if GameHelpers.ItemHasTag(item, tag) then
			return armorType
		end
	end
	return nil
end

---@param character EclCharacter
---@param data VisualDataEntry
---@param armorType ArmorType
---@param slot ItemSlot
---@param rarity ItemRarity
---@return string|nil
local function _GetVisualForArmorType(character, data, armorType, slot, rarity)
	local armorTypeData = data.ArmorTypes[armorType]
	if armorTypeData and armorTypeData[slot] then
		return armorTypeData[slot]
	end
	local rarityArmorTypeData = data.RarityArmorTypes[armorType]
	if rarityArmorTypeData then
		local rarityData = rarityArmorTypeData[rarity] or rarityArmorTypeData.All
		if rarityData then
			local level = character.Stats.Level
			local levelCap = GameHelpers.GetExtraData("LevelCap", 30)
			for i=1,#rarityData do
				local v = rarityData[i]
				if (v.Min == nil or level >= v.Min or v.Min <= 0) and (v.Max == nil or level <= v.Max or v.Max >= levelCap) then
					if v[slot] then
						return v[slot]
					end
				end
			end
		end
		if armorTypeData and armorTypeData[slot] then
			return armorTypeData[slot]
		end
	end
	return nil
end

---@param e EclLuaCreateEquipmentVisualsRequestEvent
---@param visual FixedString
---@param slot ItemSlot
---@param itemType "Armor"|"Shield"|"Weapon"
local function _SetVisual(e, visual, slot, itemType)
	e.Params.VisualResourceID = visual
	--fprint(LOGLEVEL.TRACE, "[ROR] Setting visual to %s for slot %s", visual, slot)
	if itemType == "Armor" then
		if slot == "Breast" then
			e.Params.DeactivateTorso = true
			e.Params.DeactivateArms = true
		elseif slot == "Helmet" then
			e.Params.DeactivateHead = true
		end
	end
end

Ext.Events.CreateEquipmentVisualsRequest:Subscribe(function (e)
	local character = e.Character or Client:GetCharacter() --[[@as EclCharacter]]
	if character and character.PlayerCustomData then
		local origin = character.PlayerCustomData.OriginName
		local skeleton = OriginToSkeleton[character.PlayerCustomData.OriginName]
		if character.CurrentTemplate.VisualTemplate ~= skeleton then
			--Character is polymorphed
			return
		end
		local data = VisualData[origin] --[[@as VisualDataEntry]]
		if data then
			local slot = Ext.Enums.ItemSlot[e.Params.Slot]
			local item = character:GetItemObjectBySlot(e.Params.Slot)
			if item then
				local template = GameHelpers.GetTemplate(item) --[[@as string]]
				local rarity = item.Stats.ItemTypeReal --[[@as ItemRarity]]
				local specialArmorType = _GetUniqueArmorType(character, item, data.Uniques)
				if specialArmorType then
					local visual = _GetVisualForArmorType(character, data, specialArmorType, slot, rarity)
					if visual then
						_SetVisual(e, visual, slot, item.Stats.ItemType)
						return
					end
				end
				if item.Stats.ItemType == "Armor" then
					local armorType = Ext.Enums.ArmorType[item.Stats.StatsEntry.ArmorType]
					local visual = _GetVisualForArmorType(character, data, armorType, slot, rarity)
					if visual then
						_SetVisual(e, visual, slot, item.Stats.ItemType)
						return
					end
				else
					local visual = data.Weapons[template] or data.Weapons[item.Stats.Name]
					if visual then
						_SetVisual(e, visual, slot, item.Stats.ItemType)
						return
					end
				end
			end
		end
	end
end)
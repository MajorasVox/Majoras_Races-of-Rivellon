VisualResources = {}

Ext.Require("Client/VisualResources.lua")

VisualData = {}

---@param character EclCharacter
---@return string|nil
local function _GetTemplate(character)
	if character then
		if character.CurrentTemplate then
			--When not transformed, CurrentTemplate.Id is the character's MyGuid, and CurrentTemplate.RootTemplate is their root template.
			--When polymorphed etc, CurrentTemplate.Id is the polymorph root template, and CurrentTemplate.RootTemplate is empty.
			if character.CurrentTemplate.Id == character.MyGuid then
				if not StringHelpers.IsNullOrEmpty(character.CurrentTemplate.RootTemplate) then
					return character.CurrentTemplate.RootTemplate
				end
			elseif not StringHelpers.IsNullOrEmpty(character.CurrentTemplate.Id) then
				return character.CurrentTemplate.Id
			end
		end
		if character.RootTemplate then
			if not StringHelpers.IsNullOrEmpty(character.RootTemplate.RootTemplate) then
				return character.RootTemplate.RootTemplate
			else
				return character.RootTemplate.Id
			end
		end
	end
	return nil
end

---@class VisualDataUniques
---@field RootTemplates table<string,string> Priority 1
---@field Stats table<string,string> Priority 2
---@field Tags table<string,string> Priority 3

---@alias ArmorTypeRarity ItemRarity|"All"

---@class VisualDataEntry
---@field Uniques VisualDataUniques
---@field ArmorTypes table<ArmorType, table<ItemSlot, string>>
---@field RarityArmorTypes table<ArmorType, table<ArmorTypeRarity, table<integer, table<ItemSlot, string>>>>
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
	local template = GameHelpers.GetTemplate(item)
	if data.RootTemplates[template] then
		return data.RootTemplates[template]
	end
	local statArmorType = data.Stats[item.StatsId]
	if statArmorType then
		return statArmorType
	end
	local _TAGS = GameHelpers.GetItemTags(item, true)
	for tag,armorType in pairs(data.Tags) do
		if _TAGS[tag] then
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
			--e.Params.DeactivateHead = true
		end
	end
end

---@param character EclCharacter
---@param e EclLuaCreateEquipmentVisualsRequestEvent
---@return VisualDataEntry|nil
local function _GetVisualData(character, e)
	if character then
		local templateGUID = ""
		
		local slot = e.Params.Slot
		if character.PlayerData then
			if slot == "Helmet" then
				if not character.PlayerData.HelmetOptionState then
					return nil
				end
			elseif Data.VisibleEquipmentSlots[slot] and character.PlayerData.ArmorOptionState then
				return nil
			end
		end

		if GameHelpers.IsLevelType(LEVELTYPE.CHARACTER_CREATION) then
			--The root template will be the dummy's template in CC, so we need to get the template from the CharacterCreationManager

			local cc = Ext.UI.GetCharacterCreationWizard()
			if cc then
				for _,v in pairs(cc.CharacterCreationManager.Customizations) do
					if v.CharacterHandle == character.Handle then
						templateGUID = v.State.RootTemplate
						break
					end
				end
			end
		end
		
		if templateGUID == "" then
			templateGUID = _GetTemplate(character)
		end
		if templateGUID ~= "" then
			local template = Ext.Template.GetTemplate(templateGUID) --[[@as CharacterTemplate]]
			if template then
				return VisualData[template.VisualSetResourceID]
			end
		end
	end
end

Ext.Events.CreateEquipmentVisualsRequest:Subscribe(function (e)
	local character = e.Character or Client:GetCharacter() --[[@as EclCharacter]]
	if character and character.PlayerCustomData then
		local data = _GetVisualData(character, e)
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

Events.ClientCharacterChanged:Subscribe(function (e)
	if SharedData.RegionData.LevelType == LEVELTYPE.CHARACTER_CREATION and e.Character.PlayerCustomData then
		if e.Character.PlayerCustomData.OriginName == "ROR_Demonic_Kin" then
			GameHelpers.CC.SetColor("Skin", "24f8eae3a8e74cb9a5c0a01680b96ac1", "Handle") -- Demon Skin
			GameHelpers.CC.SetColor("Hair", "e0895c78f0474477aaa14b0c467e4e9f", "Handle") -- White Smoke
		end
	end
end)
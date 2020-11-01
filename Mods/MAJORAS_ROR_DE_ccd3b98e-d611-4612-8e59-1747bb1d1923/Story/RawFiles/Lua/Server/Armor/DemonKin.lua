local EMPTY_VISUAL = "Demon_Kin_Male_Body_Naked_A_Empty_A"
local UniqueItems = {
	MAJROR_IncarnateArmor = "Incarnate"
}

local TieredArmor = {
	[VisualManager.ArmorType.Plate] = {
		Rare = {
			{
				[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Platemail_Accessory_Ghoul_A", VISUALSLOT.Extra1),
			}
		},
		Epic = {
			{
				[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_PlateMail_Armor_TerracottaGardian_B", VISUALSLOT.Torso),
			}
		},
	},
	[VisualManager.ArmorType.Mail] = {
		Uncommon = {
			{
				[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_A", VISUALSLOT.Arms),
				[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Mage_Armor_AlanBird_A", VISUALSLOT.Torso),
			},
		},
		Rare = {
			{
				[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_B", VISUALSLOT.Arms),
				[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Mage_Armor_AlanBird_B", VISUALSLOT.Torso),
			},
		},
		Epic = {
			{
				[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_Dreamer_A", VISUALSLOT.Arms),
				[ITEMSLOT.Breast] = {
					vr:Create("Demon_Kin_Male_Mage_Armor_Dreamer_A", VISUALSLOT.Torso),
					vr:Create("Demon_Kin_Male_Mage_Accessory_Ghoul_A", VISUALSLOT.Extra1)
				}
			},
		},
		Legendary = {
			{
				[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_B", VISUALSLOT.Arms),
				[ITEMSLOT.Breast] = {
					vr:Create("Demon_Kin_Male_Mage_Armor_AlanBird_C", VISUALSLOT.Torso),
					vr:Create("Demon_Kin_Male_Mage_Accessory_Ghoul_B", VISUALSLOT.Extra1),
				}
			},
		},
		Divine = {
			{
				[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_B", VISUALSLOT.Arms),
				[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Mage_Armor_BurningWitch_A", VISUALSLOT.Torso)
			},
		}
	},
	--[VisualManager.ArmorType.Cloth] = {},
	--[VisualManager.ArmorType.Leather] = {},
	--[VisualManager.ArmorType.Robe] = {},
}

---@return VisualResourceData|nil
local function GetTieredArmorData(visual, armorType, rarity, level, slot)
	local tieredArmorTypeData = TieredArmor[armorType]
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

---@param self VisualElementData
---@param char EsvCharacter
---@param item EsvItem
---@param equipped boolean
local function OnEquipmentChanged(self, char, item, equipped)
	if Debug.Enabled then
		Ext.Print(string.format(Debug.TraceEquipParams, char.DisplayName, item.StatsId, equipped))
	end
	local visualsChanged = false
	if equipped then
		local slot = GameHelpers.Item.GetEquippedSlot(char.MyGuid, item.MyGuid) or item.Stats.Slot
		if item.Stats.Unique == 1 then
			local specialArmorType = ""
			for tag,armorType in pairs(UniqueItems) do
				if item:HasTag(tag) or string.find(item.Stats.Tags, tag) then
					specialArmorType = armorType
					break
				end
			end
			if specialArmorType ~= "" then
				self:ApplyVisualsForArmorType(char, specialArmorType, item.Stats.Slot)
				visualsChanged = true
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

---@param ve VisualElementData
---@param vr VisualResourceData
return function(ve, vr)	
	local DemonVisuals = ve:Create({OnEquipmentChanged=OnEquipmentChanged})
	
	DemonVisuals:AddVisualsForType(VisualManager.ArmorType.None, {
		[ITEMSLOT.Helmet] = vr:Create(EMPTY_VISUAL, VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = {
			vr:Create("Demon_Kin_Male_Body_Naked_A_Body_A", VISUALSLOT.Torso),
			vr:Create(EMPTY_VISUAL, VISUALSLOT.Extra1),
		}
	})
	
	DemonVisuals:AddVisualsForType(VisualManager.ArmorType.Plate, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Platemail_Helmet_Ghoul_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Platemail_Armor_Ghoul_A", VISUALSLOT.Torso),
	})
	
	DemonVisuals:AddVisualsForType(VisualManager.ArmorType.Robe, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Rags_Armor_Demon_A", VISUALSLOT.Torso),
	})
	
	DemonVisuals:AddVisualsForType(VisualManager.ArmorType.Leather, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Leather_Helmet_Assassin_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Leather_Armor_Assassin_A", VISUALSLOT.Torso),
	})
	
	DemonVisuals:AddVisualsForType(VisualManager.ArmorType.Cloth, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Leather_Helmet_Assassin_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Leather_Armor_Assassin_A", VISUALSLOT.Torso),
	})
	
	DemonVisuals:AddVisualsForType(VisualManager.ArmorType.Mail, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Mage_Armor_AlanBird_A", VISUALSLOT.Torso),
	})
	
	DemonVisuals:AddVisualsForType(UniqueItems.MAJROR_IncarnateArmor, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_Incarnate_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Mage_Armor_Incarnate_A", VISUALSLOT.Torso),
	})
	
	VisualManager.Register.Visuals(VISUALID.DemonicKin, DemonVisuals)
end
local EMPTY_VISUAL = "Demon_Kin_Male_Body_Naked_A_Empty_A"
local UniqueItems = {
	MAJROR_IncarnateArmor = "Incarnate"
}

---@param ve VisualElementData
---@param vr VisualResourceData
---@param onEquipmentChangedCallback OnEquipmentChangedCallback
return function(ve, vr, onEquipmentChangedCallback)	
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

	local visualData = ve:Create({OnEquipmentChanged=function(self, char, item, equipped)
		onEquipmentChangedCallback(self, char, item, equipped, TieredArmor, UniqueItems)
	end})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.None, {
		[ITEMSLOT.Helmet] = vr:Create(EMPTY_VISUAL, VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = {
			vr:Create("Demon_Kin_Male_Body_Naked_A_Body_A", VISUALSLOT.Torso),
			vr:Create(EMPTY_VISUAL, VISUALSLOT.Extra1),
		}
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Plate, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Platemail_Helmet_Ghoul_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Platemail_Armor_Ghoul_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Robe, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Rags_Armor_Demon_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Leather, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Leather_Helmet_Assassin_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Leather_Armor_Assassin_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Cloth, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Leather_Helmet_Assassin_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Leather_Armor_Assassin_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Mail, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_AlanBird_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Mage_Armor_AlanBird_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(UniqueItems.MAJROR_IncarnateArmor, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_Male_Mage_Helmet_Incarnate_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_Male_Mage_Armor_Incarnate_A", VISUALSLOT.Torso),
	})
	
	VisualManager.Register.Visuals(VISUALID.DemonicKin, visualData)
end
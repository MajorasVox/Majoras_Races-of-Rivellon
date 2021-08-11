local UniqueItems = {
	MAJROR_IncarnateArmor = "Incarnate"
}

---@param ve VisualElementData
---@param vr VisualResourceData
---@param onEquipmentChangedCallback OnEquipmentChangedCallback
return function(ve, vr, onEquipmentChangedCallback)	
	local TieredArmor = {
		[VisualManager.ArmorType.Plate] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Extra1),
					}
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso)
				},
			}
		},
		[VisualManager.ArmorType.Mail] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Extra1)
					}
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Extra1),
					}
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso)
				},
			}
		},
		[VisualManager.ArmorType.Cloth] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Extra1)
					}
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Extra1),
					}
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso)
				},
			}
		},
		[VisualManager.ArmorType.Leather] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Extra1)
					}
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
						vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Extra1),
					}
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso)
				},
			}
		},
		[VisualManager.ArmorType.Robe] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ACCESSORY_Ghoul_Steaks_A", VISUALSLOT.Extra1),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Dreamer_Helmet_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Dreamer_Armor_A", VISUALSLOT.Torso),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_AlanBird_Helmet_A", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_AlanBird_Armor_A", VISUALSLOT.Torso),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ACCESSORY_Ghoul_Steaks_A", VISUALSLOT.Extra1),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Ghoul_Armor_A", VISUALSLOT.Torso),
						--TODO Extras for ghoul armor
						--vr:Create("", VISUALSLOT.Extra1)
					}
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Dreamer_Helmet_B", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Dreamer_Armor_B", VISUALSLOT.Torso),
						--TODO Extras for Dreamer B
						--vr:Create("", VISUALSLOT.Extra1),
					}
				},
			},
			Divine = {
				{
					--TODO Need some sort of different visual for Divine, or maybe the same visuals, but with different materials.
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Dreamer_Helmet_B", VISUALSLOT.Arms),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Dreamer_Armor_B", VISUALSLOT.Torso)
				},
			}
		},
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
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Robe, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Lizard_Helmet_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Lizard_Armor_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Leather, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Cloth, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Mail, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_Armor_A", VISUALSLOT.Torso),
	})
	
	visualData:AddVisualsForType(UniqueItems.MAJROR_IncarnateArmor, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Incarnate_Helmet_A", VISUALSLOT.Arms),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Incarnate_Armor_A", VISUALSLOT.Torso),
	})
	
	VisualManager.Register.Visuals(VISUALID.DemonicKin, visualData)
end
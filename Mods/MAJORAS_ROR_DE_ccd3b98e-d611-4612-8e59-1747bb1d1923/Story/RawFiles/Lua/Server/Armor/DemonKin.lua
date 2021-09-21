local UniqueItems = {
	--Tag,ArmorTypeKey
	Tags = {
		MAJROR_IncarnateArmor = "ROR_Incarnate"
	},
	--StatID,ArmorTypeKey
	Stats = {
		--Gloves of Teleportation
		ARM_UNIQUE_TeleportationGloves = "ROR_ScaliePort",
		--Band of Braccus
		ARM_UNIQUE_BraccusCursedRing = "ROR_SkullRing",
		--Gawin's Robe, Mistral Robes
		ARM_UNIQUE_AirRobe = "ROR_LizardRobe_A",
		--Danna Dumora
		ARM_UNIQUE_RC_MageUpperBody = "ROR_LizardRobe_A",
	}
}

---@param ve VisualElementData
---@param vr VisualResourceData
---@param onEquipmentChangedCallback OnEquipmentChangedCallback
return function(ve, vr, onEquipmentChangedCallback)	
	local TieredArmor = {
		[VisualManager.ArmorType.Plate] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_PLATE_Lizard_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_PLATE_Lizard_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_PLATE_Lizard_A_Helmet_B", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_PLATE_Lizard_A_Armor_B", VISUALSLOT.Helmet),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_PLATE_AlanBird_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_PLATE_AlanBird_A_Armor_A", VISUALSLOT.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_B", VISUALSLOT.Extra1),
					}
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_PLATE_TerracottaGardian_A_Helmet_B", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_PLATE_TerracottaGardian_A_Armor_B", VISUALSLOT.Helmet),
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_PLATE_Utopian_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_PLATE_Utopian_A_Armor_A", VISUALSLOT.Helmet),
				},
			}
		},
		[VisualManager.ArmorType.Mail] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_MAIL_Lizard_Scale_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_MAIL_Lizard_Scale_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VISUALSLOT.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_B", VISUALSLOT.Extra1),
					}
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VISUALSLOT.Helmet),
				},
			}
		},
		[VisualManager.ArmorType.Cloth] = {
			Common = {
				{
					--[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_CLOTH_Purged_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_CLOTH_Purged_A_Armor_A", VISUALSLOT.Torso),
				},
			},
			Uncommon = {
				{
					--[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_CLOTH_Demon_Rags_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_CLOTH_Demon_Rags_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Armor_B", VISUALSLOT.Helmet),
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Armor_B", VISUALSLOT.Helmet),
				},
			}
		},
		[VisualManager.ArmorType.Leather] = {
			Common = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Uncommon = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Rare = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Elf_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Elf_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Legendary = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Divine = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Helmet_B", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Armor_A", VISUALSLOT.Helmet),
				},
			}
		},
		[VisualManager.ArmorType.Robe] = {
			Common = {
				{
					--[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Demon_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Demon_A_Armor_A", VISUALSLOT.Torso),
				},
			},
			Uncommon = {
				{
					--[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_BurningWitch_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_BurningWitch_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Rare = {
				{
					--[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Ghoul_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_Ghoul_A_Armor_A", VISUALSLOT.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_A", VISUALSLOT.Extra1),
					}
				},
			},
			Epic = {
				{
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_AlanBird_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = {
						vr:Create("Demon_Kin_ROBE_AlanBird_A_Armor_A", VISUALSLOT.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_A", VISUALSLOT.Extra1),
					}
				},
			},
			Legendary = {
				{
					--[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Paladin_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Paladin_A_Armor_A", VISUALSLOT.Helmet),
				},
			},
			Divine = {
				{					
					[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Blackring_A_Helmet_A", VISUALSLOT.Beard),
					[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Blackring_A_Armor_A", VISUALSLOT.Helmet),
				},
			}
		},
	}		
	local visualData = ve:Create({OnEquipmentChanged=function(self, char, item, equipped)
		onEquipmentChangedCallback(self, char, item, equipped, TieredArmor, UniqueItems)
	end})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.None, {
		[ITEMSLOT.Helmet] = vr:Create(EMPTY_VISUAL, VISUALSLOT.Beard),
		[ITEMSLOT.Breast] = {
			vr:Create("Demon_Kin_Male_Body_Naked_A_Body_A", VISUALSLOT.Helmet),
			vr:Create(EMPTY_VISUAL, VISUALSLOT.Extra1),
			vr:Create(EMPTY_VISUAL, VISUALSLOT.Torso),			
		}
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Plate, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Helmet_A", VISUALSLOT.Beard),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Armor_A", VISUALSLOT.Helmet),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Robe, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Ghoul_A_Helmet_A", VISUALSLOT.Beard),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Ghoul_A_Armor_A", VISUALSLOT.Helmet),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Leather, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Helmet_A", VISUALSLOT.Beard),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Armor_A", VISUALSLOT.Helmet),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Cloth, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_CLOTH_Demon_Rags_A_Helmet_A", VISUALSLOT.Beard),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_CLOTH_Demon_Rags_A_Armor_A", VISUALSLOT.Helmet),
	})
	
	visualData:AddVisualsForType(VisualManager.ArmorType.Mail, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VISUALSLOT.Beard),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VISUALSLOT.Helmet),
	})
	
	visualData:AddVisualsForType(UniqueItems.Tags.MAJROR_IncarnateArmor, {
		[ITEMSLOT.Helmet] = vr:Create("Demon_Kin_ROBE_Incarnate_A_Helmet_A", VISUALSLOT.Beard),
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Incarnate_A_Armor_A", VISUALSLOT.Helmet),
	})
	visualData:AddVisualsForType("ROR_LizardRobe_A", {
		[ITEMSLOT.Breast] = vr:Create("Demon_Kin_ROBE_Lizard_A_Armor_A", VISUALSLOT.Helmet),
	})
	visualData:AddVisualsForType("ROR_ScaliePort", {
		[ITEMSLOT.Gloves] = vr:Create("Demon_Kin_ACCESSORY_ScaliePort_A_Arms_A", VISUALSLOT.Extra1),
	})
	visualData:AddVisualsForType("ROR_SkullRing", {
		[ITEMSLOT.Ring] = vr:Create("Demon_Kin_ACCESSORY_Skull_A_Ring_A", VISUALSLOT.Extra2),
	})
	
	VisualManager.Register.Visuals(VISUALID.DemonicKin, visualData)
end
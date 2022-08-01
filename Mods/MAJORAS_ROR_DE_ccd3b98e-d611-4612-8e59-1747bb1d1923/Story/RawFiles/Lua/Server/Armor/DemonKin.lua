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
		--Alexandar's Cloak, Divine Order Inquisitor
		FTJ_Alexandar_Armour = "ROR_InquisitorRobe_A",
		--Danna Dumora
		ARM_UNIQUE_RC_MageUpperBody = "ROR_ElfRobe_A",
	}
}

---@param ve VisualElementData
---@param vr VisualResourceData
---@param onEquipmentChangedCallback OnEquipmentChangedCallback
return function(ve, vr, onEquipmentChangedCallback)	
	local TieredArmor = {
		[VM.ArmorType.Plate] = {
			Common = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_PLATE_Lizard_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_PLATE_Lizard_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Uncommon = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_PLATE_Lizard_A_Helmet_B", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_PLATE_Lizard_A_Armor_B", VM.VisualSlot.Helmet),
				},
			},
			Rare = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Epic = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_PLATE_AlanBird_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = {
						vr:Create("Demon_Kin_PLATE_AlanBird_A_Armor_A", VM.VisualSlot.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_B", VM.VisualSlot.Extra1),
					}
				},
			},
			Legendary = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_PLATE_TerracottaGardian_A_Armor_B", VM.VisualSlot.Helmet),
				},
			},
			Divine = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_PLATE_Utopian_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_PLATE_Utopian_A_Armor_A", VM.VisualSlot.Helmet),
				},
			}
		},
		[VM.ArmorType.Mail] = {
			Common = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Uncommon = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_MAIL_Lizard_Chain_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Rare = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_MAIL_Lizard_Scale_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_MAIL_Lizard_Scale_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Epic = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = {
						vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VM.VisualSlot.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_B", VM.VisualSlot.Extra1),
					}
				},
			},
			Legendary = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Divine = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VM.VisualSlot.Helmet),
				},
			}
		},
		[VM.ArmorType.Cloth] = {
			Common = {
				{
					[VM.Slot.Helmet] = vr:Create("ROR_Empty", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_CLOTH_Purged_A_Armor_A", VM.VisualSlot.Torso),
				},
			},
			Uncommon = {
				{
					[VM.Slot.Helmet] = vr:Create("ROR_Empty", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_CLOTH_Demon_Rags_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Rare = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Epic = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Legendary = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Armor_B", VM.VisualSlot.Helmet),
				},
			},
			Divine = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_CLOTH_Lizard_A_Armor_B", VM.VisualSlot.Helmet),
				},
			}
		},
		[VM.ArmorType.Leather] = {
			Common = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Bandit_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Uncommon = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Rare = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Elf_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Elf_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Epic = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Legendary = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Divine = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Helmet_B", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Lizard_A_Armor_A", VM.VisualSlot.Helmet),
				},
			}
		},
		[VM.ArmorType.Robe] = {
			Common = {
				{
					[VM.Slot.Helmet] = vr:Create("ROR_Empty", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Demon_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Uncommon = {
				{
					[VM.Slot.Helmet] = vr:Create("ROR_Empty", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_BurningWitch_A_Armor_A", VM.VisualSlot.Helmet),
				},
			},
			Rare = {
				{
					[VM.Slot.Helmet] = vr:Create("ROR_Empty", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = {
						vr:Create("Demon_Kin_ROBE_Ghoul_A_Armor_A", VM.VisualSlot.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_A", VM.VisualSlot.Extra1),
					}
				},
			},
			Epic = {
				{
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_ROBE_AlanBird_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = {
						vr:Create("Demon_Kin_ROBE_AlanBird_A_Armor_A", VM.VisualSlot.Helmet),
						vr:Create("Demon_Kin_ACCESSORY_Ghoul_A_Steaks_A", VM.VisualSlot.Extra1),
					}
				},
			},
			Legendary = {
				{
					[VM.Slot.Helmet] = vr:Create("ROR_Empty", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Paladin_A_Armor_A", VM.VisualSlot.Torso),
				},
			},
			Divine = {
				{					
					[VM.Slot.Helmet] = vr:Create("Demon_Kin_ROBE_Blackring_A_Helmet_A", VM.VisualSlot.Beard),
					[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Blackring_A_Armor_A", VM.VisualSlot.Torso),
				},
			}
		},
	}		
	local visualData = ve:Create({OnEquipmentChanged=function(self, char, item, equipped)
		onEquipmentChangedCallback(self, char, item, equipped, TieredArmor, UniqueItems)
	end})
	
	visualData:AddVisualsForType(VM.ArmorType.None, {
		[VM.Slot.Helmet] = vr:Create(EMPTY_VISUAL, VM.VisualSlot.Beard),
		[VM.Slot.Breast] = {
			vr:Create("Demon_Kin_Male_Body_Naked_A_Body_A", VM.VisualSlot.Helmet),
			vr:Create(EMPTY_VISUAL, VM.VisualSlot.Torso),
			vr:Create(EMPTY_VISUAL, VM.VisualSlot.Arms),
			vr:Create(EMPTY_VISUAL, VM.VisualSlot.Trousers),
			vr:Create(EMPTY_VISUAL, VM.VisualSlot.Boots),
			vr:Create(EMPTY_VISUAL, VM.VisualSlot.Extra1),
			vr:Create(EMPTY_VISUAL, VM.VisualSlot.Extra2),
		}
	})
	
	visualData:AddVisualsForType(VM.ArmorType.Plate, {
		[VM.Slot.Helmet] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Helmet_A", VM.VisualSlot.Beard),
		[VM.Slot.Breast] = vr:Create("Demon_Kin_PLATE_Ghoul_A_Armor_A", VM.VisualSlot.Helmet),
	})
	
	visualData:AddVisualsForType(VM.ArmorType.Robe, {
		[VM.Slot.Helmet] = vr:Create("Demon_Kin_ROBE_Ghoul_A_Helmet_A", VM.VisualSlot.Beard),
		[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Ghoul_A_Armor_A", VM.VisualSlot.Helmet),
	})
	
	visualData:AddVisualsForType(VM.ArmorType.Leather, {
		[VM.Slot.Helmet] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Helmet_A", VM.VisualSlot.Beard),
		[VM.Slot.Breast] = vr:Create("Demon_Kin_LEATHER_Assassin_A_Armor_A", VM.VisualSlot.Helmet),
	})
	
	visualData:AddVisualsForType(VM.ArmorType.Cloth, {
		[VM.Slot.Helmet] = vr:Create("Demon_Kin_CLOTH_Demon_Rags_A_Helmet_A", VM.VisualSlot.Beard),
		[VM.Slot.Breast] = vr:Create("Demon_Kin_CLOTH_Demon_Rags_A_Armor_A", VM.VisualSlot.Helmet),
	})
	
	visualData:AddVisualsForType(VM.ArmorType.Mail, {
		[VM.Slot.Helmet] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Helmet_A", VM.VisualSlot.Beard),
		[VM.Slot.Breast] = vr:Create("Demon_Kin_MAIL_AlanBird_A_Armor_A", VM.VisualSlot.Helmet),
	})
	
	visualData:AddVisualsForType(UniqueItems.Tags.MAJROR_IncarnateArmor, {
		[VM.Slot.Helmet] = vr:Create("Demon_Kin_ROBE_Incarnate_A_Helmet_A", VM.VisualSlot.Beard),
		[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Incarnate_A_Armor_A", VM.VisualSlot.Helmet),
	})
	visualData:AddVisualsForType("ROR_LizardRobe_A", {
		[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Lizard_A_Armor_A", VM.VisualSlot.Torso),
	})
	visualData:AddVisualsForType("ROR_ScaliePort", {
		[VM.Slot.Gloves] = vr:Create("Demon_Kin_ACCESSORY_ScaliePort_A_Arms_A", VM.VisualSlot.Extra1),
	})
	visualData:AddVisualsForType("ROR_SkullRing", {
		[VM.Slot.Ring] = vr:Create("Demon_Kin_ACCESSORY_Skull_A_Ring_A", VM.VisualSlot.Extra2),
	})
	visualData:AddVisualsForType("ROR_InquisitorRobe_A", {
		[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Redfaction_Inquisitor_A_Armor_A", VM.VisualSlot.Torso),
	})
	visualData:AddVisualsForType("ROR_ElfRobe_A", {
		[VM.Slot.Breast] = vr:Create("Demon_Kin_ROBE_Elf_A_Armor_A", VM.VisualSlot.Helmet),
	})
		
	VM.Register.Visuals(VISUALID.DemonicKin, visualData)
end
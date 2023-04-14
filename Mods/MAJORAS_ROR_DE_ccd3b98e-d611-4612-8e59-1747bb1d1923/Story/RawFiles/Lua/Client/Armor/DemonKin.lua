local ARMORTYPE = Ext.Enums.ArmorType
local SLOT = Ext.Enums.ItemSlot
local RESOURCE = VisualResources.DemonKin

---@type VisualDataEntry
VisualData[VisualSetID.DemonKin] = {
	RarityArmorTypes = {
		[ARMORTYPE.Plate] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Guard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Guard_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Lizard_A_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_A_Helmet_B,
					[SLOT.Breast] = RESOURCE.PLATE_Lizard_A_Armor_B,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Ghoul_A_Armor_A
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_AlanBird_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_AlanBird_A_Armor_A,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Blackring_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Blackring_A_Armor_A,
				},
			}
		},
		[ARMORTYPE.Mail] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_Lizard_Chain_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_Lizard_Chain_A_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Scale_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_Lizard_Scale_A_Armor_A,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_AlanBird_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_AlanBird_A_Armor_A
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_AlanBird_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_AlanBird_A_Armor_A
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_AlanBird_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_AlanBird_A_Armor_A
				},
			}
		},
		[ARMORTYPE.Cloth] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.CLOTH_Purged_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.CLOTH_Purged_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.CLOTH_Demon_Rags_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_A_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Bandit_A_Helmet_A,--TODO Rare Helmet
					[SLOT.Breast] = RESOURCE.LEATHER_Bandit_A_Armor_A,--TODO Rare Breast
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.CLOTH_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.CLOTH_Lizard_A_Armor_A,
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.CLOTH_Lizard_A_Helmet_B,
					[SLOT.Breast] = RESOURCE.CLOTH_Lizard_A_Armor_B,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_Lizard_A_Armor_A,
				},
			}
		},
		[ARMORTYPE.Leather] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Bandit_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Bandit_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Assassin_A_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Elf_A_Armor_A,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Lizard_A_Armor_A,
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Lizard_A_Armor_A,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_A_Helmet_B,
					[SLOT.Breast] = RESOURCE.LEATHER_Lizard_A_Armor_A,
				},
			}
		},
		[ARMORTYPE.Robe] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.CLOTH_Demon_Rags_A_Helmet_A,--TODO Common Helmet
					[SLOT.Breast] = RESOURCE.ROBE_Demon_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Dreamer_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_Dreamer_A_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Ghoul_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_Ghoul_A_Armor_A
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_AlanBird_A_Armor_A
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_Paladin_A_Armor_A,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Blackring_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_Blackring_A_Armor_A,
				},
			}
		},
	},
	ArmorTypes = {
		[ARMORTYPE.Plate] = {
			[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Ghoul_A_Armor_A,
		},
		[ARMORTYPE.Robe] = {
			[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Ghoul_A_Armor_A,
		},
		[ARMORTYPE.Leather] = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.LEATHER_Assassin_A_Armor_A,
		},
		[ARMORTYPE.Cloth] = {
			[SLOT.Helmet] = RESOURCE.CLOTH_Demon_Rags_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_A_Armor_A,
		},
		[ARMORTYPE.Mail] = {
			[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.MAIL_AlanBird_A_Armor_A,
		},
		--Custom armor types
		ROR_Incarnate = {
			[SLOT.Helmet] = RESOURCE.ROBE_Incarnate_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Incarnate_A_Armor_A,
		},
		ROR_LizardRobe_A = {
			[SLOT.Breast] = RESOURCE.ROBE_Lizard_A_Armor_A,
		},
		ROR_ScaliePort = {
			[SLOT.Gloves] = RESOURCE.ACCESSORY_ScaliePort_A_Arms_A,
		},
		ROR_SkullRing = {
			[SLOT.Ring] = RESOURCE.ACCESSORY_Skull_A_Ring_A,
		},
		ROR_InquisitorRobe_A = {
			[SLOT.Breast] = RESOURCE.ROBE_Redfaction_Inquisitor_A_Armor_A,
		},
		ROR_BrutePlate_A = {
			[SLOT.Breast] = RESOURCE.PLATE_Redfaction_Brute_A_Armor_A,
		},
		ROR_ElfRobe_A = {
			[SLOT.Breast] = RESOURCE.ROBE_Elf_A_Armor_A,
		},
		ROR_PriestRobe_A = {
			[SLOT.Breast] = RESOURCE.ROBE_Redfaction_Priest_A_Armor_A,
		},
		ROR_BicorneHat = {
			[SLOT.Helmet] = RESOURCE.UNIQUE_Beast_A_Helmet_A,
		},
		ROR_Blindfold = {
			[SLOT.Helmet] = RESOURCE.UNIQUE_Blindfold_A_Helmet_A,
		},
		ROR_GuardPlate = {
			[SLOT.Breast] = RESOURCE.PLATE_Guard_A_Armor_A,
		},
		ROR_Wings = {
			[SLOT.Wings] = function (character, e, item)
				if character:GetStatus("PURE") then
					return RESOURCE.FX_SK_Angel_A_Wings_A
				end
				return RESOURCE.FX_SK_Demon_A_Wings_A
			end
		}
	},
	Uniques = {
		--Tag,ArmorTypeKey
		Tags = {
			MAJROR_IncarnateArmor = "ROR_Incarnate"
		},
		--StatID,ArmorTypeKey
		Stats = {
			--Fran The Bicorne Hat
			ARM_UNIQUE_BeastBicorne = "ROR_BicorneHat",
			--Gloves of Teleportation
			ARM_UNIQUE_TeleportationGloves = "ROR_ScaliePort",
			--Hildur's Plate
			ARM_UNIQUE_Hildurs_Plate_UpperBody = "ROR_GuardPlate",
			--Band of Braccus
			ARM_UNIQUE_BraccusCursedRing = "ROR_SkullRing",
			--Gawin's Robe, Mistral Robes
			ARM_UNIQUE_AirRobe = "ROR_LizardRobe_A",
			--Alexandar's Cloak, Divine Order Inquisitor
			FTJ_Alexandar_Armour = "ROR_InquisitorRobe_A",
			--Danna Dumora
			ARM_UNIQUE_RC_MageUpperBody = "ROR_ElfRobe_A",
			--Migo's Breastplate
			FTJ_Gheist_Migo_UpperBody = "ROR_BrutePlate_A",
			--Magister's Mantle
			FTJ_HarbourMagister_MageArmour = "ROR_PriestRobe_A",
			--Blindfold
			ARM_UNIQUE_Blindfolds = "ROR_Blindfold",
		},
		RootTemplates = {
			-- EQ_Avatar_Wings
			["a71d1908-7499-42c2-8c6b-a2173be582dc"] = "ROR_Wings"
		},
	},
	Weapons = {},
	DeactivateVisuals = {
		Breast = {
			DeactivateTorso = true,
			DeactivateArms = true,
		}
	}
}
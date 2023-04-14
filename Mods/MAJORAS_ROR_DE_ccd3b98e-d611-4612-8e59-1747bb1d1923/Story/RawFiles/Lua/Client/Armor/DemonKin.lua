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
			[SLOT.Helmet] = RESOURCE.ROBE_Ghoul_A_Helmet_A,
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
		--Custom Armor Types
		--Creature
		ROR_Alan_Bird_Light_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_AlanBird_A_Armor_A,
		},
		ROR_Alan_Bird_Medium_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.MAIL_AlanBird_A_Armor_A,
		},
		ROR_Alan_Bird_Heavy_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_AlanBird_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_AlanBird_A_Armor_A,
		},
		ROR_Ghoul_Plate_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Ghoul_A_Armor_A,
		},
		ROR_Ghoul_Mage_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Ghoul_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Ghoul_A_Armor_A,
		},
		ROR_Metamorph_Werewolf = {
			[SLOT.Breast] = RESOURCE.LEATHER_Werewolf_A_Armor_A,
		},
		ROR_Terracotta_Guardian_Plate_Glow = {
			[SLOT.Breast] = RESOURCE.PLATE_TerracottaGardian_A_Armor_A,
		},
		ROR_Terracotta_Guardian_Plate_Heavy = {
			[SLOT.Breast] = RESOURCE.PLATE_TerracottaGardian_A_Armor_B,
		},
		ROR_Utopian_Plate_A_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_Utopian_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Utopian_A_Armor_A,
		},
		ROR_Utopian_Plate_B_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_Utopian_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Utopian_A_Armor_B,
		},
		ROR_Burning_Witch_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_BurningWitch_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_BurningWitch_A_Armor_A,
		},
		ROR_Demon_Rags_Set = {
			[SLOT.Helmet] = RESOURCE.CLOTH_Demon_Rags_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_A_Armor_A,
		},
		ROR_Demon_Mage_Set = {
			[SLOT.Helmet] = RESOURCE.CLOTH_Demon_Rags_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Demon_A_Armor_A,
		},
		ROR_Incarnate_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Incarnate_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Incarnate_A_Armor_A,
		},
		ROR_Lich_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Lich_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Lich_A_Armor_A,
		},
		--Lizard
		ROR_Fancy_A_Set = {
			[SLOT.Helmet] = RESOURCE.CLOTH_Lizard_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.CLOTH_Lizard_A_Armor_A,
		},
		ROR_Fancy_B_Set = {
			[SLOT.Helmet] = RESOURCE.CLOTH_Lizard_A_Helmet_B,
			[SLOT.Breast] = RESOURCE.CLOTH_Lizard_A_Armor_B,
		},
		ROR_Fancy_C_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Lizard_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Lizard_A_Armor_A,
		},
		ROR_Assassin_Set = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.LEATHER_Assassin_A_Armor_A,
		},
		ROR_Leather_A_Set = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.LEATHER_Lizard_A_Armor_A,
		},
		ROR_Leather_B_Set = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_A_Helmet_B,
			[SLOT.Breast] = RESOURCE.LEATHER_Lizard_A_Armor_A,
		},
		ROR_Chainmail_Set = {
			[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.MAIL_Lizard_Chain_A_Armor_A,
		},
		ROR_Scalemail_Set = {
			[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Scale_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.MAIL_Lizard_Scale_A_Armor_A,
		},
		ROR_Plate_A_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_Lizard_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Lizard_A_Armor_A,
		},
		ROR_Plate_B_Set = {
			[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_A_Helmet_B,
			[SLOT.Breast] = RESOURCE.PLATE_Lizard_A_Armor_B,
		},
		ROR_Dreamer_Mage_Light_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Dreamer_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Dreamer_A_Armor_A,
		},
		ROR_Dreamer_Mage_Heavy_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Dreamer_A_Helmet_B,
			[SLOT.Breast] = RESOURCE.ROBE_Dreamer_A_Armor_B,
		},
		--Elf
		ROR_Elf_Mage_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Elf_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Elf_A_Armor_A,
		},
		ROR_Elf_Rogue = {
			[SLOT.Breast] = RESOURCE.LEATHER_Elf_A_Armor_A,
		},
		ROR_Dark_Elf_Rogue = {
			[SLOT.Breast] = RESOURCE.LEATHER_Elf_A_Armor_A,
		},
		--Human
		ROR_Bandit_Set = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Bandit_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.LEATHER_Bandit_A_Armor_A,
		},
		ROR_Merchant = {
			[SLOT.Breast] = RESOURCE.LEATHER_Human_Merchant_A_Armor_A,
		},
		ROR_Braccus_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_Braccus_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Braccus_A_Armor_A,
		},
		ROR_Guard_Plate_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_Guard_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Guard_A_Armor_A,
		},
		ROR_Arhu_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Arhu_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Arhu_A_Armor_A,
		},
		--Magister
		ROR_Magister_Rags_Set = {
			[SLOT.Helmet] = RESOURCE.CLOTH_Purged_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.CLOTH_Purged_A_Armor_A,
		},
		ROR_Magister_Plate = {
			[SLOT.Breast] = RESOURCE.PLATE_Redfaction_Brute_A_Armor_A,
		},
		ROR_Magister_Inquisitor = {
			[SLOT.Breast] = RESOURCE.ROBE_Redfaction_Inquisitor_A_Armor_A,
		},
		ROR_Magister_Priest = {
			[SLOT.Breast] = RESOURCE.ROBE_Redfaction_Priest_A_Armor_A,
		},
		ROR_Magister_Gheist_Set = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Gheist_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.LEATHER_Gheist_A_Armor_A,
		},
		--Blackring
		ROR_Blackring_Wizard_Set = {
			[SLOT.Helmet] = RESOURCE.ROBE_Blackring_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Blackring_A_Armor_A,
		},
		ROR_Blackring_Plate_Set = {
			[SLOT.Helmet] = RESOURCE.PLATE_Blackring_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Blackring_A_Armor_A,
		},
		--Paladin
		ROR_Paladin_Wizard = {
			[SLOT.Breast] = RESOURCE.ROBE_Paladin_A_Armor_A,
		},
		--Unique
		ROR_Bicorne_Hat = {
			[SLOT.Breast] = RESOURCE.UNIQUE_Beast_A_Helmet_A,
		},
		ROR_Teleport_Gloves = {
			[SLOT.Gloves] = RESOURCE.UNIQUE_Teleport_Gloves_A_Arms_A,
		},
		ROR_Blindfold = {
			[SLOT.Breast] = RESOURCE.UNIQUE_Blindfold_A_Helmet_A,
		},
		ROR_Troll_Fancy_Fez = {
			[SLOT.Helmet] = RESOURCE.UNIQUE_TrollFez_A_Helmet_A,
		},
		ROR_Sir_Lora_Helm = {
			[SLOT.Helmet] = RESOURCE.UNIQUE_SquirrelKnight_A_Helmet_A,
		},
		--Accessory
		ROR_Skull_Ring = {
			[SLOT.Ring] = RESOURCE.ACCESSORY_Skull_A_Ring_A,
		},
		--New
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
			MAJROR_IncarnateArmor = "ROR_Incarnate_Set"
		},
		--StatID,ArmorTypeKey
		Stats = {
			--Fran The Bicorne Hat
			ARM_UNIQUE_BeastBicorne = "ROR_Bicorne_Hat",
			--Migo's Breastplate
			FTJ_Gheist_Migo_UpperBody = "ROR_Magister_Plate",
			--Gloves of Teleportation
			ARM_UNIQUE_TeleportationGloves = "ROR_Teleport_Gloves",
			--Hildur's Plate
			ARM_UNIQUE_Hildurs_Plate_UpperBody = "ROR_Guard_Plate_Set",
			--Magister's Mantle
			FTJ_HarbourMagister_MageArmour = "ROR_Magister_Priest",
			--Gawin's Robe, Mistral Robes
			ARM_UNIQUE_AirRobe = "ROR_Fancy_C_Set",
			--Band of Braccus
			ARM_UNIQUE_BraccusCursedRing = "ROR_Skull_Ring",
			--Corrupted Tyrant's Helm
			ARM_UNIQUE_BraccusHelmet_Uncured = "ROR_Braccus_Set",
			--Tyrant's Helm
			ARM_UNIQUE_BraccusHelmet_Cured = "ROR_Braccus_Set",
			--Heart of the Tyrant
			ARM_UNIQUE_BraccusArmor_UpperBody = "ROR_Braccus_Set",
			--Alexandar's Cloak, Divine Order Inquisitor
			FTJ_Alexandar_Armour = "ROR_Magister_Inquisitor",
			--Blindfold
			ARM_UNIQUE_Blindfolds = "ROR_Blindfold",
			--Danna Dumora
			ARM_UNIQUE_RC_MageUpperBody = "ROR_Elf_Mage_Set",
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
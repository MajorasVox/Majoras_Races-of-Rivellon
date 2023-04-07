local ARMORTYPE = Ext.Enums.ArmorType
local SLOT = Ext.Enums.ItemSlot
local RESOURCE = VisualResources.DemonKin

---@type VisualDataEntry
VisualData[VisualSetID.DemonKin] = {
	RarityArmorTypes = {
		[ARMORTYPE.Plate] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Lizard_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Lizard_A_Armor_B,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Ghoul_A_Armor_A,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_AlanBird_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_AlanBird_A_Armor_A
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_TerracottaGardian_A_Armor_A,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Utopian_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Utopian_A_Armor_A,
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
					[SLOT.Breast] = RESOURCE.CLOTH_Purged_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_A_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Bandit_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Bandit_A_Armor_A,
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
					[SLOT.Helmet] = RESOURCE.CLOTH_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.CLOTH_Lizard_A_Armor_B,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.CLOTH_Lizard_A_Helmet_A,
					[SLOT.Breast] = RESOURCE.CLOTH_Lizard_A_Armor_B,
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
					[SLOT.Breast] = RESOURCE.ROBE_Demon_A_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Breast] = RESOURCE.ROBE_BurningWitch_A_Armor_A,
				},
			},
			Rare = {
				{
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
			[SLOT.Breast] = RESOURCE.ROBE_Ghoul_A_Armor_A, -- TODO Has a skull covering the head
		},
		[ARMORTYPE.Leather] = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_A_Helmet_A,
			[SLOT.Breast] = RESOURCE.LEATHER_Assassin_A_Armor_A,
		},
		[ARMORTYPE.Cloth] = {
			[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_A_Helmet_A,
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
	},
	Uniques = {
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
			--Migo's Breastplate
			FTJ_Gheist_Migo_UpperBody = "ROR_BrutePlate_A",
		}
	},
	Weapons = {}
}
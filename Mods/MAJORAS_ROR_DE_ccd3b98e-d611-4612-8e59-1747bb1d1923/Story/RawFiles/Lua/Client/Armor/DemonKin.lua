local ARMORTYPE = Ext.Enums.ArmorType
local SLOT = Ext.Enums.ItemSlot
local RESOURCE = VisualResources.DemonKin

---@type VisualDataEntry
VisualData[OriginID.DemonKin] = {
	RarityArmorTypes = {
		[ARMORTYPE.Plate] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Lizard_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Lizard_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_Helmet_B,
					[SLOT.Breast] = RESOURCE.PLATE_Lizard_Armor_B,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Ghoul_Armor_A,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_AlanBird_Armor_B
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_TerracottaGardian_Armor_A,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.PLATE_SquirrelKnight_Helmet_A,
					[SLOT.Breast] = RESOURCE.PLATE_Utopian_Armor_A,
				},
			}
		},
		[ARMORTYPE.Mail] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_Lizard_Chain_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Chain_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_Lizard_Chain_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.MAIL_Lizard_Scale_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_Lizard_Scale_Armor_A,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_AlanBird_Armor_B
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_AlanBird_Armor_B,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_Helmet_A,
					[SLOT.Breast] = RESOURCE.MAIL_AlanBird_Armor_B,
				},
			}
		},
		[ARMORTYPE.Cloth] = {
			Common = {
				{
					[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.CLOTH_TrollFez_Helmet_A,
					[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_Armor_A,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Lizard_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_Lizard_Armor_A,
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Dreamer_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_Dreamer_Armor_A,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Dreamer_Helmet_B,
					[SLOT.Breast] = RESOURCE.ROBE_Dreamer_Armor_B,
				},
			}
		},
		[ARMORTYPE.Leather] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Gheist_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Gheist_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Assassin_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Assassin_Armor_A,
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Lizard_Armor_A,
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_Helmet_A,
					[SLOT.Breast] = RESOURCE.LEATHER_Lizard_Armor_A,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.LEATHER_Lizard_Helmet_B,
					[SLOT.Breast] = RESOURCE.LEATHER_Lizard_Armor_A,
				},
			}
		},
		[ARMORTYPE.Robe] = {
			Common = {
				{
					[SLOT.Breast] = RESOURCE.ROBE_Demon_Armor_A,
				},
			},
			Uncommon = {
				{
					[SLOT.Breast] = RESOURCE.ROBE_BurningWitch_Armor_A,
				},
			},
			Rare = {
				{
					[SLOT.Breast] = RESOURCE.ROBE_Ghoul_Armor_A
				},
			},
			Epic = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_AlanBird_Armor_A
				},
			},
			Legendary = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_Helmet_A,
					[SLOT.Breast] = RESOURCE.ROBE_AlanBird_Armor_C,
				},
			},
			Divine = {
				{
					[SLOT.Helmet] = RESOURCE.ROBE_Dreamer_Helmet_B,
					[SLOT.Breast] = RESOURCE.ROBE_Dreamer_Armor_B,
				},
			}
		},
	},
	ArmorTypes = {
		[ARMORTYPE.Plate] = {
			[SLOT.Helmet] = RESOURCE.PLATE_Ghoul_Helmet_A,
			[SLOT.Breast] = RESOURCE.PLATE_Ghoul_Armor_A,
		},
		[ARMORTYPE.Robe] = {
			[SLOT.Helmet] = RESOURCE.ROBE_Lizard_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Ghoul_Armor_A,
		},
		[ARMORTYPE.Leather] = {
			[SLOT.Helmet] = RESOURCE.LEATHER_Assassin_Helmet_A,
			[SLOT.Breast] = RESOURCE.LEATHER_Assassin_Armor_A,
		},
		[ARMORTYPE.Cloth] = {
			[SLOT.Helmet] = RESOURCE.CLOTH_TrollFez_Helmet_A,
			[SLOT.Breast] = RESOURCE.CLOTH_Demon_Rags_Armor_A,
		},
		[ARMORTYPE.Mail] = {
			[SLOT.Helmet] = RESOURCE.ROBE_AlanBird_Helmet_A,
			[SLOT.Breast] = RESOURCE.MAIL_AlanBird_Armor_B,
		},
		--Custom armor types
		ROR_Incarnate = {
			[SLOT.Helmet] = RESOURCE.ROBE_Incarnate_Helmet_A,
			[SLOT.Breast] = RESOURCE.ROBE_Incarnate_Armor_A,
		},
		ROR_LizardRobe_A = {
			[SLOT.Breast] = RESOURCE.ROBE_Lizard_Armor_A,
		},
		-- ROR_ScaliePort = {
		-- 	[SLOT.Gloves] = "Demon_Kin_ACCESSORY_ScaliePort_Arms_A",
		-- },
		-- ROR_SkullRing = {
		-- 	[SLOT.Ring] = "Demon_Kin_ACCESSORY_Skull_Ring_A",
		-- },
		-- ROR_InquisitorRobe_A = {
		-- 	[SLOT.Breast] = "Demon_Kin_ROBE_Redfaction_Inquisitor_Armor_A",
		-- },
		-- ROR_ElfRobe_A = {
		-- 	[SLOT.Breast] = "Demon_Kin_ROBE_Elf_Armor_A",
		-- },
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
		}
	},
	Weapons = {}
}
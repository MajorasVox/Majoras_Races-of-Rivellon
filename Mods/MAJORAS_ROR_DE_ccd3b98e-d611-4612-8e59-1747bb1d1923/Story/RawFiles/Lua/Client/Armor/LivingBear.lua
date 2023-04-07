local ARMORTYPE = Ext.Enums.ArmorType
local SLOT = Ext.Enums.ItemSlot
local RESOURCE = VisualResources.LivingBear

---@type VisualDataEntry
VisualData[VisualSetID.LivingBear] = {
	RarityArmorTypes = {
		[ARMORTYPE.Plate] = {
			Common = {
				{
					[SLOT.Helmet] = RESOURCE.Pot_Helmet_Starter_A,
				},
			}
		},
	},
	ArmorTypes = {
		[ARMORTYPE.Plate] = {
			
		},
		[ARMORTYPE.Robe] = {
			
		},
		[ARMORTYPE.Leather] = {
			
		},
		[ARMORTYPE.Cloth] = {
			
		},
		[ARMORTYPE.Mail] = {
			
		},
		ROR_Bucket = {
			[SLOT.Helmet] = RESOURCE.Bucket_Helmet_Starter_A,
		}
	},
	Uniques = {
		Stats = {},
		Tags = {},
		RootTemplates = {
			["0f653d13-3152-46d6-86a1-4b64b37e0668"] = "ROR_Bucket" -- FUR_Bucket_A
		}
	},
	Weapons = {}
}
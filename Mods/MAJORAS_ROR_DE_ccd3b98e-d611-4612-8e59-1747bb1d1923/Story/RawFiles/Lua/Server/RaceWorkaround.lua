--[[
Base Races:
Dwarf
Elf
Human
Lizard
Undead_Dwarf
Undead_Elf
Undead_Human
Undead_Lizard
]]

local undeadRace = {
	Undead_Dwarf = true,
	Undead_Elf = true,
	Undead_Human = true,
	Undead_Lizard = true,
}

local OriginRaces = {
	[Origins.AncientElf] = "Elf",
	[Origins.DemonicKin] = "Undead_Lizard",
	[Origins.FailedGheist] = "Human",
	[Origins.LivingBear] = "Undead_Dwarf",
	[Origins.Zombie] = "Undead_Human",
}

local function GetRace(uuid, canPolymorphOverride)
	uuid = StringHelpers.GetUUID(uuid)
	local trueRace = OriginRaces[uuid]
	if trueRace ~= nil then
		if not canPolymorphOverride then
			return trueRace
		else
			local character = Ext.GetCharacter(uuid)
			if character and not character:GetStatusByType("POLYMORPHED") then
				return trueRace
			end
		end
	end
end

function GetRace_QRY(uuid, race)
	local trueRace = GetRace(uuid, false)
	if trueRace then
		return race == trueRace
	end
	return false
end

function IsUndeadRace_QRY(uuid)
	local trueRace = GetRace(uuid, false)
	if trueRace and undeadRace[trueRace] == true then
		return true
	end
	return false
end

local ReallyOriginTag = {
	[Origins.AncientElf] = "ROR_REALLY_ANCIENT_ELF",
	[Origins.DemonicKin] = "ROR_REALLY_DEMON",
	[Origins.FailedGheist] = "ROR_REALLY_GHEIST",
	[Origins.LivingBear] = "ROR_REALLY_BEAR",
	[Origins.Zombie] = "ROR_REALLY_ZOMBIE",
}

function SetOriginTag(uuid)
	uuid = StringHelpers.GetUUID(uuid)
	if ReallyOriginTag[uuid] then
		SetTag(uuid, ReallyOriginTag[uuid])
	end
end

local function InitOriginsWorkarounds()

	local UndeadGodSettings = {Template="QUEST_HoE_Amadia_7a80020b-40b2-42bb-8b30-63fb981340d5", Dialog="FTJ_SW_HoE_UndeadGod"}
	local LohseGodSettings = {Template="QUEST_HoE_Lohse_e4305b97-4ec2-43c2-b2a9-994b1df35636", Dialog="FTJ_SW_HoE_Lohse"}
	
	local FortJoyRaceToGodTransform = {
		Dwarf = {Template="QUEST_HoE_Duna_71faeb33-7a9a-4cc9-a162-e78d7c122143", Dialog="FTJ_SW_HoE_Duna"},
		Elf = {Template="QUEST_HoE_TirCendelius_a517d970-44ce-496d-89f0-bd0157a6fdce", Dialog="FTJ_SW_HoE_TirCendelius"},
		Human = {Template="QUEST_HoE_Rhalic_b456c9bb-2eb1-4130-8ea7-4a6185c75b7f", Dialog="FTJ_SW_HoE_Rhalic"},
		Lizard = {Template="QUEST_HoE_ZorlStissa_222c6936-b1d2-479e-af9a-ef26316f3b95", Dialog="FTJ_SW_HoE_ZorlStissa"},
		Undead_Dwarf = UndeadGodSettings,
		Undead_Elf = UndeadGodSettings,
		Undead_Human = UndeadGodSettings,
		Undead_Lizard = UndeadGodSettings,
	}
	
	--Fort Joy God
	Ext.RegisterOsirisListener("DB_FTJ_HoE_ReturnPoints", 4, "before", function(player, hoeTrigger, returnTrigger, god)
		--Lohse has her own special god settings here
		if IsTagged(player, "LOHSE") == 0 then
			local trueRace = GetRace(player, false)
			if trueRace then
				local settings = FortJoyRaceToGodTransform[trueRace]
				if settings then
					Transform(god,settings.Template,1,0,0)
					Osi.DB_Dialogs(god,settings.Dialog)
				end
			end
		end
	end)
	
	Ext.RegisterOsirisListener("QRY_CoS_AotO_GodwokenGetRealRace", 1, "before", function(uuid)
		local race = GetRace(uuid, false)
		if race then
			--For DB_CoS_AotO_CreateGodwokenNemesis_NemesisTemplate(_Tag, _Template, _Flag, _Dialog)
			Osi.DB_CoS_AotO_GodwokenRealRace(uuid, string.upper(race))
		end
	end)

	---@type table
	local riverDB = Osi.DB_FTJ_SW_RiverSurfaceDialog:Get(nil,nil)

	local OriginRiverDialog = {
		ROR_REALLY_ANCIENT_ELF = "FTJ_SW_AD_RiverSurfaceTirCendelius",
		ROR_REALLY_DEMON = "FTJ_SW_AD_RiverSurfaceUndead",
		ROR_REALLY_GHEIST = "FTJ_SW_AD_RiverSurfaceRhalic",
		ROR_REALLY_BEAR = "FTJ_SW_AD_RiverSurfaceDuna",
		ROR_REALLY_ZOMBIE = "FTJ_SW_AD_RiverSurfaceUndead",
	}

	for tag,dialog in pairs(OriginRiverDialog) do
		table.insert(riverDB, 1, {
			tag,
			dialog
		})
	end

	Osi.DB_FTJ_SW_RiverSurfaceDialog:Delete(nil,nil)

	for i,v in pairs(riverDB) do
		Osi.DB_FTJ_SW_RiverSurfaceDialog(v[1], v[2])
	end
end

local registeredOriginsRaceListeners = false

RegisterListener("Initialized", function()
	if not registeredOriginsRaceListeners and Ext.IsModLoaded(MODID.Origins) then
		registeredOriginsRaceListeners = true
		InitOriginsWorkarounds()
	end
	for player in GameHelpers.Character.GetPlayers(false) do
		SetOriginTag(player.MyGuid)
	end
end)

--[[ Ext.RegisterOsirisListener("CharacterGetRace", 3, "before", function(uuid, canPolymorphOverride, raceResult)
	local race = GetRace(uuid, canPolymorphOverride == 1)
	print("CharacterGetRace(before)", uuid, canPolymorphOverride, raceResult, race)
	if race then
		Ext.GetCharacter(uuid).PlayerCustomData.Race = race
		return race
	end
end)

--Making sure QRY_IsTrueRace doesn't return true for whatever race our origins might be inherently
Ext.RegisterOsirisListener("QRY_IsTrueRace", 2, "before", function(uuid, race)
	local trueRace = GetRace(uuid, false)
	print("QRY_IsTrueRace", uuid, trueRace)
	if trueRace then
		return trueRace == race
	end
end)

--Overriding the QRY_IsTrueUndead result so it works regardless of the CharacterGetRace result.
Ext.RegisterOsirisListener("QRY_IsTrueUndead", 1, "before", function(uuid)
	local trueRace = GetRace(uuid, false)
	print("QRY_IsTrueUndead", uuid, trueRace)
	if trueRace and undeadRace[trueRace] == true then
		return true
	end
end) ]]
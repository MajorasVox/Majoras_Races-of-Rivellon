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

--Making sure QRY_IsTrueRace doesn't return true for whatever race our origins might be inherently
--[[ Ext.RegisterOsirisListener("QRY_IsTrueRace", 2, "before", function(uuid, race)
	uuid = StringHelpers.GetUUID(uuid)
	local trueRace = OriginRaces[uuid]
	if trueRace ~= nil then
		return trueRace == race
	end
end)

--Overriding the QRY_IsTrueUndead result so it works regardless of the CharacterGetRace result.
Ext.RegisterOsirisListener("QRY_IsTrueUndead", 1, "before", function(uuid)
	uuid = StringHelpers.GetUUID(uuid)
	local trueRace = OriginRaces[uuid]
	if trueRace ~= nil and undeadRace[trueRace] == true then
		return true
	end
end) ]]

Ext.RegisterOsirisListener("CharacterGetRace", 3, "before", function(uuid, canPolymorphOverride, raceResult)
	if canPolymorphOverride ~= 1 then
		--Strip away the Name_ part
		uuid = StringHelpers.GetUUID(uuid)
		local trueRace = OriginRaces[uuid]
		if trueRace ~= nil then
			return trueRace
		end
	end
end)
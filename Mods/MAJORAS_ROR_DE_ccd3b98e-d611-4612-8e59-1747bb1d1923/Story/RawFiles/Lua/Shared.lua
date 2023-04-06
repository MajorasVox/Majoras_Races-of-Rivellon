Debug = {
    Enabled = Ext.Debug.IsDeveloperMode(),
    TraceEquipParams = "[OnEquipmentChanged] char(%s) item(%s) equipped(%s)"
}

MODID = {
    Origins = "1301db3d-1f54-4e98-9be5-5094030916e4"
}

VisualSetID = {
	AncientElf = "23229ccd-519a-4fa1-8124-9bcd899cdc91",
	FailedGheist = "880ff786-9b3a-4bbd-abed-2f6316f70343",
	DemonKin = "c384a458-13c5-40c6-8da7-1502189ca40e",
	LivingBear = "f84b9cfd-3415-41cb-b027-da0360a86940",
	Zombie = "8926cd28-a40a-4d26-af7b-b336b40ee4d0"
}

OriginID = {
	AncientElf = "ROR_Ancestor_Husk",
	FailedGheist = "ROR_Failed_Gheist",
	DemonKin = "ROR_Demonic_Kin",
	LivingBear = "ROR_Living_Bear",
	Zombie = "ROR_Zombie"
}

--[[
Console commands:

Mods.LeaderLib.Data.Presets.Preview.Wizard:ApplyToCharacter(CharacterGetHostCharacter(), "Rare", {"Weapon", "Boots", "Gloves", "Leggings"})
Mods.LeaderLib.Data.Presets.Preview.Rogue:ApplyToCharacter(CharacterGetHostCharacter(), "Uncommon", {"Weapon", "Boots", "Gloves", "Leggings"})
Mods.LeaderLib.Data.Presets.Preview.Knight:ApplyToCharacter(CharacterGetHostCharacter(), "Legendary", {"Weapon", "Boots", "Gloves", "Leggings"})

]]

Origins = {
    AncientElf = "ddf64b07-0637-4194-b26e-2e0e80d6821d",
    FailedGheist = "543a2e21-cbff-4262-a41d-2be62cbe2b7e",
    DemonicKin = "9666cb05-8764-4d97-9bb5-9e3a6556d562",
    LivingBear = "50924c85-ffd3-469b-ab68-49f056580f00",
    Zombie = "1677ad2e-6c42-4ffd-b3fd-4cecdef0a62c"
}

Mods.LeaderLib.Import(Mods.MAJORAS_ROR_DE)

local _CustomOriginPresets = {
	ROR_Ancestor_Husk = "AncientElf",
	ROR_Failed_Gheist = "FailedGheist",
	ROR_Demonic_Kin = "DemonKin",
	ROR_Living_Bear = "LivingBear",
	ROR_Zombie = "Zombie"
}

Ext.Events.SessionLoaded:Subscribe(function (e)
    GameHelpers.VoiceMetaData.Register.ScholarMale(Origins.AncientElf)
    GameHelpers.VoiceMetaData.Register.TricksterMale(Origins.FailedGheist)
    GameHelpers.VoiceMetaData.Register.WarriorMale(Origins.DemonicKin)
    GameHelpers.VoiceMetaData.Register.AdventurerMale(Origins.LivingBear)
    GameHelpers.VoiceMetaData.Register.TricksterMale(Origins.Zombie)

    local cc = Ext.Stats.GetCharacterCreation()
    --[[ if cc then
        for _,v in pairs(cc.OriginPresets) do
            if _CustomOriginPresets[v.OriginName] then
                v.UserCanAlterTags = true
            end
        end
    end ]]
end)

Ext.Require("Shared/CustomSkillProperties.lua")
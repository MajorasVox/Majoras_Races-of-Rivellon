Ext.Print("[ROR] Loaded Shared.lua.")

LeaderLib = Mods.LeaderLib
Common = LeaderLib.Common
GameHelpers = LeaderLib.GameHelpers

Debug = {
    Enabled = Ext.IsDeveloperMode(),
    TraceEquipParams = "[OnEquipmentChanged] char(%s) item(%s) equipped(%s)"
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

Ext.RegisterListener("ModuleLoading", function()
    GameHelpers.VoiceMetaData.Register.ScholarMale(Origins.AncientElf)
    GameHelpers.VoiceMetaData.Register.TricksterMale(Origins.FailedGheist)
    GameHelpers.VoiceMetaData.Register.WarriorMale(Origins.DemonicKin)
    GameHelpers.VoiceMetaData.Register.AdventurerMale(Origins.LivingBear)
    GameHelpers.VoiceMetaData.Register.TricksterMale(Origins.Zombie)
end)
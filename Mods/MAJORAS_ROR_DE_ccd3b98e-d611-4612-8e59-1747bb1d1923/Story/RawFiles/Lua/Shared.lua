Ext.Print("[ROR] Loaded Shared.lua.")

local Origins = {
    AncientElf = "ddf64b07-0637-4194-b26e-2e0e80d6821d"
}

Ext.RegisterListener("ModuleLoading", function()
    if Mods.LeaderLib ~= nil then
        Mods.LeaderLib.GameHelpers.VoiceMetaData.Register.ScholarMale(Origins.AncientElf)
    end
end)

local Origins = {
    FailedGheist = "543a2e21-cbff-4262-a41d-2be62cbe2b7e"
}

Ext.RegisterListener("ModuleLoading", function()
    if Mods.LeaderLib ~= nil then
        Mods.LeaderLib.GameHelpers.VoiceMetaData.Register.TricksterMale(Origins.FailedGheist)
    end
end)

local Origins = {
    DemonicKin = "9666cb05-8764-4d97-9bb5-9e3a6556d562"
}

Ext.RegisterListener("ModuleLoading", function()
    if Mods.LeaderLib ~= nil then
        Mods.LeaderLib.GameHelpers.VoiceMetaData.Register.WarriorMale(Origins.DemonicKin)
    end
end)

local Origins = {
    LivingBear = "50924c85-ffd3-469b-ab68-49f056580f00"
}

Ext.RegisterListener("ModuleLoading", function()
    if Mods.LeaderLib ~= nil then
        Mods.LeaderLib.GameHelpers.VoiceMetaData.Register.AdventurerMale(Origins.LivingBear)
    end
end)

local Origins = {
    Zombie = "1677ad2e-6c42-4ffd-b3fd-4cecdef0a62c"
}

Ext.RegisterListener("ModuleLoading", function()
    if Mods.LeaderLib ~= nil then
        Mods.LeaderLib.GameHelpers.VoiceMetaData.Register.TricksterMale(Origins.Zombie)
    end
end)
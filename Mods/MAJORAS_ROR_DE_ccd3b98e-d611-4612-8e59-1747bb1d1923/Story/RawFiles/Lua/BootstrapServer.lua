Ext.Require("Shared.lua")
Ext.Require("Server/Armor/_InitArmor.lua")

RegisterListener("Initialized", function()
    if CharacterHasSkill(Origins.DemonicKin, "Cone_Flamebreath") == 1 then
      GameHelpers.Skill.Swap(Origins.DemonicKin, "Cone_Flamebreath", "Target_ConsumeEnemy", true, false)
    end
  end)

RegisterListener("Initialized", function()
  if CharacterHasSkill(Origins.DemonicKin, "Dome_CircleOfProtection") == 1 then
    GameHelpers.Skill.Swap(Origins.DemonicKin, "Dome_CircleOfProtection", "Shout_Demon_Wings", true, false)
  end
end)
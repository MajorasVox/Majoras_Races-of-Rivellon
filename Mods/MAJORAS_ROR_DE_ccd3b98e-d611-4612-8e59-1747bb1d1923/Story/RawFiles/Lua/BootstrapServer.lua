Ext.Require("Shared.lua")
Ext.Require("Server/Armor/_InitArmor.lua")

RegisterListener("Initialized", function()
  if CharacterHasSkill(Origins.DemonicKin, "Cone_Flamebreath") == 1 then
      GameHelpers.Skill.Swap(Origins.DemonicKin, "Cone_Flamebreath", "Target_ROR_DK_AllConsumingHunger", true, false)
  end
  
  if CharacterHasSkill(Origins.DemonicKin, "Dome_CircleOfProtection") == 1 then
      GameHelpers.Skill.Swap(Origins.DemonicKin, "Dome_CircleOfProtection", "Shout_ROR_PlaceHolder", true, false)
  end
end)
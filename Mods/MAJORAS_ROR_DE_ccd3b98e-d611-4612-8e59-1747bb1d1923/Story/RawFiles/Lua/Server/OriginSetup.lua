local skillSwap = {
	[Origins.DemonicKin] = {
		Cone_Flamebreath = "Target_ROR_DK_AllConsumingHunger"
	}
}

local function SwapOriginSkills()
	for uuid,skills in pairs(skillSwap) do
		for checkSkill,addSkill in pairs(skills) do
			if CharacterHasSkill(uuid, checkSkill) == 1 then
				if CharacterIsPlayer(uuid) == 1 then
					GameHelpers.Skill.Swap(uuid, checkSkill, addSkill, true, false)
				else
					CharacterRemoveSkill(uuid, checkSkill)
					CharacterAddSkill(uuid, addSkill, 0)
				end
			end
		end
	end
end

--RegisterListener("Initialized", SwapOriginSkills)

Ext.Osiris.RegisterListener("RegionEnded", 1, "before", function(region)
	if IsCharacterCreationLevel(region) == 1 then
		SwapOriginSkills()
	end
end)

local function InitOrigins()
	Osi.LeaderLib_Origins_Register_All(Origins.AncientElf, "Neutral", "Hero Henchman Metamorph", "LeaderLib_Debug_RecruitCharacter", "GLO_Henchman", "MYSTIC", "SOLDIER", "SHAPESHIFT_ROR_ANCESTOR_HUSK")

	Osi.LeaderLib_Origins_Register_All(Origins.DemonicKin, "Neutral", "Hero Henchman Rogue", "LeaderLib_Debug_RecruitCharacter", "GLO_Henchman", "OUTLAW", "BARBARIAN", "SHAPESHIFT_ROR_DEMONIC_KIN")
	
	Osi.LeaderLib_Origins_Register_All(Origins.FailedGheist, "Neutral", "Hero Henchman Inquisitor", "LeaderLib_Debug_RecruitCharacter", "GLO_Henchman", "OUTLAW", "JESTER", "SHAPESHIFT_ROR_FAILED_GHEIST")
	
	Osi.LeaderLib_Origins_Register_All(Origins.LivingBear, "Neutral", "Hero Henchman Wayfarer", "LeaderLib_Debug_RecruitCharacter", "GLO_Henchman", "MYSTIC", "JESTER", "SHAPESHIFT_ROR_LIVING_BEAR")
	
	Osi.LeaderLib_Origins_Register_All(Origins.Zombie, "Neutral", "Hero Henchman Fighter", "LeaderLib_Debug_RecruitCharacter", "GLO_Henchman", "OUTLAW", "JESTER", "SHAPESHIFT_ROR_ZOMBIE")
end

Ext.Osiris.RegisterListener("GameModeStarted", 2, "before", function(gameMode, isEditor)
	if gameMode == "Campaign" or isEditor == 1 then
		InitOrigins()
	end
end)
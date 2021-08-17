---@param data HitData
RegisterSkillListener("Target_ROR_DK_AllConsumingHunger", function(skill, attacker, state, data)
	if state == SKILL_STATE.HIT then
		if GameHelpers.Status.IsDisabled(data.TargetObject, false) or HasActiveStatus(data.Target, "WEAK") == 1 then
			--1.5x damage for weak or disabled targets (Stunned, Knocked Down, etc)
			local damageMult = GameHelpers.GetExtraData("ROR_ConsumingHunger_BonusDamageMultiplier", 1.5)
			data:MultiplyDamage(damageMult, true)
		end
	end
end)
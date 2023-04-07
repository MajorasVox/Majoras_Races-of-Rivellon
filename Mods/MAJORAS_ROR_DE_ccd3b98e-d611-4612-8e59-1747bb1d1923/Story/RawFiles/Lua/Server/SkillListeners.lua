SkillManager.Register.Hit("Target_ROR_DK_AllConsumingHunger", function (e)
	if GameHelpers.Status.IsDisabled(e.Data.TargetObject, false) or GameHelpers.Status.IsActive(e.Data.TargetObject, "WEAK") then
		--1.5x damage for weak or disabled targets (Stunned, Knocked Down, etc)
		local damageMult = GameHelpers.GetExtraData("ROR_ConsumingHunger_BonusDamageMultiplier", 1.5)
		if damageMult > 0 then
			e.Data:MultiplyDamage(damageMult, true)
		end
	end
end)
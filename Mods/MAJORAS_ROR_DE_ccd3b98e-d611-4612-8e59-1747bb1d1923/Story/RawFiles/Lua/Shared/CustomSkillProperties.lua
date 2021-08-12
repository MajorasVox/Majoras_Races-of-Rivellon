local ts = Classes.TranslatedString

local text = {
	ConsumingHungerSkillProperties = ts:CreateFromKey("ROR_SkillProperties_ConsumingHunger", "Devour Weak Targets[1]"),
	ConsumingHungerBossFailed = ts:CreateFromKey("ROR_ConsumingHunger_StatusText_BossProtection", "<font color='#FF4400'>[1] resists being consumed!</font>"),
	ConsumingHungerSuccess = ts:CreateFromKey("ROR_ConsumingHunger_StatusText_Success", "<font color='#44FF00'>Consumed [1]!</font>"),
	ConsumingHungerCombatLogSuccess = ts:CreateFromKey("ROR_ConsumingHunger_CombatLog_Success", "<font color='#44FF00'>[1] devoured [2].</font>"),
	ConsumingHungerCombatLogFailed = ts:CreateFromKey("ROR_ConsumingHunger_CombatLog_Failed", "<font color='#FF4400'>[1] failed to devour [2]: [3]</font>"),
}


---@type table<string,CustomSkillProperty>
local CustomSkillProperties = {}

---@param attacker EsvCharacter
---@param target EsvCharacter
local function ConsumingHungerSuccess(attacker, target)
	CharacterStatusText(attacker.MyGuid, text.ConsumingHungerSuccess:ReplacePlaceholders(target.DisplayName))
	if not GameHelpers.Character.IsUndead(target) then
		GameHelpers.Surface.CreateSurface(target.WorldPos, "Blood", 2.0, 18.0, attacker.Handle, true, 1.0)
	end
	GameHelpers.Status.Apply(attacker, "ROR_DK_EDACIOUS_REPRIEVE", 18.0, false, attacker)
	GameHelpers.Status.Apply(attacker, "ROR_DK_PERPETUAL_APPETENCE", 6.0, false, attacker)

	--This proc teleports the target to the position using behavior scripting, so it doesn't teleport linked summons like TeleportToPosition does (hardcoded engine behavior)
	local x,y,z = table.unpack(target.WorldPos)
	Osi.LeaderLib_Behavior_TeleportTo(attacker.MyGuid, x, y, z)

	CombatLog.AddTextToAllPlayers("Combat", text.ConsumingHungerCombatLogSuccess:ReplacePlaceholders(attacker.DisplayName, target.DisplayName))
end

Timer.RegisterListener("ROR_ConsumingHunger", function(timerName, data)
	local target = Ext.GetCharacter(data.Target)
	local attacker = Ext.GetCharacter(data.Attacker)
	---@type number
	local x,y,z = table.unpack(data.Position)

	local minPercentage = data.Percentage or 20
	if not attacker.Dead then
		if target.Dead then
			ConsumingHungerSuccess(attacker, target)
		elseif CharacterGetHitpointsPercentage(target.MyGuid) <= minPercentage then
			if not target.RootTemplate.CombatTemplate.IsBoss then
				CharacterDie(target.MyGuid, 1, "Explode", attacker.MyGuid)
				ConsumingHungerSuccess(attacker, target)
			else
				CharacterStatusText(target.MyGuid, text.ConsumingHungerBossFailed:ReplacePlaceholders(target.DisplayName))
				CombatLog.AddTextToAllPlayers("Combat", text.ConsumingHungerCombatLogFailed:ReplacePlaceholders(attacker.DisplayName, target.DisplayName, "Resisted devouring (Boss)."))
			end
		end
	end
end)

---@type CustomSkillProperty
CustomSkillProperties.ROR_ConsumingHunger = {
	GetDescription = function(prop)
		local maxVitalityPercentage = prop.Arg4 or 0
		if maxVitalityPercentage > 0 then
			local vitalityText = Ext.GetTranslatedString("h67a4c781g589ag4872g8c46g870e336074bd", "Vitality")
			return text.ConsumingHungerSkillProperties:ReplacePlaceholders(string.format(" (Below %s%% %s)", maxVitalityPercentage, vitalityText))
		else
			return text.ConsumingHungerSkillProperties:ReplacePlaceholders("")
		end
	end,
	ExecuteOnPosition = function(prop, attacker, position, areaRadius, isFromItem, skill, hit)
		-- Not used, since a target is required
	end,
	ExecuteOnTarget = function(prop, attacker, target, position, isFromItem, skill, hit)
		if attacker.MyGuid ~= target.MyGuid then
			local chance = prop.Arg1
			if chance >= 1.0 or Ext.Random(0,1) <= chance then
				Timer.StartObjectTimer("ROR_ConsumingHunger", target, 500, {
					Attacker = attacker.MyGuid,
					Target = target.MyGuid,
					Position = position,
					Percentage = prop.Arg4 or 0
				})
			end
		end
	end
}

for k,v in pairs(CustomSkillProperties) do
	Ext.RegisterSkillProperty(k, v)
end
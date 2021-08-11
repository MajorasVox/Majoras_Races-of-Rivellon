local lastCycleIndex = {}
local allVisuals = {
	[Origins.DemonicKin] = {
		[VISUALSLOT.Torso] = {
			"Demon_Kin_Male_Body_Naked_A_Body_A",
			"Demon_Kin_ROBE_Lizard_Armor_A",
			"Demon_Kin_ROBE_Demon_Armor_A",
			"Demon_Kin_ROBE_Dreamer_Armor_A",
			"Demon_Kin_ROBE_Dreamer_Armor_B",
			"Demon_Kin_ROBE_AlanBird_Armor_A",
			"Demon_Kin_ROBE_Incarnate_Armor_A",
			"Demon_Kin_ROBE_Ghoul_Armor_A",
			"Demon_Kin_ROBE_BurningWitch_Armor_A",
		},
		[VISUALSLOT.Arms] = {
			"Demon_Kin_ROBE_Lizard_Helmet_A",
			"Demon_Kin_ROBE_Dreamer_Helmet_A",
			"Demon_Kin_ROBE_Dreamer_Helmet_B",
			"Demon_Kin_ROBE_AlanBird_Helmet_A",
			"Demon_Kin_ROBE_Incarnate_Helmet_A",
			"ROR_Empty",
		},
		[VISUALSLOT.Extra1] = {
			"Demon_Kin_ACCESSORY_Ghost_Steaks_A",
			"Demon_Kin_ACCESSORY_Ghost_Steaks_B",
			"Demon_Kin_ACCESSORY_Ghoul_Sword_A",
			"ROR_Empty",
		}
	}
}

Ext.RegisterConsoleCommand("ror", function(cmd, subcmd, param1)
	if subcmd == "help" then
		print("[ror] Commands:")
		print("cycle")
		print("help")
		print("[ror] Command usage:")
		print("ror cycle slot")
		print("(Defaults to Torso Slot")
		print("Example usage:")
		print("ror cycle head")
		print("Valid Slot Names (case-insensitive):")
		print("Helmet\nHead\nTorso\nArms\nTrousers\nBoots\nBeard\nExtra1\nExtra2")
	elseif subcmd == "cycle" then
		local slot = param1
		if type(slot) == "string" then
			if StringHelpers.IsNullOrWhitespace(slot) then
				slot = VISUALSLOT.Torso
			else
				local slotNum = tonumber(slot)
				if slotNum ~= nil then
					slot = slotNum
				else
					local slotCheck = string.lower(slot)
					for k,v in pairs(VisualManager.VisualSlot) do
						if string.lower(k) == slotCheck then
							slot = k
							break
						end
					end
				end
			end
		else
			slot = VISUALSLOT.Torso
		end
		if slot == nil then
			slot = VISUALSLOT.Torso
		end
		local uuid = Vars.ConsoleWindowVariables.host.MyGuid
		local index = 0
		if not lastCycleIndex[uuid] then
			lastCycleIndex[uuid] = {}
		end
		if not lastCycleIndex[uuid][slot] then
			lastCycleIndex[uuid][slot] = 0
		end
		index = lastCycleIndex[uuid][slot]
		if allVisuals[uuid] then
			local visuals = allVisuals[uuid][slot]
			if visuals then
				index = index + 1
				lastCycleIndex[uuid][slot] = index
				if index > #visuals then
					index = 1
				end
				local visual = visuals[index]
				fprint(LOGLEVEL.DEFAULT, "[ROR:Debug:cycle] Setting visual in slot (%s) to (%s)", slot, visual)
				CharacterSetVisualElement(uuid, slot, visual)
			end
		end
	end
end)
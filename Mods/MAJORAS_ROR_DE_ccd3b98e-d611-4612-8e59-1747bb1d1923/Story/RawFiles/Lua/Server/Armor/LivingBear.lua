-- TODO
local EMPTY_VISUAL = ""
local UniqueItems = nil

---@param ve VisualElementData
---@param vr VisualResourceData
---@param onEquipmentChangedCallback OnEquipmentChangedCallback
return function(ve, vr, onEquipmentChangedCallback)	
	local TieredArmor = nil
	local visualData = ve:Create({OnEquipmentChanged=function(self, char, item, equipped)
		onEquipmentChangedCallback(self, char, item, equipped, TieredArmor, UniqueItems)
	end})
	
	-- visualData:AddVisualsForType(VM.ArmorType.None, {
	-- 	[VM.Slot.Helmet] = vr:Create(EMPTY_VISUAL, VM.VisualSlot.Arms),
	-- 	[VM.Slot.Breast] = {
	-- 		vr:Create("", VM.VisualSlot.Torso),
	-- 		vr:Create(EMPTY_VISUAL, VM.VisualSlot.Extra1),
	-- 	}
	-- })
	
	-- visualData:AddVisualsForType(VM.ArmorType.Plate, {
	-- 	[VM.Slot.Helmet] = vr:Create("", VM.VisualSlot.Arms),
	-- 	[VM.Slot.Breast] = vr:Create("", VM.VisualSlot.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VM.ArmorType.Robe, {
	-- 	[VM.Slot.Helmet] = vr:Create("", VM.VisualSlot.Arms),
	-- 	[VM.Slot.Breast] = vr:Create("", VM.VisualSlot.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VM.ArmorType.Leather, {
	-- 	[VM.Slot.Helmet] = vr:Create("", VM.VisualSlot.Arms),
	-- 	[VM.Slot.Breast] = vr:Create("", VM.VisualSlot.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VM.ArmorType.Cloth, {
	-- 	[VM.Slot.Helmet] = vr:Create("", VM.VisualSlot.Arms),
	-- 	[VM.Slot.Breast] = vr:Create("", VM.VisualSlot.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VM.ArmorType.Mail, {
	-- 	[VM.Slot.Helmet] = vr:Create("", VM.VisualSlot.Arms),
	-- 	[VM.Slot.Breast] = vr:Create("", VM.VisualSlot.Torso),
	-- })
	
	VM.Register.Visuals(VISUALID.LivingBear, visualData)
end
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
	
	-- visualData:AddVisualsForType(VisualManager.ArmorType.None, {
	-- 	[ITEMSLOT.Helmet] = vr:Create(EMPTY_VISUAL, VISUALSLOT.Arms),
	-- 	[ITEMSLOT.Breast] = {
	-- 		vr:Create("", VISUALSLOT.Torso),
	-- 		vr:Create(EMPTY_VISUAL, VISUALSLOT.Extra1),
	-- 	}
	-- })
	
	-- visualData:AddVisualsForType(VisualManager.ArmorType.Plate, {
	-- 	[ITEMSLOT.Helmet] = vr:Create("", VISUALSLOT.Arms),
	-- 	[ITEMSLOT.Breast] = vr:Create("", VISUALSLOT.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VisualManager.ArmorType.Robe, {
	-- 	[ITEMSLOT.Helmet] = vr:Create("", VISUALSLOT.Arms),
	-- 	[ITEMSLOT.Breast] = vr:Create("", VISUALSLOT.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VisualManager.ArmorType.Leather, {
	-- 	[ITEMSLOT.Helmet] = vr:Create("", VISUALSLOT.Arms),
	-- 	[ITEMSLOT.Breast] = vr:Create("", VISUALSLOT.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VisualManager.ArmorType.Cloth, {
	-- 	[ITEMSLOT.Helmet] = vr:Create("", VISUALSLOT.Arms),
	-- 	[ITEMSLOT.Breast] = vr:Create("", VISUALSLOT.Torso),
	-- })
	
	-- visualData:AddVisualsForType(VisualManager.ArmorType.Mail, {
	-- 	[ITEMSLOT.Helmet] = vr:Create("", VISUALSLOT.Arms),
	-- 	[ITEMSLOT.Breast] = vr:Create("", VISUALSLOT.Torso),
	-- })
	
	VisualManager.Register.Visuals(VISUALID.LivingBear, visualData)
end
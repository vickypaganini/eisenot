function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(Storage.inquisition) < 2 then -- INQUISITION QUEST PERMISSION
		player:addOutfitAddon(325, 3)
		player:addOutfitAddon(324, 3)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your full addon yalahar has been added!")
		player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)	
		player:setStorageValue(Storage.inquisition, 2)
	end

	return true
end

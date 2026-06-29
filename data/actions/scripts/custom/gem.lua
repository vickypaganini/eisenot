function onUse(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
    if player:getStorageValue(11223) >= os.time() then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have an active XP Boost")
        return true
    end

    player:setStorageValue(11223, os.time() + 3600)
    Item(item.uid):remove(1)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your double XP hour has started")
    return true
end
local vocations = {
    [5] = 9,
    [6] = 10,
    [7] = 11,
    [8] = 12,
}

function onUse(cid, item, fromPosition, itemEX, toPosition)
local player = Player(cid)
local vocation = player:getVocation()
local vocID = vocation:getId()
local vocationName = vocation:getName()
        if vocations[vocID] then
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'You have succesfully upgraded from a '..vocationName..' to a '..Vocation(vocations[vocID]):getName()..'. ')
            player:setVocation(Vocation(vocations[vocID]))
            Item(item.uid):remove()
        else
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'You cannot upgrade vocation.')
        end
   return true
end
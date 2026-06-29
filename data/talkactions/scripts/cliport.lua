function onSay(cid, words, param)
 
    local player = Player(cid) --Get the player
 
    if player:getAccountType() < ACCOUNT_TYPE_GAMEMASTER then
        player:sendCancelMessage("The command did not work because the player is " .. player:getAccountType())
        return false
    else
        CLIPORT = not CLIPORT      --Set canMove to the opposite bool
        
        if(not CLIPORT) then
            player:sendCancelMessage("Mapclick teleport is now OFF!")
 
        else
            player:sendCancelMessage("Mapclick teleport is now ON!")
 
        end
    end
end
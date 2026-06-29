function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	saveServer()
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Server is saved ...")

	return false
end

function onThink(interval, lastExecution)
	local MESSAGE = {
		"[DONATE] Para doacoes, entre em contato com ADM via whatsapp: 48996070013.",
		"[GRUPO] Para participar do grupo de whatsapp do servidor, use o link: https://chat.whatsapp.com/DlM92hJnfjLI7ljAnAZrVG",
		"[Fixing] Todo erro encontrado, favor relatar ao ADM para que seja corrigido o mais breve possivel",
		"[INFO] Servidor de longo prazo, dedicado e serio!.",
	}
	
	Game.broadcastMessage(MESSAGE[math.random(1, #MESSAGE)], MESSAGE_STATUS_WARNING)
	
	return true
end
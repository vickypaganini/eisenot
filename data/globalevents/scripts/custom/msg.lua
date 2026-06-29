function onThink(interval, lastExecution)
	local MESSAGE = {
		"[WARNING] Únicos membros da staff: GM Lily, GM Sona.",
		"[REPORT] Todo erro encontrado, favor relatar ao ADM para que seja corrigido o mais breve possivel.",
		"[INFO] Servidor em desenvolvimento, neste momento não teremos donates.",
	}
	
	Game.broadcastMessage(MESSAGE[math.random(1, #MESSAGE)], MESSAGE_STATUS_WARNING)
	
	return true
end
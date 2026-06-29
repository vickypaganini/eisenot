local id_alavanca = 1945 -- ID DA ALAVANCA 
local action_id = 5900 -- ACTION ID QUE COLOCOU NA ALAVANCA NO REMERES

-- POSIÇÃO QUE OS PLAYERS TEM QUE ESTAR AO CLICAR NA ALAVANCA --
local position_players = {
{x= 803, y= 876, z=7},
{x= 802, y= 876, z=7},
{x= 801, y= 876, z=7},
{x= 800, y= 876, z=7},
}

-- TABELA DOS MONSTROS E SUAS RESPECTIVAS POSIÇÕES DE ACORDO COM A QUANTIDADE DE PLAYERS TELEPORTADOS
local monsters = {
{nome = "Ferumbras", pos = {x= 1500, y= 1050, z=7}}, -- MONSTRO QUE VAI NASCER SE SÓ 1 PLAYER FOR TELEPORTADO
{nome = "Goblins", pos = {x= 1500, y= 1050, z=7}}, -- MONSTRO QUE VAI NASCER SE 2 PLAYERS FOR TELEPORTADO
{nome = "Medusa", pos = {x= 1500, y= 1050, z=7}}, -- MONSTRO QUE VAI NASCER SE 3 PLAYERS FOR TELEPORTADO
{nome = "Mage", pos = {x= 1500, y= 1050, z=7}}, -- MONSTRO QUE VAI NASCER SE 4 PLAYERS FOR TELEPORTADO
{nome = "Skull", pos = {x= 1500, y= 1050, z=7}}  -- MONSTRO QUE VAI NASCER SE 5 PLAYERS FOR TELEPORTADO
}

local position_destino = {x= 1500, y= 1020, z= 7} -- POSIÇÃO ONDE OS PLAYERS SERÃO TELEPORTADOS

storage_global_quest = 87898 --  STORAGE GLOBAL, NÃO PODE SER USADO ESSE VALOR PARA OUTRA STORAGE E NEM PARA PLAYER
local cooldown_alavanca = 3 -- TEMPO EM MINUTOS PARA O COOLDOWN DA ALAVANCA

----------------------------------------- CÓDIGO -----------------------------------------
function onUse(cid, item, fromPos, itemEx, toPos)
local player = nil
local count_players = 0

if (item.itemid == id_alavanca) and (item.actionid == action_id) then
	if getGlobalStorageValue(storage_global_quest) <= os.time() then

		for i = 1, #position_players do
			player = getTileThingByPos(position_players[i])
			
			if isPlayer(player.uid) then
				doTeleportThing(player.uid, position_destino)
				count_players = count_players + 1
			end
			
			if (i == #position_players) and (count_players == 0) then
				return true
			end	
		end
	
		if count_players == 1 then
			doCreateMonster(monsters[1].nome, monsters[1].pos)
		
		elseif count_players == 2 then
			doCreateMonster(monsters[2].nome, monsters[2].pos)
			
		elseif count_players == 3 then
			doCreateMonster(monsters[3].nome, monsters[3].pos)

		elseif count_players == 4 then
			doCreateMonster(monsters[4].nome, monsters[4].pos)

		elseif count_players == 5 then
			doCreateMonster(monsters[5].nome, monsters[5].pos)	
		end	
		
		doPlayerSendTextMessage(player.uid, MESSAGE_STATUS_CONSOLE_BLUE, "Good lucky!")
		setGlobalStorageValue(storage_global_quest, os.time() + (60 * cooldown_alavanca))
	return true		

	
	else
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "The switch is in cooldown. You need to wait.")
	end	
end		

end
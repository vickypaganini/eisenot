function onUse(cid, item, frompos, item2, topos)

	local rateSkill = getConfigInfo('rateSkill') -- NAO MEXER
	local rateMagic = getConfigInfo('rateMagic') -- NAO MEXER

	local storage = 62164441555 -- Armazenar o tempo em que o player utilizou o anabolizante
	local timeInMinutes = 1440 -- tempo em MINUTOS que o anabolizante terá efeito. 7 dias = 10080 | 24 horas = 1440, etc..
	local porcentagem = 40.0 -- Quantos % vai aumentar de rate na skill?
	local magLevel = true -- Vai aumentar também a porcentagem de treinar magic level?
	local itemID = 2346 -- ID do anabolizante


	if item.itemid == itemID then
	-- function de tempo, by FeeTads - TibiaKing
	local function getTimeString(self)
		local format = {
			{'dia', self / 60 / 60 / 24},
			{'hora', self / 60 / 60 % 24},
			{'minuto', self / 60 % 60},
			{'segundo', self % 60}
		}

		local out = {}
		for k, t in ipairs(format) do
			local v = math.floor(t[2])
			if(v > 0) then
				table.insert(out, (k < #format and (#out > 0 and ', ' or '') or ' e ') .. v .. ' ' .. t[1] .. (v ~= 1 and 's' or ''))
			end
		end
		local ret = table.concat(out)
		if ret:len() < 16 and ret:find('segundo') then
			local a, b = ret:find(' e ')
			ret = ret:sub(b+1)
		end
		return ret
	end

	if getPlayerStorageValue(cid, storage) - os.time() <= 0 then
		for skillID = 0, 6 do
			doPlayerSetSkillRate(cid, skillID, getConfigInfo('rateSkill') / 100 * porcentagem + getConfigInfo('rateSkill'))
			addEvent(doPlayerSetSkillRate, cid, skillID, rateSkill, timeInMinutes*60*1000)
		end

		if magLevel == true then 
			doPlayerSetMagicRate(cid, getConfigInfo('rateMagic') / 100 * porcentagem + getConfigInfo('rateMagic'))
			addEvent(doPlayerSetMagicRate, cid, rateMagic, timeInMinutes*60*1000)
		end

		doRemoveItem(item.uid, 1)
		setPlayerStorageValue(cid, storage, os.time() + (timeInMinutes*60))
		doCreatureSay(cid, "Anabolizante usado! PAI TA MONSTRO!", 19) -- Mensagem após usar o anabolizante
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Espere "..getTimeString((getPlayerStorageValue(cid, storage)-os.time())).." para usar novamente o anabolizante")
	end

end 

	return true
end
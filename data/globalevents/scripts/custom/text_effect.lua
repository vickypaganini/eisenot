local effects = {
	{position = Position(971, 955, 7), text = "Daily Reward", effect = 40, say = true, color = math.random(1,255)},
	{position = Position(979, 794, 7), text = "Templo", effect = 40, say = true, color = math.random(1,255)},
	{position = Position(979, 803, 7), text = "Templo", effect = 40, say = true, color = math.random(1,255)},
	{position = Position(983, 799, 7), text = "Area Premium", effect = 40, say = true, color = math.random(1,255)},
	{position = Position(964, 955, 7), text = "DAILY BOSS", effect = 40, say = true, color = math.random(1,255)},
	{position = Position(966, 763, 7), text = "NEW QUESTS", effect = 40, say = true, color = math.random(1,255)},
	{position = Position(968, 955, 7),  effect = 26, say = true, color = math.random(1,255)},
	{position = Position(967, 955, 7),  effect = 26, say = true, color = math.random(1,255)},
	{position = Position(966, 955, 7),  effect = 26, say = true, color = math.random(1,255)},
	{position = Position(965, 955, 7),  effect = 26, say = true, color = math.random(1,255)},
	{position = Position(969, 955, 7),  effect = 5, say = true, color = math.random(1,255)},

}

function onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        if settings then
			local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
			if #spectators > 0 then
				if settings.text then
					for i = 1, #spectators do
						if settings.say then
							spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
						else
							Game.sendAnimatedText(settings.text, settings.position, settings.color)
						end
					end
				end
				if settings.effect then
					settings.position:sendMagicEffect(settings.effect)
				end
			end
		end
    end
  return true
end

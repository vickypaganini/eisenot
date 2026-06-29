local config = {
	[2029] = {room = Position(858, 1003, 11), exit = Position(801, 904, 7)},
	[2030] = {room = Position(917, 1076, 11), exit = Position(800, 1092, 11)},
	[2031] = {room = Position(451, 1582, 7), exit = Position(507, 1710, 7)},
	[2032] = {room = Position(504, 1586, 7), exit = Position(578, 1725, 7)},
	[2033] = {room = Position(565, 1585, 7), exit = Position(608, 1589, 7)},
	[2034] = {room = Position(668, 1739, 7), exit = Position(701, 1743, 7)},
	[2035] = {room = Position(654, 1865, 7), exit = Position(594, 1828, 7)},
	[2036] = {room = Position(657, 1898, 7), exit = Position(473, 1849, 7)},

}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local inquisition = config[item.uid]
	if not inquisition then
		return true
	end

	local spectators, hasMonsters = Game.getSpectators(inquisition.room, false, false, 9, 9, 7, 7), false
	for i = 1, #spectators do
		if spectators[i]:isMonster() then
			if spectators[i]:getName():lower() ~= "magicthrower" then
				hasMonsters = true
				break
			end
		end
	end

	if hasMonsters then
		player:sendCancelMessage("You need to kill all monsters first.")
		player:teleportTo(fromPosition)
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	player:teleportTo(inquisition.exit)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)

	return true
end

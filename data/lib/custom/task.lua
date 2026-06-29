RANK_NONE = 0
RANK_JOIN = 1
RANK_HUNTSMAN = 2
RANK_RANGER = 3
RANK_BIGGAMEHUNTER = 4
RANK_TROPHYHUNTER = 5
RANK_ELITEHUNTER = 6

tasksByPlayer = 3

tasks = {
	[1] = {killsRequired = 50, raceName = "rotworm", level = {8, 9999}, creatures = {"rotworm"}, rewards = {{type = "exp", value = {200000}},{type="item",value={2160, 2}},{type = "points", value = {5}}}},
	[2] = {killsRequired = 150, raceName = "cyclops", level = {8, 9999}, creatures = {"cyclops"}, rewards = {{type = "exp", value = {400000}},{type="item",value={2160, 5}},{type = "points", value = {5}}}},
	[3] = {killsRequired = 500, raceName = "dragon", level = {8, 9999}, creatures = {"dragon"}, rewards = {{type = "exp", value = {1000000}},{type="item",value={2160, 25}},{type = "points", value = {5}}}},
	[4] = {killsRequired = 700, raceName = "hero", level = {8, 9999}, creatures = {"hero"}, rewards = {{type = "exp", value = {1000000}},{type="item",value={2160, 30}},{type = "points", value = {5}}}},
	[5] = {killsRequired = 500, raceName = "black knight", level = {8, 9999}, creatures = {"black knight"}, rewards = {{type = "exp", value = {1000000}},{type="item",value={2160, 30}},{type = "points", value = {5}}}},
	[6] = {killsRequired = 1000, raceName = "wyrm", level = {8, 9999}, creatures = {"wyrm"}, rewards = {{type = "exp", value = {2000000}},{type="item",value={2160, 40}},{type = "points", value = {5}}}},
	[7] = {killsRequired = 1000, raceName = "nightmare", level = {8, 9999}, creatures = {"nightmare"}, rewards = {{type = "exp", value = {2000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[8] = {killsRequired = 1000, raceName = "hellspawn", level = {8, 9999}, creatures = {"hellspawn"}, rewards = {{type = "exp", value = {2000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[9] = {killsRequired = 500, raceName = "sea serpent", level = {8, 9999}, creatures = {"sea serpent"}, rewards = {{type = "exp", value = {2000000}},{type="item",value={2160, 25}},{type = "points", value = {5}}}},
	[10] = {killsRequired = 500, raceName = "quara predator", level = {8, 9999}, creatures = {"quara predator"}, rewards = {{type = "exp", value = {2000000}},{type="item",value={2160, 25}},{type = "points", value = {5}}}},
	[11] = {killsRequired = 1000, raceName = "behemoth", level = {8, 9999}, creatures = {"behemoth"}, rewards = {{type = "exp", value = {3000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[12] = {killsRequired = 2000, raceName = "dragon lord", level = {8, 9999}, creatures = {"dragon lord"}, rewards = {{type = "exp", value = {4000000}},{type="item",value={2160, 50}},{type="item",value={5919, 1}},{type = "points", value = {5}}}},
	[13] = {killsRequired = 3500, raceName = "hydra", level = {8, 9999}, creatures = {"hydra"}, rewards = {{type = "exp", value = {4000000}},{type="item",value={2160, 50}},{type="item",value={10523, 1}},{type = "points", value = {5}}}},
	[14] = {killsRequired = 1500, raceName = "frost dragon", level = {8, 9999}, creatures = {"frost dragon"}, rewards = {{type = "exp", value = {4000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[15] = {killsRequired = 1500, raceName = "fury", level = {8, 9999}, creatures = {"fury"}, rewards = {{type = "exp", value = {4000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[16] = {killsRequired = 3000, raceName = "serpent spawn", level = {8, 9999}, creatures = {"serpent spawn"}, rewards = {{type = "exp", value = {4000000}},{type="item",value={2160, 50}},{type="item",value={10309, 1}},{type = "points", value = {5}}}},
	[17] = {killsRequired = 2000, raceName = "warlock", level = {8, 9999}, creatures = {"warlock"}, rewards = {{type = "exp", value = {6000000}},{type="item",value={2160, 60}},{type="item",value={5809, 1}},{type = "points", value = {5}}}},
	[18] = {killsRequired = 1500, raceName = "undead dragon", level = {8, 9999}, creatures = {"undead dragon"}, rewards = {{type = "exp", value = {4000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[19] = {killsRequired = 2000, raceName = "grim reaper", level = {8, 9999}, creatures = {"grim reaper"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[20] = {killsRequired = 1500, raceName = "hellhound", level = {8, 9999}, creatures = {"hellhound"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[21] = {killsRequired = 3500, raceName = "medusa", level = {8, 9999}, creatures = {"medusa"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={7968, 1}},{type = "points", value = {5}}}},
	[22] = {killsRequired = 2000, raceName = "demon", level = {8, 9999}, creatures = {"demon"}, rewards = {{type = "exp", value = {7000000}},{type="item",value={2160, 50}},{type="item",value={2495, 1}},{type = "points", value = {5}}}},
	[25] = {killsRequired = 3000, raceName = "ferumbras", level = {8, 9999}, creatures = {"ferumbras"}, rewards = {{type = "exp", value = {10000000}},{type="item",value={2160, 100}},{type="item",value={5903, 1}},{type = "points", value = {5}}}},
	[34] = {killsRequired = 1500, raceName = "orshabaal", level = {8, 9999}, creatures = {"orshabaal"}, rewards = {{type = "exp", value = {10000000}},{type="item",value={2160, 100}},{type="item",value={2522, 1}},{type = "points", value = {5}}}},
	[23] = {killsRequired = 3000, raceName = "diabolic imp", level = {8, 9999}, creatures = {"diabolic imp"}, rewards = {{type = "exp", value = {10000000}},{type="item",value={2160, 77}},{type="item",value={7730, 1}},{type = "points", value = {5}}}},
	[24] = {killsRequired = 1500, raceName = "juggernaut", level = {8, 9999}, creatures = {"juggernaut"}, rewards = {{type = "exp", value = {7000000}},{type="item",value={2160, 50}},{type="item",value={2471, 1}},{type = "points", value = {5}}}},
	[25] = {killsRequired = 3000, raceName = "frost giant", level = {8, 9999}, creatures = {"frost giant"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={10220, 1}},{type = "points", value = {5}}}},
	[26] = {killsRequired = 3000, raceName = "nightstalker", level = {8, 9999}, creatures = {"nightstalker"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={8266, 1}},{type = "points", value = {5}}}},
	[27] = {killsRequired = 3000, raceName = "demodras", level = {8, 9999}, creatures = {"demodras"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={9932, 1}},{type = "points", value = {5}}}},
	[28] = {killsRequired = 3000, raceName = "drakens", level = {8, 9999}, creatures = {"draken elite", "draken spellweaver", "draken warmaster", "draken abomination"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={12646, 1}},{type = "points", value = {5}}}},
	[29] = {killsRequired = 3000, raceName = "black warlock", level = {8, 9999}, creatures = {"black warlock"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={9778, 1}},{type = "points", value = {5}}}},
	[30] = {killsRequired = 3000, raceName = "black fury", level = {8, 9999}, creatures = {"black fury"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={10502, 1}},{type = "points", value = {5}}}},
	[31] = {killsRequired = 4000, raceName = "defiler", level = {8, 9999}, creatures = {"defiler"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={7708, 1}},{type = "points", value = {5}}}},
	[32] = {killsRequired = 3000, raceName = "sea serpent ice", level = {8, 9999}, creatures = {"sea serpent ice"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[33] = {killsRequired = 3000, raceName = "triple medusa", level = {8, 9999}, creatures = {"triple medusa"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={2160, 50}},{type = "points", value = {5}}}},
	[35] = {killsRequired = 5000, raceName = "worker golem", level = {8, 9999}, creatures = {"worker golem"}, rewards = {{type = "exp", value = {5000000}},{type="item",value={2160, 50}},{type="item",value={8293, 5}},{type = "points", value = {5}}}},
	[40] = {killsRequired = 2666, raceName = "demonnn", level = {1500, 9999}, creatures = {"demon"}, rewards = {{type = "storage", value = {Storage.bossRoom.demons, 1}},{type = "points", value = {5}}}},
	
}

function Player.getTaskRank(self)
	return (self:getStorageValue(Storage.task.pointsTask) >= 100 and RANK_ELITEHUNTER 
	or self:getStorageValue(Storage.task.pointsTask) >= 70 and RANK_TROPHYHUNTER 
	or self:getStorageValue(Storage.task.pointsTask) >= 40 and RANK_BIGGAMEHUNTER 
	or self:getStorageValue(Storage.task.pointsTask) >= 20 and RANK_RANGER 
	or self:getStorageValue(Storage.task.pointsTask) >= 10 and RANK_HUNTSMAN 
	or self:getStorageValue(Storage.task.storageJoin) == 1 and RANK_JOIN 
	or RANK_NONE)
end

function Player.getTaskPoints(self)
	return math.max(self:getStorageValue(Storage.task.pointsTask), 0)
end

function getTaskByName(name, table)
	local t = (table and table or tasks)
	for k, v in pairs(t) do
		if v.name then
			if v.name:lower() == name:lower() then
				return k
			end
		else
			if v.raceName:lower() == name:lower() then
				return k
			end
		end
	end
	return false
end

function Player.getTasks(self)
	local canmake = {}
	local able = {}
	for k, v in pairs(tasks) do
		if self:getStorageValue(Storage.task.storageTaskBase + k) < 1 then
			able[k] = true
			if self:getLevel() < v.level[1] or self:getLevel() > v.level[2] then
				able[k] = false
			end
			if v.storage and self:getStorageValue(v.storage[1]) < v.storage[2] then
				able[k] = false
			end

			if v.rank then
				if self:getTaskRank() < v.rank then
					able[k] = false
				end
			end

			if v.premium then
				if not self:isPremium() then
					able[k] = false
				end
			end

			if able[k] then
				canmake[#canmake + 1] = k
			end
		end
	end
	return canmake
end

function Player.canStartTask(self, name, table)
	local v = ""
	local id = 0
	local t = (table and table or tasks)
	for k, i in pairs(t) do
		if i.name then
			if i.name:lower() == name:lower() then
				v = i
				id = k
				break
			end
		else
			if i.raceName:lower() == name:lower() then
				v = i
				id = k
				break
			end
		end
	end
	if v == "" then
		return false
	end
	if self:getStorageValue(Storage.task.storageTaskBase + id) > 0 then
		return false
	end
	if v.level and self:getLevel() < v.level[1] and self:getLevel() > v.level[2] then
		return false
	end
	if v.premium and not self:isPremium() then
		return false
	end
	if v.rank and self:getTaskRank() < v.rank then
		return false
	end
	if v.storage and self:getStorageValue(v.storage[1]) < v.storage then
		return false
	end
	return true
end

function Player.getStartedTasks(self)
	local tmp = {}
	for k, v in pairs(tasks) do
		if self:getStorageValue(Storage.task.storageTaskBase + k) > 0 and self:getStorageValue(Storage.task.storageTaskBase + k) < 2 then
			tmp[#tmp + 1] = k
		end
	end
	return tmp
end
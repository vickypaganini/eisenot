local function getPlayerPoints(cid)
local res = db.getResult('select `premium_points` from accounts where name = \''..getPlayerAccount(cid)..'\'')
if(res:getID() == -1) then
return 0
end
local ret = res:getDataInt("premium_points")
res:free()
return tonumber(ret)
end

local function doPlayerChangeItemPerPoints(cid, itemid)
local quantidade = getPlayerItemCount(cid, itemid)
db.executeQuery("UPDATE `accounts` SET `premium_points` = '".. getPlayerPoints(cid) + quantidade .."' WHERE `name` ='"..getPlayerAccount(cid).."'")
doPlayerRemoveItem(cid, itemid, quantidade)
end


local itemid = 12411 -- Id do item(coin) que vai ser trocado pelo premium points
if player:getItemCount(12411) >= 1 then
doPlayerSendCancel(cid, "Você não tem o Coin para troca por pontos!")
return false
end

doPlayerChangeItemPerPoints(cid, itemid)
return true
end
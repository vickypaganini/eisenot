function onEquip(cid, item, slot)

local gain = 400 -- QUANTO DE HP AUMENTA

setCreatureMaxHealth(cid,getCreatureMaxHealth(cid)+gain)

return true

end

 

function onDeEquip(cid, item, slot)

setCreatureMaxHealth(cid,getCreatureMaxHealth(cid)-gain)

end
local conf = {
   ["level"] = {
   -- [item_level] = {successPercent= CHANCE TO UPGRADE ITEM, downgradeLevel = ITEM GETS THIS LEVEL IF UPGRADE FAILS}
     [1] = {successPercent = 75, downgradeLevel = 0},
     [2] = {successPercent = 60, downgradeLevel = 1},
     [3] = {successPercent = 55, downgradeLevel = 2},
     [4] = {successPercent = 40, downgradeLevel = 3},
     [5] = {successPercent = 35, downgradeLevel = 4},
     [6] = {successPercent = 20, downgradeLevel = 5},
     [7] = {successPercent = 15, downgradeLevel = 0},
     [8] = {successPercent = 10, downgradeLevel = 0},
     [9] = {successPercent = 5, downgradeLevel = 0}
   },

   ["upgrade"] = { -- how many percent attributes are rised?
     attack = 1, -- attack %
     defense = 1, -- defense %
     extraDefense = 1, -- extra defense %
     armor = 1, -- armor %
   }
}



-- // do not touch // --
-- Upgrading system by Azi [Ersiu] --
-- Edited for TFS 1.1 by Zbizu --

local upgrading = {
  upValue = function (value, level, percent)
  if value < 0 then return 0 end
     if level == 0 then return value end
     local nVal = value
     for i = 1, level do
       nVal = nVal + (math.ceil((nVal/100*percent)))
     end
  return nVal > 0 and nVal or value
  end,

  getLevel = function (item)
  local name = Item(item):getName():split('+')
     if (#name == 1) then
       return 0
     end

     return math.abs(name[2])
  end,
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
    if not target:isItem() then
        return true
    end
  end
  local it = ItemType(itemEx.itemid)
  if (((it:getWeaponType() > 0 and it:getWeaponType() ~= WEAPON_WAND) or getItemAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR) > 0) and not isItemStackable(itemEx.itemid)) then
  local level = upgrading.getLevel(itemEx.uid)
  if(level < #conf["level"])then
  local nLevel = (conf["level"][(level+1)].successPercent >= math.random(1,100)) and (level+1) or conf["level"][level].downgradeLevel
  if(nLevel > level)then
  doSendMagicEffect(toPosition, CONST_ME_MAGIC_GREEN)
  doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade to level " .. nLevel .. " successful!")
  else
  doSendMagicEffect(toPosition, CONST_ME_BLOCKHIT)
  doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade failed. Your " .. it:getName() .. " is now on level " .. nLevel .. "")
  end
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName()..((nLevel>0) and "+"..nLevel or ""))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK,  upgrading.upValue(it:getAttack(), nLevel, conf["upgrade"].attack))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, upgrading.upValue(it:getDefense(), nLevel, conf["upgrade"].defense))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_EXTRADEFENSE, upgrading.upValue(it:getExtraDefense(), nLevel, conf["upgrade"].extraDefense))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, upgrading.upValue(it:getArmor(), nLevel, conf["upgrade"].armor))
  doRemoveItem(item.uid, 1)
  else
  doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your " .. it:getName() .. " is on max level alredy.")
  end
  else
  doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You cannot upgrade this item.")
  end
end


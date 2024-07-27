# Copy currently held item as display Item for a fast travel portal. Rename the item with an anvil to define a name, displayed during teleport.

data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=FastTravelPortal] HandItems[0] set from entity @p SelectedItem
data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=FastTravelPortal] HandItems[0].tag.FastTravelPos set from entity @e[type=armor_stand,limit=1,sort=nearest,tag=FastTravelPortal] HandItems[1].tag.FastTravelPos
data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=FastTravelPortal] HandItems[1] set from entity @e[type=armor_stand,limit=1,sort=nearest,tag=FastTravelPortal] HandItems[0]
data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=FastTravelPortal] HandItems[0] set value {}
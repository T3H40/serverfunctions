# execute /function serverfunctions:make_teleport to summon a new portal at your position, to the location stored in your players storage.
# make sure to first store a destination by calling /function serverfunctions:store_position

summon minecraft:armor_stand ~ ~2 ~ {NoGravity:1b,Invisible:1b,Invincible:1b,Tags:["FastTravelPortal"],HandItems:[{}, {Count:1,id:player_head,tag:{FastTravelPos:[]}}]}
data modify entity @e[limit=1,sort=nearest,tag=FastTravelPortal] HandItems[1].tag.FastTravelPos set from storage serverfunctions:data FTPos
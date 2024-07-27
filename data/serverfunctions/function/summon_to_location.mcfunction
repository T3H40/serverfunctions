# Internal function. Do not use directly. 
data modify entity @e[limit=1,tag=ftDummy] Pos set from entity @e[limit=1,tag=do_fast_travel] HandItems[1].components.minecraft:custom_data.FastTravelPos
execute at @s run tp @a[limit=1,tag=fast_travel_player] ~ ~ ~
kill @s
# Internal function for teleporting mechanism. Do not use directly.

execute as @s at @s run tag @e[type=armor_stand,limit=1,sort=nearest,tag=FastTravelPortal] add do_fast_travel
tag @s add fast_travel_player

tellraw @a {"text":"Teleporting ", "extra":[{"selector": "@s"}, {"text": " -> "}, {"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=do_fast_travel]", "interpret": true}] }


summon minecraft:armor_stand ~ ~2 ~ {NoGravity:1b,Invisible:0b,Invincible:1b,Tags:["ftDummy"]}
execute as @e[tag=ftDummy, limit=1] run function serverfunctions:summon_to_location

scoreboard players set @s isNearFastTravelPortal 0

tag @s remove fast_travel_player
tag @e[tag=do_fast_travel,limit=1] remove do_fast_travel

#execute as T3H42 at T3H42 run data get entity @e[type=armor_stand,tag=FastTravelPortal,sort=nearest,limit=1]
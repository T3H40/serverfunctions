# Internal, do not use directly.
# Displays particle effects around fast travel portals
execute at @e[type=armor_stand,tag=FastTravelPortal] run particle enchant ~ ~ ~ 0.5 0.5 0.5 0.5 50 normal
execute as @a at @s if entity @e[type=armor_stand,tag=FastTravelPortal,distance=..3] run scoreboard players add @s isNearFastTravelPortal 1
execute as @a at @s if entity @e[type=armor_stand,tag=FastTravelPortal,distance=3..5] run scoreboard players set @s isNearFastTravelPortal 0

execute as @a[scores={isNearFastTravelPortal=60}] at @s run function serverfunctions:do_tp

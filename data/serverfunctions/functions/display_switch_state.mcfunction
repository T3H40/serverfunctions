# 191 49 -224 is the location of a lever that controlls our servers mobswitch.
# Either change the coordinates or remove this file if you do not use one. 
title @a subtitle "\"Willkommen zurück =)\""
execute as @a[scores={quits=1..}] if block 191 49 -224 lever[powered=false] run title @a[scores={quits=1..}] title { "text" : "Mobspawning ist an", "color": "red", "stay": "3" }
execute as @a[scores={quits=1..}] if block 191 49 -224 lever[powered=true] run title @a[scores={quits=1..}] title { "text" : "Mobspawning ist aus", "color": "green" }
scoreboard players set @a[scores={quits=1..}] quits 0

schedule function serverfunctions:display_switch_state 1s
item replace entity @e[type=minecraft:item_display,tag=itd_h] container.0 with minecraft:air
execute as @e[type=minecraft:item_display,tag=itd_h] run data merge entity @s {Glowing:0}

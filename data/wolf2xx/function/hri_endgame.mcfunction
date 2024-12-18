item replace entity @e[type=minecraft:item_display,tag=itd_h] container.0 with minecraft:lightning_rod
execute as @e[type=minecraft:item_display,tag=itd_h] run data merge entity @s {Glowing:1}
execute as @e[type=minecraft:item_display,tag=itd_h] at @s run execute as @s at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace minecraft:lightning_rod[powered=true]

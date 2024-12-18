execute as @a[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:ominous_item_spawner ~ ~1 ~ {spawn_item_after_ticks:60,item:{id:end_crystal}}
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0.5 1
clear @s minecraft:crying_obsidian
kill @e[type=item,nbt={Item:{id:"minecraft:crying_obsidian"}}]
scoreboard players reset @s 21_trap

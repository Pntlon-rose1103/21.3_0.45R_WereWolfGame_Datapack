summon minecraft:shulker ~ ~ ~ {NoAI:1,color:5}
execute as @e[type=minecraft:shulker] run attribute @s minecraft:scale base set 5
execute as @e[type=minecraft:shulker] run attribute @s minecraft:max_health base set 2
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1 1
clear @s minecraft:shulker_spawn_egg
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_spawn_egg"}}]
scoreboard players reset @s 21_shul

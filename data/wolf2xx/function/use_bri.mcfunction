scoreboard players add @e[tag=bc] 21_brct 1
execute as @e[type=item,nbt={Item:{id:"minecraft:creeper_head"}},scores={21_brct=2}] at @s if entity @a[scores={21_brcs=1}] run kill @e[scores={21_brct=2}]
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=663}] at @s run clone 0 -63 0 4 -60 4 ~-2 ~-1 ~-2
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=665..}] at @s run kill @e[type=minecraft:armor_stand,tag=bc]
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=62}] at @s if entity @a[scores={21_brcs=1}] run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=662}] at @s if entity @a[scores={21_brcs=1}] run scoreboard players reset @a 21_brcs
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=662..}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=662}] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 3 3 3 1 200 force
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=60}] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 3 3 3 1 200 force
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=60}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0.5
execute as @e[type=item,nbt={Item:{id:"minecraft:creeper_head"}},scores={21_brct=1}] at @s if entity @a[scores={21_brcs=1}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bc"],Marker:1b,Invisible:1b}
execute as @e[type=minecraft:armor_stand,tag=bc,scores={21_brct=60}] at @s run clone ~2 ~-1 ~2 ~-2 ~2 ~-2 0 -63 0
execute as @e[type=item,nbt={Item:{id:"minecraft:creeper_head"}}] at @s if entity @a[scores={21_brcs=1}] run scoreboard players add @s 21_brct 1
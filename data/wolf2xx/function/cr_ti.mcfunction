execute as @e[type=minecraft:guardian] run data merge entity @s {AngerTime:500,Moistness:999,HandDropChances:[0.085f, 1.000f]}
execute as @e[type=minecraft:guardian] run attribute @s minecraft:gravity base set 0.9
scoreboard players add @a 21_gran 1
scoreboard players set @a[scores={21_gran=4..}] 21_gran 1

execute as @a[scores={21_guak=1}] if entity @s[scores={21_gran=1}] run give @s minecraft:netherite_chestplate[minecraft:trim={material:"minecraft:emerald",pattern:"minecraft:silence"},minecraft:damage=589]
execute as @a[scores={21_guak=1}] if entity @s[scores={21_gran=2}] run effect give @s minecraft:poison 30 2 true
execute as @a[scores={21_guak=1}] if entity @s[scores={21_gran=3}] run give @s minecraft:end_crystal
scoreboard players reset @a[scores={21_guak=1..}] 21_guak
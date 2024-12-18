execute as @a if entity @a[scores={21_bea=33}] if entity @s[scores={21_sh=1}] run damage @s 2 minecraft:player_attack by @s
scoreboard players add @a[scores={21_sh=1..}] 21_sh 1
scoreboard players set @a[scores={21_sh=3..}] 21_sh 0

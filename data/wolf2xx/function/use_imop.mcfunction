scoreboard players add @a[scores={21_imop=1..}] 21_imop 1
scoreboard players add @e[type=minecraft:wind_charge] 21_imop 1
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=3}] run attribute @s minecraft:gravity base set 16
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~ ~1 ~1 {Motion:[0.0d,-0.02d,0.5d],acceleration_power:0.0d,Glowing:1b}
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~ ~1 ~-1 {Motion:[0.0d,-0.02d,-0.5d],acceleration_power:0.0d,Glowing:1b}
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~1 ~1 ~1 {Motion:[0.5d,-0.02d,0.5d],acceleration_power:0.0d,Glowing:1b}
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~1 ~1 ~-1 {Motion:[0.5d,-0.02d,-0.5d],acceleration_power:0.0d,Glowing:1b}
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~1 ~1 ~ {Motion:[0.5d,-0.02d,0.0d],acceleration_power:0.0d,Glowing:1b}
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~-1 ~1 ~ {Motion:[-0.5d,-0.02d,0.0d],acceleration_power:0.0d,Glowing:1b}
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~-1 ~1 ~1 {Motion:[-0.5d,-0.02d,0.5d],acceleration_power:0.0d,Glowing:1b}
execute as @a[scores={21_imop=1..}] if entity @a[scores={21_imop=1..300}] run execute as @s[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:wind_charge ~-1 ~1 ~-1 {Motion:[-0.5d,-0.02d,-0.5d],acceleration_power:0.0d,Glowing:1b	}
execute as @e[type=minecraft:wind_charge,scores={21_imop=200..}] run data merge entity @s {Motion:[0.0d,-6.6d,0.0d],acceleration_power:0.3d,Glowing:1b}
execute as @a[scores={21_imop=320}] if entity @a[scores={21_imop=320}] run attribute @s minecraft:gravity base set 0.08
execute as @a[scores={21_imop=521}] if entity @a[scores={21_imop=521}] run kill @e[type=minecraft:wind_charge]
scoreboard players reset @a[scores={21_imop=551..}] 21_imop

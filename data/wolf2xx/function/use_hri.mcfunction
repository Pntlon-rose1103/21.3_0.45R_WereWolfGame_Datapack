execute as @r unless entity @e[type=minecraft:item_display,tag=itd_h] run summon minecraft:item_display ~ ~ ~ {Tags:["itd_h"]}
execute as @a at @s run execute as @s at @s if items entity @s weapon.* minecraft:lightning_rod run tp @e[type=minecraft:item_display,tag=itd_h] ^ ^ ^
execute as @a at @s run execute as @s at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:lightning_rod[powered=true] replace minecraft:lightning_rod[powered=false]
#
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ minecraft:lightning_rod[powered=true] run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:slowness 20 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:darkness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:blindness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ minecraft:lightning_rod[powered=true] run fill ~ ~-1 ~ ~ ~-1 ~ air replace minecraft:lightning_rod[powered=true]

#
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~ ~ minecraft:lightning_rod[powered=true] run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~ ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:slowness 20 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~ ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:darkness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~ ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:blindness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~ ~ minecraft:lightning_rod[powered=true] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:lightning_rod[powered=true]

#
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~1 ~ minecraft:lightning_rod[powered=true] run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~1 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:slowness 20 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~1 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:darkness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~1 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:blindness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~1 ~ minecraft:lightning_rod[powered=true] run fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:lightning_rod[powered=true]

#
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~2 ~ minecraft:lightning_rod[powered=true] run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~2 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:slowness 20 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~2 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:darkness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~2 ~ minecraft:lightning_rod[powered=true] run effect give @s minecraft:blindness 21 6
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~2 ~ minecraft:lightning_rod[powered=true] run fill ~ ~2 ~ ~ ~2 ~ air replace minecraft:lightning_rod[powered=true]

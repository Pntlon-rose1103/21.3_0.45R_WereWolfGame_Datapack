#’T’ã
execute as @a[tag=tantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"0b"}] run tellraw @s ["",{"text":"\u3053\u306e\u6b7b\u4f53\u306f"},{"text":"\u4eba\u72fc","color":"green"},{"text":"\u3067\u306f\u3042\u308a\u307e\u305b\u3093"}]
execute as @a[tag=tantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"0b"}] run scoreboard players remove @s 21_tantei 1
execute as @a[tag=tantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"1b"}] run tellraw @s ["",{"text":"\u3053\u306e\u6b7b\u4f53\u306f"},{"text":"\u4eba\u72fc","color":"red"},{"text":"\u3067\u3059"}]
execute as @a[tag=tantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"1b"}] run scoreboard players remove @s 21_tantei 1
#Œ³’T’ã
execute as @a[tag=mtantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"0b"}] run tellraw @s ["",{"text":"\u3053\u306e\u6b7b\u4f53\u306f"},{"text":"\u4eba\u72fc","color":"green"},{"text":"\u3067\u306f\u3042\u308a\u307e\u305b\u3093"}]
execute as @a[tag=mtantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"0b"}] run scoreboard players remove @s 21_tantei 1
execute as @a[tag=mtantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"1b"}] run tellraw @s ["",{"text":"\u3053\u306e\u6b7b\u4f53\u306f"},{"text":"\u4eba\u72fc","color":"green"},{"text":"\u3067\u306f\u3042\u308a\u307e\u305b\u3093"}]
execute as @a[tag=mtantei,scores={21_tantei=1}] at @s if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_data={"wolf":"1b"}] run scoreboard players remove @s 21_tantei 1

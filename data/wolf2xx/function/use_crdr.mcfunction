summon minecraft:guardian
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1 1
clear @s minecraft:crafter
kill @e[type=item,nbt={Item:{id:"minecraft:crafter"}}]
scoreboard players reset @s 21_crdr

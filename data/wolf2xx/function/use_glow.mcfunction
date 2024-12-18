effect give @a[gamemode=adventure] minecraft:glowing 30 0 true
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1 1
title @a title {"text":"\u5168\u54e1\u8f1d\u3044\u3066\uff01\uff01\uff01","color":"gold"}
effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
clear @s minecraft:glow_ink_sac
kill @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}}]
scoreboard players reset @s 21_glow
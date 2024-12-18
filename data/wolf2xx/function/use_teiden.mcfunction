effect give @a[gamemode=adventure] minecraft:blindness 11 0 true
effect give @a[gamemode=adventure] minecraft:darkness 11 0 true
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1 1
title @a title {"text":"\u505c \u96fb \u767a \u751f"}
title @a subtitle {"text":"10\u79d2\u5f8c\u306b\u5fa9\u65e7\u3057\u307e\u3059..."}
effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
clear @s minecraft:light
kill @e[type=item,nbt={Item:{id:"minecraft:light"}}]
scoreboard players reset @s 21_teiden
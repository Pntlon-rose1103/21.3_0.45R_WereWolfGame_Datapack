playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1 1
title @a title {"text":"\u30d3\u30fc\u30b3\u30f3\u8d77\u52d5\u88c5\u7f6e\u767a\u52d5\uff01\uff01","color":"aqua"}
title @a subtitle {"text":"\u203b\u30b7\u30d5\u30c8\u3059\u308b\u3068\u30c0\u30e1\u30fc\u30b8\u3092\u53d7\u3051\u307e\u3059\u3002","color":"gold"}
tellraw @a ["",{"text":"[\u30de\u30a4\u30af\u30e9","color":"green"},{"text":"\u4eba\u72fc","color":"red"},{"text":"]","color":"green"},{"text":"\u30b2\u30fc\u30e0\u7d42\u4e86\u6642\u307e\u3067\u30cd\u30fc\u30e0\u30bf\u30b0\u304c\u6709\u52b9\u306b\u306a\u308a\u307e\u3059\u3002","color":"gold"}]
team modify 21_white nametagVisibility always
team modify 21_black nametagVisibility always
team modify 21_kaitou nametagVisibility always
team modify 21_madman nametagVisibility always
kill @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}}]
clear @s minecraft:prismarine_crystals
scoreboard players set @s 21_bea 33

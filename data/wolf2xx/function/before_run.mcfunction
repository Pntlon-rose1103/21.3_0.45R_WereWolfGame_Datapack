#レシピ
recipe give @a minecraft:cake_pa
recipe give @a minecraft:usebook

#サンタ用セットブロック(毎回やってます)
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run setblock ~ ~-1 ~ minecraft:black_shulker_box[facing=down]{Items:[{Slot:0b,components:{"minecraft:bundle_contents":[{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":66,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmIxZWM3ZGM3NTMwNjFjYTE3NDQyNGVhNDVjZjk0OTBiMzljZDVkY2NhNDc3ZDEzOGE2MDNlNmJlNzU1ZWM3MiJ9fX0="}]}},count:1,id:"minecraft:player_head"},{count:1,id:"minecraft:firework_star"}]},count:1,id:"minecraft:white_bundle"}]}


#リセット
effect clear @a
clear @a
gamemode adventure @a[tag=!kans]
gamemode spectator @a[tag=kans]

#チームセット
team join 21_white @a[tag=!kans]
team join 21_black @a[tag=wolf]
team join 21_madman @a[tag=kyouj]
team join 21_madman @a[tag=madn]
team join 21_madman @a[tag=huta]
#スコアセット
scoreboard players set @a 21_death 99
scoreboard players set 21._.GM 21_undeath 0
scoreboard players set @a[tag=yomibito] 21_death 94
scoreboard players operation 21._.GM 21_whi_a += @a[team=21_white] 21_1
scoreboard players operation 21._.GM 21_whi_a += @a[team=21_kaitou] 21_1
scoreboard players operation 21._.GM 21_bla_a += @a[team=21_black] 21_1

##スタート後
#タイトル
title @a times 0 100 0
title @a title {"text":"\u6e96\u5099\u30d5\u30a7\u30fc\u30ba","color":"green"}
title @a subtitle {"text":"\u203b\u5f79\u8077\u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044","color":"blue"}
title @a times 20 100 20
scoreboard players set @a 21_K_sh 0

#役職１
tellraw @a[tag=mura,tag=!robo] {"text":"\u3042\u306a\u305f\u306f\u6751\u4eba\u3067\u3059\u3002","color":"green"}
tellraw @a[tag=wmura,tag=!robo] {"text":"\u3042\u306a\u305f\u306f\u6751\u4eba\u3067\u3059\u3002","color":"green"}
tellraw @a[tag=yogen] {"text":"\u3042\u306a\u305f\u306f\u9810\u8a00\u8005\u3067\u3059\u3002","color":"aqua"}
tellraw @a[tag=reibai] {"text":"\u3042\u306a\u305f\u306f\u970a\u5a92\u5e2b\u3067\u3059\u3002","color":"yellow"}
tellraw @a[tag=kishi] {"text":"\u3042\u306a\u305f\u306f\u9a0e\u58eb\u3067\u3059\u3002","color":"gold"}
tellraw @a[tag=tantei] {"text":"\u3042\u306a\u305f\u306f\u63a2\u5075\u3067\u3059\u3002","color":"#CA8200"}
tellraw @a[tag=kaun] {"text":"\u3042\u306a\u305f\u306f\u30ab\u30a6\u30f3\u30bb\u30e9\u30fc\u3067\u3059\u3002","color":"dark_aqua"}
tellraw @a[tag=denpa,tag=!robo] ["",{"text":"\u3042\u306a\u305f\u306f\u96fb\u6ce2\u4eba\u9593\u3067\u3059\u3002\u5fa9\u6d3b\u3059\u308b\u306e\u306f\u3001","color":"gold"},{"selector":"@a[tag=yomibito]","color":"gold"},{"text":"\u3067\u3059","color":"gold"}]
tellraw @a[tag=snow,tag=!robo] ["",{"text":"\u3042\u306a\u305f\u306f\u30b9\u30ce\u30fc\u30de\u30f3\u3067\u3059\u3002\u3042\u306a\u305f\u304c\u6b7b\u306c\u3068\u3001","color":"#B1B1B1"},{"selector":"@a[tag=yuki]","color":"#B1B1B1"},{"text":"\u3082\u6b7b\u306b\u307e\u3059\u3002","color":"#B1B1B1"}]
tellraw @a[tag=yaku,tag=!robo] {"text":"\u3042\u306a\u305f\u306f\u5384\u795e\u3067\u3059\u3002","color":"dark_green"}
tellraw @a[tag=pate,tag=!robo] {"text":"\u3042\u306a\u305f\u306f\u30d1\u30c6\u30a3\u30b7\u30a8\u3067\u3059\u3002","color":"#FF9BFF"}
tellraw @a[tag=pate,tag=!robo] ["",{"text":"\u30b1\u30fc\u30ad\u306e\u6750\u65994\u3064\u3092\u30af\u30e9\u30d5\u30c8\u3057\u3066\u3001\u30b1\u30fc\u30ad\u3092\u4f5c\u308a\u307e\u3057\u3087\u3046\u3002\n\u30b1\u30fc\u30ad\u306e\u6750\u6599\u306f2\u5206\u3054\u3068\u306b\u914d\u3089\u308c\u307e\u3059\u3002\n\u30b1\u30fc\u30ad\u306f\u53f3\u624b\u306b\u6301\u3063\u3066","color":"#FF9BFF"},{"keybind":"key.use","color":"green"},{"text":"\u3067\u98df\u3079\u3089\u308c\u308b\u3002\n\u30b1\u30fc\u30ad\u3092\u98df\u3079\u308b\u306b\u306f\u304b\u306a\u308a\u6642\u9593\u304c\u304b\u304b\u308a\u307e\u3059\u3002\n\u98df\u3079\u7d42\u308f\u3063\u305f\u5834\u5408\u3001\u970a\u754c\u306b\u884c\u304f\u3053\u3068\u304c\u3067\u304d\u307e\u3059\u3002","color":"#FF9BFF"}]
tellraw @a[tag=kosp,tag=!robo] ["",{"text":"\u3042\u306a\u305f\u306f\u30b3\u30b9\u30d7\u30ec\u30a4\u30e4\u30fc\u3067\u3059\u3002","color":"#FF6DEA"},{"text":"\n"},{"text":"\u9810\u8a00\u8005","color":"aqua"},{"text":"\u3001"},{"text":"\u970a\u5a92\u5e2b","color":"yellow"},{"text":"\u3001"},{"text":"\u63a2\u5075","color":"#CA8200"},{"text":"\u3001"},{"text":"\u30ab\u30a6\u30f3\u30bb\u30e9\u30fc","color":"dark_aqua"},{"text":"\u3001"},{"text":"\u602a\u76d7","color":"blue"},{"text":"\u306e\u3069\u308c\u304b\u3092\u9a19\u3063\u3066\u304f\u3060\u3055\u3044\u3002"}]

tellraw @a[tag=kaitou] ["",{"text":"\u3042\u306a\u305f\u306f\u602a\u76d7\u3067\u3059\u3002","color":"blue"},{"text":"\n\u672c\u3092\u6295\u3052\u3066"},{"text":"\u76d7\u3080\u5bfe\u8c61","color":"blue"},{"text":"\u3092\u9078\u629e\u3057\u305f\u5f8c\u3001\u672c\u3092\u30af\u30e9\u30d5\u30c8\u3057\u3066\u304f\u3060\u3055\u3044\u3002"}]
tellraw @a[tag=kaitou] ["",{"text":"\u203b"},{"text":"\u602a\u76d7","color":"blue"},{"text":"\u306f\u672c\u3092"},{"keybind":"key.use","color":"red"},{"text":"\u305b\u305a\u306b"},{"text":"\u30af\u30e9\u30d5\u30c8","color":"green"},{"text":"\u3057\u3066"},{"text":"\u76d7","color":"blue"},{"text":"\u307f\u307e\u3059\u3002\n\u64cd\u4f5c\u30df\u30b9\u306b\u6ce8\u610f\u3057\u3066\u304f\u3060\u3055\u3044"}]

tellraw @a[tag=huta,tag=!robo] ["",{"text":"\u3042\u306a\u305f\u306f\u53cc\u5b50\u3067\u3059\u3002","color":"gold"},{"text":"\u7247\u5272\u308c\u306e\u52dd\u5229","color":"green"},{"text":"\u304c"},{"text":"\u3042\u306a\u305f\u306e\u52dd\u5229","color":"green"},{"text":"\u3067\u3059\u3002\n"},{"text":"\u53cc\u5b50\u306e\u7247\u5272\u308c","color":"aqua"},{"text":"\u306b\u8fd1\u3065\u304f\u3068\u3001"},{"text":"\u30d1\u30fc\u30c6\u30a3\u30af\u30eb","color":"yellow"},{"text":"\u304c\u51fa\u307e\u3059\u3002"}]
#役職２
tellraw @a[tag=wolf,tag=!robo] [{"text":"\u3042\u306a\u305f\u306f\u4eba\u72fc\u3067\u3059\u3002","color":"red"},{"text":"\n"},{"text":">>>\u4ef2\u9593 ","color":"dark_red"},{"selector":"@a[tag=wolf,tag=!mwolf]","color":"dark_red"}]
tellraw @a[tag=kyouj,tag=!robo] {"text":"\u3042\u306a\u305f\u306f\u72c2\u4eba\u3067\u3059\u3002","color":"light_purple"}
tellraw @a[tag=madn] ["",{"text":"\u3042\u306a\u305f\u306f\u30de\u30c3\u30c9\u30ca\u30fc\u30b9\u3067\u3059\u3002","color":"dark_red"},{"text":"\n\u3042\u306a\u305f\u306b\u63a5\u89e6\u3057\u305f\u30d7\u30ec\u30a4\u30e4\u30fc\u306f\u3042\u306a\u305f\u306e\u6b7b\u4ea1\u6642\u306b"},{"text":"\u26658\u30c0\u30e1\u30fc\u30b8","color":"red"},{"text":"\u306e\u7206\u767a\u3092\u8d77\u3053\u3057\u307e\u3059\u3002"}]
tellraw @a[tag=madn] {"text":"\u30de\u30c3\u30c9\u30ca\u30fc\u30b9\u306f\u77f3\u5207\u53f0\u3092\u6295\u3052\u308b\u3053\u3068\u3067\u3001\u30ae\u30ed\u30c1\u30f3\u3092\u8a2d\u7f6e\u3067\u304d\u307e\u3059\u3002\u30ae\u30ed\u30c1\u30f3\u306f\u58ca\u308c\u305f\u30ed\u30dc\u30c3\u30c8\u4ee5\u5916\u26613\u30c0\u30e1\u30fc\u30b8\u3092\u53d7\u3051\u307e\u3059\u304c\u3001\u58ca\u308c\u305f\u30ed\u30dc\u30c3\u30c8\u306f\u4e00\u6483\u3067\u6b7b\u4ea1\u3057\u307e\u3059\u3002","color":"dark_red"}
#役職３
tellraw @a[tag=robo] ["",{"text":"\u3042\u306a\u305f\u306f\u58ca","color":"#B8FFC2"},{"text":"dddddd","obfuscated":true,"color":"#B8FFC2"},{"text":"\u3067\u3059\u3002","color":"#B8FFC2"}]
tellraw @a[tag=sli] {"text":"\u3042\u306a\u305f\u306f\u30b9\u30e9\u30a4\u30e0\u3067\u3059\u3002\u6b7b\u4ea1\u6642\u306b\u30b9\u30e9\u30a4\u30e0\u3092\u53ec\u559a\u3057\u307e\u3059\u3002","color":"#64FF96"}
tellraw @a[tag=TNT] ["",{"text":"\u3042\u306a\u305f\u306f\u30dc\u30de\u30fc\u3067\u3059\u3002\u6b7b\u4ea1\u6642\u306b\u30c9\u30ed\u30c3\u30d7\u3059\u308b","color":"gray"},{"text":"\u30d8\u30d3\u30fc\u30b3\u30a2","color":"#A9AAFF"},{"text":"\u3092\u62fe\u3063\u305f\u30d7\u30ec\u30a4\u30e4\u30fc\u306f\u7206\u6b7b\u3057\u307e\u3059\u3002","color":"gray"}]
tellraw @a[tag=dragon] {"text":"\u3042\u306a\u305f\u306f\u30c9\u30e9\u30b4\u30f3\u30c6\u30a4\u30de\u30fc\u3067\u3059\u3002\u6b7b\u4ea1\u6642\u306b\u30a8\u30f3\u30c0\u30fc\u30c9\u30e9\u30b4\u30f3\u3092\u53ec\u559a\u3057\u307e\u3059\u3002","color":"light_purple"}
execute if entity @a[tag=vwo] run tellraw @a[tag=wolf,tag=!robo] ["",{"text":"\u4eba\u72fc\u306e\u4e2d\u306b\u30a6\u30a4\u30eb\u30b9\u72fc\u304c\u3044\u307e\u3059\u3002","color":"red"},{"text":"\n"},{"text":"\u30a6\u30a4\u30eb\u30b9\u72fc\u304c\u6b7b\u4ea1\u3059\u308b\u3068\u767d\u9663\u55b6\u3068\u72fc\u304c1\u4eba\u305a\u3064\u6b7b\u4ea1\u3057\u307e\u3059\u3002","color":"dark_red"}]
tellraw @a[tag=kodai,tag=!robo] {"text":"\u3042\u306a\u305f\u306f\u53e4\u4ee3\u4eba\u3067\u3059\u30021\u5ea6\u3060\u3051\u6ce2\u52d5\u80fd\u529b\u3092\u4f7f\u7528\u3067\u304d\u307e\u3059\u3002","color":"dark_green"}
tellraw @a[tag=kodai,tag=!robo] ["",{"text":"\u672c\u3092\u98df\u3079\u308b\u3068\u3001","color":"dark_green"},{"text":"\u9244\u306e\u5263"},{"text":"\u3092\u5165\u624b\u3067\u304d\u307e\u3059\u3002","color":"dark_green"},{"text":"\n\u9244\u306e\u5263"},{"text":"\u3092\u6295\u3052\u308b\u3068","color":"dark_green"},{"text":"\u6ce2\u52d5\u5f3e","color":"gray"},{"text":"\u304c\u98db\u3093\u3067\u3044\u304d\u307e\u3059\u3002\n\u307e\u305f\u3001\u6b7b\u4ea1\u6642\u306b","color":"dark_green"},{"text":"\u907a\u4f1d\u5b50\u30d6\u30ed\u30c3\u30af","color":"dark_red"},{"text":"\u304c\u751f\u6210\u3055\u308c\u3001\n\u89e6\u308c\u308b\u3068\u3001","color":"dark_green"},{"text":"\u5c0f\u4eba\u306e\u907a\u4f1d\u5b50","color":"gold"},{"text":"\u3092\u53d7\u3051\u7d99\u304e\u307e\u3059\u3002","color":"dark_green"}]
tellraw @a[tag=baldi] {"text":"\u3042\u306a\u305f\u306f\u30d0\u30eb\u30c7\u30a3\u3067\u3059\u3002\u30d8\u30eb\u30e1\u30c3\u30c8\u88c5\u5099\u306e\u6240\u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002","color":"green"}
tellraw @a[tag=tonak] ["",{"text":"\u3042\u306a\u305f\u306f\u30c8\u30ca\u30ab\u30a4\u3067\u3059\u3002","color":"blue"},{"text":"\n"},{"text":"\u624b\u6301\u3061\u306e","color":"green"},{"text":"\u30b7\u30e5\u30eb\u30ab\u30fc\u30dc\u30c3\u30af\u30b9"},{"text":"\u3092\u6295\u3052\u308b\u3053\u3068\u3067\u3001","color":"green"},{"text":"\n"},{"text":"\u4e00\u756a\u8fd1\u304f\u306e\u4eba\u3092","color":"green"},{"text":"\u30b5\u30f3\u30bf"},{"text":"\u306b\u4efb\u547d\u3067\u304d\u307e\u3059\u3002","color":"green"},{"text":"\n"},{"text":"(","color":"green"},{"text":"\u30b5\u30f3\u30bf"},{"text":"\u306b\u306a\u3063\u305f\u4eba\u306f\u4e00\u6642\u7684\u306b","color":"green"},{"text":"\u77e2","color":"aqua"},{"text":"\u3092\u5931\u3044\u307e\u3059)","color":"green"}]
#アイテム処理１
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 1
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 2
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 3
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 4
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 5
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 6
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 7
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 8
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 9
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 10
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 11
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 12
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 13
tag @a[scores={21_item=1..}] add itemok
scoreboard players set @a[tag=!itemok,sort=random,limit=1] 21_item 14
tag @a[scores={21_item=1..}] add itemok

#アイテム処理２(配布)
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=1}] hotbar.4 from block ~ ~ ~ container.0
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=2}] hotbar.4 from block ~ ~ ~ container.1
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=3}] hotbar.4 from block ~ ~ ~ container.2
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=4}] hotbar.4 from block ~ ~ ~ container.3
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=5}] hotbar.4 from block ~ ~ ~ container.4
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=6}] hotbar.4 from block ~ ~ ~ container.5
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=7}] hotbar.4 from block ~ ~ ~ container.6
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=8}] hotbar.4 from block ~ ~ ~ container.7
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=9}] hotbar.4 from block ~ ~ ~ container.8
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=10}] hotbar.4 from block ~ ~ ~ container.9
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=11}] hotbar.4 from block ~ ~ ~ container.10
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=12}] hotbar.4 from block ~ ~ ~ container.11
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=13}] hotbar.4 from block ~ ~ ~ container.12
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_item=14}] hotbar.4 from block ~ ~ ~ container.13

#ロール処理１
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 3
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 6
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 9
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 12
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 15
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 18
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 21
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 24
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 27
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 30
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 33
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 36
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 39
tag @a[scores={21_ab_ans=1..}] add rsok
scoreboard players set @a[tag=!rsok,sort=random,limit=1] 21_ab_ans 42
tag @a[scores={21_ab_ans=1..}] add rsok

#itemなど配布
item replace entity @a[tag=baldi] armor.head with minecraft:breeze_rod[minecraft:enchantments={levels:{'minecraft:sharpness':255}}]
item replace entity @a hotbar.0 with bow[minecraft:enchantments={levels:{'minecraft:power':255,'minecraft:infinity':1,'minecraft:vanishing_curse':1}}]
item replace entity @a hotbar.1 with arrow[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}}]
item replace entity @a hotbar.2 with minecraft:cooked_beef[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}},minecraft:can_break={blocks:'minecraft:infested_deepslate'}] 8
item replace entity @a hotbar.3 with minecraft:enchanted_book[minecraft:consumable={},food={nutrition:20,saturation:20,can_always_eat:true,eat_seconds:1.6f}]
item replace entity @a[tag=dragon] hotbar.5 with minecraft:crossbow[minecraft:charged_projectiles=[{id:dragon_egg}],minecraft:damage=999]
execute unless entity @a[tag=kaitou] run item replace entity @a[tag=madn] hotbar.6 with minecraft:stonecutter[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}}] 6
execute if entity @a[tag=kaitou] run item replace entity @a[tag=madn] hotbar.6 with minecraft:stonecutter[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}}] 3
item replace entity @a[tag=tonak] hotbar.7 with minecraft:white_shulker_box
effect give @a[tag=!robo] minecraft:absorption 360 4 true
effect give @a[tag=robo] minecraft:health_boost infinite 4 true
effect give @a minecraft:saturation 1800 0 true


#避雷針処理
function wolf2xx:hri_gamestart


#移行処理
execute unless entity @a[tag=kaitou] run tag @r add thiok
scoreboard players set 21._.GM 21_info 10

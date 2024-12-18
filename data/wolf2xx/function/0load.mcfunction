#11
tellraw @a ["",{"text":"\u5c0e\u5165\u6210\u529f\uff01\uff01\uff01tag\u306emasp\u3092op\u6301\u3061\u30d7\u30ec\u30a4\u30e4\u30fc\u306b\u3064\u3051\u3066\u304f\u3060\u3055\u3044\u3002\n/tag @s add masp \u3068 /tag @s add kanr\n\u3092\u5b9f\u884c\u3057\u305f\u3089\u3001\u6728\u306e\u30af\u30ef\u3092"},{"keybind":"key.drop"},{"text":"\u3067\u30c9\u30ed\u30c3\u30d7\u3057\u3066\u304f\u3060\u3055\u3044\u3002"}]
tellraw @a ["",{"text":"[Warning]","color":"dark_red"},{"text":"\u672c\u30c7\u30fc\u30bf\u30d1\u30c3\u30af","color":"gold"},{"text":"\u306f"},{"text":"1.21.2","color":"green"},{"text":"\u4ee5\u964d\u3067\u52d5\u4f5c\u3057\u307e\u3059\u3002\n"},{"text":"1.21.1","color":"red"},{"text":"\u4ee5\u524d\u3067\u52d5\u4f5c\u3059\u308b"},{"text":"\u30c7\u30fc\u30bf\u30d1\u30c3\u30af","color":"gold"},{"text":"\u306f\u30d0\u30fc\u30b8\u30e7\u30f3\u304c"},{"text":"0.39\u4ee5\u524d","color":"light_purple"},{"text":"\u306e\u30e2\u30ce\u3067\u3059\u3002"}]
#22
gamerule doFireTick false
#33
fill 0 -63 0 4 -60 4 air
#44
function wolf2xx:add_scoreboard
#55
function wolf2xx:add_team
#66
function wolf2xx:set_gamerule
#77
function wolf2xx:000-allsetting
#88
forceload add 0 0 0 0
forceload add 64 64 64 64
forceload add -64 -64 -64 -64
#99
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run setblock ~ ~-1 ~ minecraft:white_shulker_box[facing=down]{Items:[{Slot:0b,components:{"minecraft:bundle_contents":[{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":66,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmIxZWM3ZGM3NTMwNjFjYTE3NDQyNGVhNDVjZjk0OTBiMzljZDVkY2NhNDc3ZDEzOGE2MDNlNmJlNzU1ZWM3MiJ9fX0="}]}},count:1,id:"minecraft:player_head"},{count:1,id:"minecraft:firework_star"}]},count:1,id:"minecraft:white_bundle"}]}

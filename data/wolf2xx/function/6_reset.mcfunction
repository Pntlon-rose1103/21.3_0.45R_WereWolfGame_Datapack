#スコア
scoreboard players reset @a
scoreboard players reset 21._.GM 21_info
scoreboard players reset 21._.GM 21_debu
scoreboard players reset 21._.GM 21_end
scoreboard players reset 21._.GM 21_whi_a
scoreboard players reset 21._.GM 21_bla_a
scoreboard players reset 21._.GM 21_a
scoreboard players reset 21._.GM 21_b
scoreboard players reset 21._.GM 21_c
scoreboard players reset 21._.GM 21_undeath

#タグ
tag @a remove mura
tag @a remove yaku
tag @a remove yogen
tag @a remove reibai
tag @a remove kishi
tag @a remove tantei
tag @a remove kaun
tag @a remove denpa
tag @a remove snow
tag @a remove pate
tag @a remove kosp
tag @a remove wmura
tag @a remove wolf
tag @a remove kyouj
tag @a remove madn
tag @a remove myogen
tag @a remove mreibai
tag @a remove mkishi
tag @a remove mtantei
tag @a remove mkaun
tag @a remove mdenpa
tag @a remove msnow
tag @a remove mkosp
tag @a remove mwmura
tag @a remove mwolf
tag @a remove mkyouj
tag @a remove mmadn
tag @a remove kaitou
tag @a remove thiok
tag @a remove huta
tag @a remove jemi
tag @a remove yomibito
tag @a remove goosuto
tag @a remove robo
tag @a remove yuki
tag @a remove sli
tag @a remove TNT
tag @a remove dragon
tag @a remove vwo
tag @a remove vde
tag @a remove kodai
tag @a remove mitam
tag @a remove baldi
tag @a remove 2ndok
tag @a remove roleok
tag @a remove notrobo
tag @a remove bomb
tag @a remove mbomb
tag @a remove itemok
tag @a remove rsok
tag @a remove kok
tag @a remove kob
tag @a remove tonak
tag @a remove santa
tag @a remove santa_no
tag @a remove santa_ok

#チーム
team modify 21_white nametagVisibility never
team modify 21_white color reset
team modify 21_black nametagVisibility never
team modify 21_black color reset
team modify 21_kaitou nametagVisibility never
team modify 21_madman nametagVisibility never
team modify 21_madman color reset

#エンティティ
execute as @e[type=minecraft:slime] run data merge entity @s {Size:0}
kill @e[type=minecraft:villager]
kill @e[type=minecraft:shulker]
kill @e[type=minecraft:allay]
kill @e[type=minecraft:item]
kill @e[type=minecraft:ender_dragon]
kill @e[type=#minecraft:undead]
kill @e[type=#minecraft:raiders]
kill @e[type=minecraft:endermite]
kill @e[type=minecraft:breeze]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:block_display]
kill @e[type=minecraft:creeper]
kill @e[type=minecraft:armor_stand,tag=isw]
kill @e[type=minecraft:ominous_item_spawner]
kill @e[type=minecraft:guardian]
kill @e[type=minecraft:creaking]
execute as @a run attribute @s minecraft:scale base set 1.0
execute as @a run attribute @s minecraft:gravity base set 0.08
execute as @a run attribute @s minecraft:step_height base set 0.6
execute as @a run attribute @s minecraft:jump_strength base set 0.42
execute as @a run attribute @s minecraft:movement_speed base set 0.1
function wolf2xx:hri_endgame

#
clear @a
effect clear @a
gamemode adventure @a[tag=!kans,gamemode=!creative]
team leave @a

#デバッグ用
setblock 64 -64 64 minecraft:chain_command_block
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run setblock ~ ~-1 ~ minecraft:gray_shulker_box[facing=down]{Items:[{Slot:0b,components:{"minecraft:bundle_contents":[{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":1,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhYmYzOGQ0ZDdjN2Y1MWY3ZTJkNDA3ZGU4NmY4YWRjZDMxOTJjMTgxOTYzZWEyNmQxODNjMWQ5Yjc3Y2YifX19"}]}},count:1,id:"minecraft:player_head"},{components:{"minecraft:max_stack_size":66,"minecraft:profile":{id:[I;1156846506,-995730376,-1603636680,-1033991050],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmIxZWM3ZGM3NTMwNjFjYTE3NDQyNGVhNDVjZjk0OTBiMzljZDVkY2NhNDc3ZDEzOGE2MDNlNmJlNzU1ZWM3MiJ9fX0="}]}},count:1,id:"minecraft:player_head"},{count:1,id:"minecraft:firework_star"}]},count:1,id:"minecraft:white_bundle"}]}


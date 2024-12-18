###1次役職
#<今回排出される特殊役職>
tellraw @a {"text":"< \u4eca\u56de\u6392\u51fa\u3055\u308c\u308b\u7279\u6b8a\u5f79\u8077 >"}
#預言者
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:light_blue_wool run tag @r[tag=!kans,tag=!roleok,tag=!robo] add yogen
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:light_blue_wool run tellraw @a {"text":"\u30fb\u9810\u8a00\u8005","color":"aqua"}
tag @a[tag=yogen] add roleok
tag @a[tag=yogen] add notrobo
#霊媒師
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:yellow_wool run tag @r[tag=!kans,tag=!roleok,tag=!robo] add reibai
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:yellow_wool run tellraw @a {"text":"\u30fb\u970a\u5a92\u5e2b","color":"yellow"}
tag @a[tag=reibai] add roleok
tag @a[tag=reibai] add notrobo
#騎士
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:gray_wool run tag @r[tag=!kans,tag=!roleok,tag=!robo] add kishi
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:gray_wool run tellraw @a {"text":"\u30fb\u9a0e\u58eb","color":"gold"}
tag @a[tag=kishi] add roleok
tag @a[tag=kishi] add notrobo
#探偵
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:brown_wool run tag @r[tag=!kans,tag=!roleok,tag=!robo] add tantei
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:brown_wool run tellraw @a {"text":"\u30fb\u63a2\u5075","color":"#CA8200"}
tag @a[tag=tantei] add roleok
tag @a[tag=tantei] add notrobo
#カウンセラー
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:cyan_wool run tag @r[tag=!kans,tag=!roleok,tag=!robo] add kaun
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:cyan_wool run tellraw @a {"text":"\u30fb\u30ab\u30a6\u30f3\u30bb\u30e9\u30fc","color":"dark_aqua"}
tag @a[tag=kaun] add roleok
tag @a[tag=kaun] add notrobo
#狂人
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:purple_wool run tag @r[tag=!kans,tag=!roleok] add kyouj
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:purple_wool run tellraw @a {"text":"\u30fb\u72c2\u4eba","color":"light_purple"}
tag @a[tag=kyouj] add roleok
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:purple_concrete run tag @r[tag=!kans,tag=!roleok] add kyouj
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:purple_concrete run tellraw @a {"text":"\u30fb\u72c2\u4eba","color":"light_purple"}
tag @a[tag=kyouj] add roleok
#怪盗(バグにより封印中)
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:blue_wool run tag @r[tag=!kans,tag=!roleok,tag=!robo] add kaitou
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:blue_wool run tellraw @a {"text":"\u30fb\u602a\u76d7","color":"blue"}
tag @a[tag=kaitou] add roleok
tag @a[tag=kaitou] add notrobo
#電波人間
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:orange_wool run tag @r[tag=!kans,tag=!roleok] add denpa
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:orange_wool run tag @r[tag=!kans,tag=!denpa] add yomibito
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:orange_wool run tellraw @a {"text":"\u30fb\u96fb\u6ce2\u4eba\u9593","color":"gold"}
tag @a[tag=denpa] add roleok
#スノーマン
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:white_wool run tag @r[tag=!kans,tag=!roleok] add snow
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:white_wool run tag @r[tag=!kans,tag=!snow] add yuki
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:white_wool run tellraw @a {"text":"\u30fb\u30b9\u30ce\u30fc\u30de\u30f3","color":"#B1B1B1"}
tag @a[tag=snow] add roleok
#厄神
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:green_wool run tag @r[tag=!kans,tag=!roleok] add yaku
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:green_wool run tellraw @a {"text":"\u30fb\u5384\u795e","color":"dark_green"}
tag @a[tag=yaku] add roleok
#パティシエ
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:magenta_wool run tag @r[tag=!kans,tag=!roleok] add pate
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:magenta_wool run tellraw @a {"text":"\u30fb\u30d1\u30c6\u30a3\u30b7\u30a8","color":"#FF9BFF"}
tag @a[tag=pate] add roleok
#マッドナース
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:red_wool run tag @r[tag=!kans,tag=!roleok,tag=!robo] add madn
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:red_wool run tellraw @a {"text":"\u30fb\u30de\u30c3\u30c9\u30ca\u30fc\u30b9","color":"dark_red"}
tag @a[tag=madn] add roleok
tag @a[tag=madn] add notrobo
#オオカミ少年
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:lime_wool run tag @r[tag=!kans,tag=!roleok] add wmura
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:lime_wool run tellraw @a {"text":"\u30fb\u30aa\u30aa\u30ab\u30df\u5c11\u5e74","color":"green"}
tag @a[tag=wmura] add roleok
#コスプレイヤー
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:pink_wool run tag @r[tag=!kans,tag=!roleok] add kosp
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:pink_wool run tellraw @a {"text":"\u30fb\u30b3\u30b9\u30d7\u30ec\u30a4\u30e4\u30fc","color":"#FF6DEA"}
tag @a[tag=kosp] add roleok
#双子
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:black_wool run tag @r[tag=!kans,tag=!roleok] add huta
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:black_wool run tag @r[tag=!kans,tag=!huta] add jemi
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:black_wool run tellraw @a {"text":"\u30fb\u53cc\u5b50","color":"gold"}
tag @a[tag=huta] add roleok
###
#####2次役職
#<今回排出される2次役職>
tellraw @a {"text":"< \u4eca\u56de\u6392\u51fa\u3055\u308c\u308b2\u6b21\u5f79\u8077 >"}
#黄泉人
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:yellow_glazed_terracotta run tag @r[tag=!kans,tag=!2ndok] add yomibito
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:yellow_glazed_terracotta run tellraw @a {"text":"\u30fb\u9ec4\u6cc9\u4eba","color":"gold"}
tag @a[tag=yomibito] add 2ndok
#ゴースト
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:gray_glazed_terracotta run tag @r[tag=!kans,tag=!2ndok] add goosuto
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:gray_glazed_terracotta run tellraw @a {"text":"\u30fb\u30b4\u30fc\u30b9\u30c8","color":"dark_gray"}
tag @a[tag=goosuto] add 2ndok
#壊れたロボット
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:lime_glazed_terracotta run tag @r[tag=!kans,tag=!notrobo] add robo
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:lime_glazed_terracotta run tellraw @a {"text":"\u30fb\u58ca\u308c\u305f\u30ed\u30dc\u30c3\u30c8","color":"#B8FFC2"}
#スライム
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:green_glazed_terracotta run tag @r[tag=!kans] add sli
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:green_glazed_terracotta run tellraw @a {"text":"\u30fb\u30b9\u30e9\u30a4\u30e0","color":"#64FF96"}
#ボマー
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:black_glazed_terracotta run tag @r[tag=!kans] add TNT
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:black_glazed_terracotta run tellraw @a {"text":"\u30fb\u30dc\u30de\u30fc","color":"gray"}
#ドラゴンテイマー
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:purple_glazed_terracotta run tag @r[tag=!kans] add dragon
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:purple_glazed_terracotta run tellraw @a {"text":"\u30fb\u30c9\u30e9\u30b4\u30f3\u30c6\u30a4\u30de\u30fc","color":"light_purple"}

#ウイルス狼(処理を4_simroleに分割済)
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:red_glazed_terracotta run tellraw @a {"text":"\u30fb\u30a6\u30a4\u30eb\u30b9\u72fc","color":"red"}

#古代人(処理を4_simroleに分割済)
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:white_glazed_terracotta run tellraw @a {"text":"\u30fb\u53e4\u4ee3\u4eba","color":"dark_green"}

#生御霊
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:blue_glazed_terracotta run tag @r[tag=!kans] add mitam
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:blue_glazed_terracotta run tellraw @a {"text":"\u30fb\u751f\u5fa1\u970a","color":"blue"}

#バルディ
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:lime_concrete run tag @r[tag=!kans] add baldi
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:lime_concrete run tellraw @a {"text":"\u30fb\u30d0\u30eb\u30c7\u30a3","color":"green"}

#トナカイ
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:blue_concrete run tag @r[tag=!kans] add tonak
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:blue_concrete run tellraw @a ["",{"text":"\u30fb\u30b5\u30f3\u30bf&"},{"text":"\u30c8\u30ca\u30ab\u30a4","color":"blue"}]

#####村人、人狼を排出
function wolf2xx:4_simrole


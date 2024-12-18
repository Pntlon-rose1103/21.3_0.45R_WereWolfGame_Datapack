execute if score 21._.GM 21_wolfsetc matches 1 run tag @r[tag=!kans,tag=!roleok,limit=1] add wolf
execute if score 21._.GM 21_wolfsetc matches 2 run tag @r[tag=!kans,tag=!roleok,limit=2] add wolf
execute if score 21._.GM 21_wolfsetc matches 3 run tag @r[tag=!kans,tag=!roleok,limit=3] add wolf
execute if score 21._.GM 21_wolfsetc matches 4 run tag @r[tag=!kans,tag=!roleok,limit=4] add wolf
execute if score 21._.GM 21_wolfsetc > 21._.GM 21_wolfdef run tag @r[tag=!kans,tag=!roleok,limit=2] add wolf
tag @a[tag=!kans,tag=!roleok,tag=!wolf] add mura

#白テラコッタ検知＞＞古代人
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:white_glazed_terracotta run tag @r[tag=!kans,tag=mura] add kodai

#赤テラコッタ検知＞＞ウイルス狼
execute as @e[name=rolelist0730,type=minecraft:armor_stand] at @s run execute if items block ~ ~ ~ container.* minecraft:red_glazed_terracotta run tag @r[tag=!kans,tag=wolf] add vwo

function wolf2xx:000-allsetting
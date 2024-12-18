#暗視ゴーグル
execute as @a at @s if items entity @s armor.head minecraft:carved_pumpkin run effect give @s minecraft:speed 1 5
execute as @a at @s if items entity @s armor.head minecraft:carved_pumpkin run effect give @s minecraft:jump_boost 1 2
execute as @a at @s if items entity @s armor.head minecraft:carved_pumpkin run effect give @s minecraft:fire_resistance 1 0

#サドル消す
clear @a minecraft:saddle

#カウンセラー自分打ち死亡処理
execute as @a[tag=kaun,team=21_nblack] run scoreboard players add @s 21_de_kaun 1
execute as @a[tag=kaun,team=21_nblack,gamemode=adventure,scores={21_de_kaun=3..,21_death=..100}] run kill @s

#0.36で追加レガシーアイテム(古代人アイテム)
scoreboard players add @a[scores={21_K_sh=1..}] 21_K_sh 1
scoreboard players set @a[scores={21_K_sh=120..}] 21_K_sh 0
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,0f,0f]}}
execute as @a[scores={21_K_sh=4..}] at @s run execute as @e[tag=isw] at @s run tp ^ ^ ^-0.96
execute as @a[scores={21_K_sh=119..}] run kill @e[tag=isw]
execute as @e[tag=isw] at @s run damage @e[limit=1,scores={21_K_sh=0},distance=..2] 66 minecraft:player_attack
item replace entity @e[tag=isw] armor.head with minecraft:nether_star
execute as @e[tag=isw,limit=1,sort=random] at @s run particle minecraft:sweep_attack ^ ^1.5 ^ 0.1 0.1 0.1 0.0001 1 force @a
kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]
scoreboard players set @e[type=minecraft:creeper] 21_K_sh 0
scoreboard players set @e[type=minecraft:arrow] 21_K_sh 0
scoreboard players set @e[type=minecraft:trident] 21_K_sh 0
scoreboard players set @e[type=minecraft:firework_rocket] 21_K_sh 0
execute as @a[scores={21_K_sh=3}] at @s run tp @e[tag=isw] ^ ^ ^0.21 facing entity @s
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,90f,0f]}}
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,180f,0f]}}
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,270f,0f]}}
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,45f,0f]}}
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,135f,0f]}}
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,225f,0f]}}
execute as @a[scores={21_K_sh=2}] at @s run summon armor_stand ^ ^ ^-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["isw"],Pose:{Head:[90f,315f,0f]}}
execute as @e[tag=isw] at @s run playsound minecraft:entity.allay.item_taken player @a ~ ~ ~ 0.4 2
execute as @e[tag=isw] at @s run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.1 1

#0.20から追加されたタイマー
scoreboard players add 21._.GM 21_a 1
scoreboard players set 21._.GM 21_b 20
scoreboard players operation 21._.GM 21_c = 21._.GM 21_a
scoreboard players operation 21._.GM 21_c /= 21._.GM 21_b
title @a actionbar {"score":{"name":"21._.GM","objective":"21_c"},"bold":true}


#タイマーによるボーダー制御(未実装につき、ご迷惑をお掛けします。)

execute store result score 21._.GM 21_worldb run worldborder get
#execute if score 21._.GM 21_c matches 1 run function wolf2xx:worldborder_set with storage minecraft:0size size
#function wolf2xx:worldborder_start with storage minecraft:1time time,size,ltime

#虹変化
function wolf2xx:rainbow

#様々な能力
function wolf2xx:use_other_role

#探偵能力
function wolf2xx:use_tantei

#役職ターゲット
function wolf2xx:use_role

#クラフト系
execute as @a at @s if items entity @s weapon.mainhand minecraft:enchanted_book[minecraft:custom_name=KAITOU_OK] run item replace entity @s weapon.mainhand with minecraft:enchanted_book[minecraft:consumable={},food={nutrition:20,saturation:20,can_always_eat:true,eat_seconds:1.6f},minecraft:custom_name='{"extra":[{"bold":false,"color":"aqua","italic":false,"text":"AB BOOK"}],"text":""}']
execute as @a at @s if items entity @s weapon.offhand minecraft:enchanted_book[minecraft:custom_name=KAITOU_OK] run item replace entity @s weapon.offhand with minecraft:enchanted_book[minecraft:consumable={},food={nutrition:20,saturation:20,can_always_eat:true,eat_seconds:1.6f},minecraft:custom_name='{"extra":[{"bold":false,"color":"aqua","italic":false,"text":"AB BOOK"}],"text":""}']

##パティシエ

#材料配布
execute if score 21._.GM 21_a matches 2400 run give @a[gamemode=adventure,tag=pate] minecraft:wheat
execute if score 21._.GM 21_a matches 4800 run give @a[gamemode=adventure,tag=pate] minecraft:sugar
execute if score 21._.GM 21_a matches 7200 run give @a[gamemode=adventure,tag=pate] minecraft:powder_snow_bucket
execute if score 21._.GM 21_a matches 9600 run give @a[gamemode=adventure,tag=pate] minecraft:rabbit_spawn_egg

#ケーキ可食可
execute as @a at @s if items entity @s weapon.mainhand minecraft:cake run item replace entity @s weapon.mainhand with minecraft:cake[minecraft:consumable={},food={nutrition:20,saturation:20,can_always_eat:true,eat_seconds:16.0f},minecraft:custom_name='{"extra":[{"bold":false,"color":"aqua","italic":false,"text":"SUPER CAKE"}],"text":""}']
execute as @a at @s if items entity @s weapon.offhand minecraft:cake run item replace entity @s weapon.offhand with minecraft:cake[minecraft:consumable={},food={nutrition:20,saturation:20,can_always_eat:true,eat_seconds:16.0f},minecraft:custom_name='{"extra":[{"bold":false,"color":"aqua","italic":false,"text":"SUPER CAKE"}],"text":""}']

#ケーキ美食後
scoreboard players add @a[scores={21_cake=1..5}] 21_cake 1
execute as @a[scores={21_cake=3}] run scoreboard players add 21._.GM 21_undeath 1
execute as @a[scores={21_cake=3}] run title @s title {"text":"\u970a\u754c\u3078\u3088\u3046\u3053\u305d\uff01\uff01","color":"gold"}
execute as @a[scores={21_cake=3}] run title @s subtitle {"text":"\u203b\u30de\u30a4\u30af\u3092\u30df\u30e5\u30fc\u30c8\u306b\u3057\u3066\u304f\u3060\u3055\u3044","color":"dark_green"}
execute as @a[scores={21_cake=3}] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1 1
execute as @a[scores={21_cake=4}] run scoreboard players remove 21._.GM 21_whi_a 1
execute as @a[scores={21_cake=4}] run gamemode spectator @s

#ケーキデバフ
execute as @a if items entity @s weapon.* minecraft:cake run effect give @s minecraft:blindness 3 1

#死亡(黄泉1回目)
scoreboard players add @a[scores={21_death=95..98}] 21_death 1
execute as @a[scores={21_death=96}] at @s if entity @s[team=21_black] run loot spawn ~ ~ ~ loot wolf2xx:blad
execute as @a[scores={21_death=96}] at @s if entity @s[team=!21_black,team=!21_nblack] run loot spawn ~ ~ ~ loot wolf2xx:whid
execute as @a[scores={21_death=96}] at @s if entity @s[team=21_nblack] run loot spawn ~ ~ ~ loot wolf2xx:blad
execute as @a[scores={21_death=96}] at @s if entity @s run execute as @s at @s run summon minecraft:villager ~ ~ ~ {Silent:1}
item replace entity @a[scores={21_death=97}] hotbar.0 with minecraft:bow[minecraft:enchantments={levels:{'minecraft:power':255,'minecraft:infinity':1,'minecraft:vanishing_curse':1}}]
item replace entity @a[scores={21_death=97}] hotbar.1 with minecraft:arrow[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}}]
item replace entity @a[scores={21_death=97}] hotbar.2 with minecraft:cooked_beef[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}},minecraft:can_break={blocks:'minecraft:infested_deepslate'}] 8
item replace entity @a[scores={21_death=97}] hotbar.3 with minecraft:enchanted_book[minecraft:consumable={},food={nutrition:20,saturation:20,can_always_eat:true,eat_seconds:1.6f}]
item replace entity @a[scores={21_death=97}] hotbar.4 with minecraft:glow_ink_sac 2
execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run execute as @s at @s run item replace entity @a[scores={21_death=97}] hotbar.5 from block ~ ~ ~ container.26
tellraw @a[scores={21_death=97}] {"text":"\u3042\u306a\u305f\u306f\u9ec4\u6cc9\u4eba\u3067\u3059\u3002\u5fa9\u6d3b\u3057\u307e\u3057\u305f\u3002","color":"gold"}
execute as @a[scores={21_death=97}] at @s if entity @s run execute as @s at @s run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:redstone_wire"}}
execute as @a[scores={21_death=98}] at @s if entity @s run execute as @s at @s run tp @s ~ 400 ~

#死亡(黄泉以外&黄泉2回目)
scoreboard players add @a[scores={21_death=100..150}] 21_death 1
gamemode spectator @a[scores={21_death=101}]
execute as @a[scores={21_death=101}] at @s if entity @s[team=21_black] run loot spawn ~ ~ ~ loot wolf2xx:blad
execute as @a[scores={21_death=101}] at @s if entity @s[team=!21_black,team=!21_nblack] run loot spawn ~ ~ ~ loot wolf2xx:whid
execute as @a[scores={21_death=101}] at @s if entity @s[team=21_nblack] run loot spawn ~ ~ ~ loot wolf2xx:blad
execute as @a[scores={21_death=101}] at @s if entity @s run execute as @s at @s run summon minecraft:villager ~ ~ ~ {Silent:1}
execute as @a[scores={21_death=101}] at @s if entity @s run execute as @s at @s run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:redstone_wire"}}
execute as @a[scores={21_death=102}] at @s if entity @s[team=21_white] run execute as @s at @s run scoreboard players remove 21._.GM 21_whi_a 1
execute as @a[scores={21_death=102}] at @s if entity @s[team=21_black] run execute as @s at @s run scoreboard players remove 21._.GM 21_bla_a 1
execute as @a[scores={21_death=102}] at @s if entity @s[team=21_nwhite] run execute as @s at @s run scoreboard players remove 21._.GM 21_whi_a 1
execute as @a[scores={21_death=102}] at @s if entity @s[team=21_nblack] run execute as @s at @s run scoreboard players remove 21._.GM 21_bla_a 1
execute as @a[scores={21_death=103}] at @s if entity @s run execute as @s at @s run tp @s ~ ~400 ~

#死亡(ゴースト)
execute as @a[scores={21_death=101},tag=goosuto] at @s if entity @s run summon minecraft:allay ~ ~ ~ {HandItems: [{components: {"minecraft:consumable": {}}, count: 1, id: "minecraft:trial_spawner"}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], Fire: 0s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 1b, attributes: [{id: "minecraft:movement_speed", base: 0.10000000149011612d}], HurtTime: 0s, CanDuplicate: 1b, Inventory: []}
execute as @a[scores={21_death=101..},tag=goosuto] at @s if entity @s run execute as @s at @s run tp @e[type=minecraft:allay] ^ ^-0.00005 ^ facing entity @a[scores={21_death=101..},tag=goosuto,limit=1]
execute as @a[scores={21_death=101},tag=goosuto] at @s if entity @s run tellraw @s {"text":"\u3042\u306a\u305f\u306f\u30b4\u30fc\u30b9\u30c8\u3067\u3059\u3002\u30dc\u30fc\u30ca\u30b9\u30a2\u30a4\u30c6\u30e0\u3092\u4ed6\u4eba\u306b\u6e21\u305b\u307e\u3059\u3002","color":"dark_gray"}
effect give @e[type=minecraft:allay] minecraft:resistance 99999 9 true

#死亡(ボマー)
execute as @a[scores={21_death=101},tag=TNT] at @s if entity @s run loot spawn ~ ~1 ~ loot minecraft:blocks/heavy_core
execute as @a at @s if entity @s run execute as @s at @s if items entity @s inventory.* minecraft:heavy_core run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 9 9 force @a
execute as @a at @s if entity @s run execute as @s at @s if items entity @s hotbar.* minecraft:heavy_core run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 9 9 force @a
execute as @a at @s if entity @s run execute as @s at @s if items entity @s inventory.* minecraft:heavy_core run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0.75
execute as @a at @s if entity @s run execute as @s at @s if items entity @s hotbar.* minecraft:heavy_core run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0.75
execute as @a at @s if entity @s run execute as @s at @s if items entity @s inventory.* minecraft:heavy_core run kill @s[gamemode=!spectator,gamemode=!creative]
execute as @a at @s if entity @s run execute as @s at @s if items entity @s hotbar.* minecraft:heavy_core run kill @s[gamemode=!spectator,gamemode=!creative]

#死亡(ドラゴンテイマー)
#0.15にてドラゴンランチャー追加により削除されました。

#死亡(ウイルス狼)
execute as @a[scores={21_death=101},tag=vwo] at @s if entity @s run tag @r[team=21_white,gamemode=!spectator,gamemode=!creative] add vde
execute as @a[scores={21_death=101},tag=vwo] at @s if entity @s run tag @r[team=21_black,gamemode=!spectator,gamemode=!creative] add vde
execute as @a[scores={21_death=101},tag=vwo] at @s if entity @s run kill @a[tag=vde]
execute as @a[scores={21_death=101},tag=vwo] at @s if entity @s run tellraw @a {"text":"\u30a6\u30a4\u30eb\u30b9\u72fc\u304c\u6b7b\u4ea1\u3057\u305f\u306e\u3067\u30012\u4eba\u306e\u751f\u8d04\u304c\u6b7b\u4ea1\u3057\u307e\u3057\u305f\u3002","color":"dark_red"}
execute as @a[scores={21_death=101},tag=vde] at @s if entity @s run particle minecraft:sonic_boom ~ ~ ~ 0.25 0.25 0.25 1 1 force @a
execute as @a[scores={21_death=101},tag=vde] at @s if entity @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.66

#死亡(スノーマン)
execute as @a[scores={21_death=101},tag=snow] at @s if entity @s run kill @a[tag=yuki]
execute as @a[scores={21_death=101},tag=snow] at @s if entity @s run tellraw @a[tag=yuki] {"text":"\u3042\u306a\u305f\u306f\u751f\u8d04\u3067\u3059\u3002\u30b9\u30ce\u30fc\u30de\u30f3\u304c\u6b7b\u4ea1\u3057\u305f\u305f\u3081\u3001\u9053\u9023\u308c\u306b\u3055\u308c\u307e\u3057\u305f\u3002","color":"#B1B1B1"}
execute as @a[scores={21_death=101},tag=yuki] at @s if entity @s run particle minecraft:sonic_boom ~ ~ ~ 0.25 0.25 0.25 1 1 force @a
execute as @a[scores={21_death=101},tag=yuki] at @s if entity @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.66

#壊ロボ
effect give @a[tag=robo] minecraft:resistance infinite 3 true

#古代人能力(遺伝子)
execute as @a[tag=kodai,scores={21_death=101}] at @s if entity @s run execute as @s at @s run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:redstone_block"},Tags:["kodar"]}
execute as @e[type=minecraft:block_display,tag=kodar] at @s run execute as @s[tag=kodar] at @s positioned ~0.5 ~ ~0.5 run effect give @a[gamemode=adventure,distance=..0.75] minecraft:slowness 3 8
execute as @e[type=minecraft:block_display,tag=kodar] at @s run execute as @s[tag=kodar] at @s positioned ~0.5 ~ ~0.5 run effect give @a[gamemode=adventure,distance=..0.75] minecraft:darkness 3 8
execute as @e[type=minecraft:block_display,tag=kodar] at @s run execute as @s[tag=kodar] at @s positioned ~0.5 ~ ~0.5 run effect give @a[gamemode=adventure,distance=..0.75] minecraft:blindness 3 8
execute as @e[type=minecraft:block_display,tag=kodar] at @s run execute as @s[tag=kodar] at @s positioned ~0.5 ~ ~0.5 run effect give @a[gamemode=adventure,distance=..0.75] minecraft:wind_charged infinite 8
execute as @e[type=minecraft:block_display,tag=kodar] at @s run execute as @s[tag=kodar] at @s positioned ~0.5 ~ ~0.5 run attribute @r[gamemode=adventure,distance=..0.75] minecraft:scale base set 0.66
execute as @e[type=minecraft:block_display,tag=kodar] at @s run execute as @s[tag=kodar] at @s positioned ~0.5 ~ ~0.5 run tellraw @a[gamemode=adventure,distance=..0.75] ["",{"text":"\u53e4\u4ee3\u306e\u907a\u4f1d\u5b50","color":"dark_green"},{"text":"\u3092\u5f15\u304d\u7d99\u3044\u3067\u3001"},{"text":"\u5c0f\u4eba","color":"gold"},{"text":"\u306b\u306a\u3063\u305f"}]
execute as @e[type=minecraft:block_display,tag=kodar] at @s run execute as @s[tag=kodar] at @s positioned ~0.5 ~ ~0.5 run tag @a[gamemode=adventure,distance=..0.75] add kob
execute as @e[tag=kob] at @s run kill @e[nbt={block_state:{Name:"minecraft:redstone_block"},Tags:["kodar"]}]

#死亡(御霊)
execute as @a[scores={21_death=101},tag=mitam] at @s if entity @s run difficulty hard
execute as @a[scores={21_death=101},tag=mitam] at @s if entity @s run tellraw @a[tag=mitam] {"text":"\u3042\u306a\u305f\u306f\u5fa1\u970a\u3067\u3059\u3002\u6b7b\u4ea1\u3057\u305f\u305f\u3081\u3001\u304a\u5316\u3051\u3092\u53ec\u559a\u3057\u307e\u3057\u305f\u3002","color":"blue"}
execute as @a[scores={21_death=101},tag=mitam] at @s if entity @s run summon minecraft:wither_skeleton
execute as @a[scores={21_death=101},tag=mitam] at @s if entity @s run summon minecraft:wither_skeleton
execute as @a[scores={21_death=101},tag=mitam] at @s if entity @s run summon minecraft:wither_skeleton
execute as @a[scores={21_death=102},tag=mitam] at @s if entity @s run execute as @e[type=wither_skeleton] at @s if entity @s run item replace entity @e[type=wither_skeleton] armor.head with minecraft:leather_helmet[unbreakable={},dyed_color={"rgb":0},trim={"material":"netherite","pattern":"silence"},enchantments={levels:{thorns:200}}]
execute as @a[scores={21_death=102},tag=mitam] at @s if entity @s run execute as @e[type=wither_skeleton] at @s if entity @s run item replace entity @e[type=wither_skeleton] armor.chest with minecraft:leather_chestplate[unbreakable={},dyed_color={"rgb":0},trim={"material":"netherite","pattern":"silence"},enchantments={levels:{thorns:200}}]
execute as @a[scores={21_death=102},tag=mitam] at @s if entity @s run execute as @e[type=wither_skeleton] at @s if entity @s run item replace entity @e[type=wither_skeleton] armor.legs with minecraft:leather_leggings[unbreakable={},dyed_color={"rgb":0},trim={"material":"netherite","pattern":"silence"},enchantments={levels:{thorns:200}}]
execute as @a[scores={21_death=102},tag=mitam] at @s if entity @s run execute as @e[type=wither_skeleton] at @s if entity @s run item replace entity @e[type=wither_skeleton] armor.feet with minecraft:leather_boots[unbreakable={},dyed_color={"rgb":0},trim={"material":"netherite","pattern":"silence"},enchantments={levels:{thorns:200}}]
execute as @e[type=wither_skeleton] at @s if entity @s run attribute @s minecraft:scale base set 0.75
execute as @e[type=wither_skeleton] at @s if entity @s run attribute @s minecraft:movement_speed base set 0.32
execute as @e[type=wither_skeleton] at @s if entity @s run attribute @s minecraft:knockback_resistance base set 99999.99
execute as @a[scores={21_death=102},tag=mitam] at @s if entity @s run execute as @e[type=wither_skeleton] at @s if entity @s run execute as @e[type=minecraft:wither_skeleton] run data merge entity @s {HandItems: [{count: 1, id: "minecraft:bow"}, {count: 63, id: "minecraft:totem_of_undying"}]}
execute as @e[type=wither_skeleton] at @s if entity @a[gamemode=adventure,distance=6.5..7] if items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with minecraft:netherite_sword
execute as @e[type=wither_skeleton] at @s if entity @a[gamemode=adventure,distance=7.1..7.6] if items entity @s weapon.mainhand netherite_sword run item replace entity @s weapon.mainhand with bow

#スライム
execute as @a[scores={21_death=96},tag=sli] at @s if entity @s run summon minecraft:slime ~ ~ ~ {Size:3}
execute as @a[scores={21_death=101},tag=sli] at @s if entity @s run summon minecraft:slime ~ ~ ~ {Size:3}
execute as @e[type=minecraft:slime] run attribute @s minecraft:movement_speed base set 18.0
execute as @e[type=minecraft:slime] run attribute @s minecraft:gravity base set 0.0
effect give @a[tag=sli] minecraft:oozing infinite 9 true
effect give @e[type=minecraft:slime] minecraft:wind_charged infinite 9 true

#厄神
scoreboard players add @a[scores={21_shy=1..}] 21_shy 1
scoreboard players set @a[scores={21_shy=3..}] 21_shy 0
execute as @a[tag=yaku] at @s positioned ^-0.5 ^ ^-0.5 if score @s 21_shy matches 0 unless items entity @s weapon.* minecraft:arrow unless entity @s[gamemode=!spectator,gamemode=!creative] run tp @e[type=minecraft:block_display,nbt={block_state:{Name:"minecraft:crying_obsidian"}}] ^ ^-0.5 ^ facing entity @a[tag=yaku,limit=1] eyes
execute as @a at @s run execute as @s at @s if entity @e[distance=..0.8,type=minecraft:block_display,nbt={block_state:{Name:"minecraft:crying_obsidian"}}] run damage @s 12 minecraft:mob_attack at ^ ^ ^1
execute as @a[tag=yaku] at @s run execute as @s at @s unless entity @e[type=minecraft:block_display,nbt={block_state:{Name:"minecraft:crying_obsidian"}}] run summon minecraft:block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:crying_obsidian"}}

#マッドナース(死亡時爆発能力)
execute as @a[tag=madn] at @s run execute as @s at @s run tag @a[distance=..5] add bomb
execute as @a[tag=bomb] at @s run execute as @s[gamemode=adventure,tag=!madn] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.25 0.25 0.25 0.005 1 force @a[gamemode=adventure,tag=madn]
execute as @a[tag=mmadn] at @s run execute as @s at @s run tag @a[distance=..5] add mbomb
execute as @a[tag=mbomb] at @s run execute as @s[gamemode=adventure,tag=!mmadn] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.25 0.25 0.25 0.005 1 force @a[gamemode=adventure,tag=mmadn]
execute as @a[scores={21_death=101},tag=madn] at @s if entity @s run execute as @a[tag=bomb] at @s run execute as @s at @s run particle minecraft:explosion_emitter ~ ~1 ~ 0.25 0.25 0.25 1 1 force @a
execute as @a[scores={21_death=101},tag=madn] at @s if entity @s run execute as @a[tag=bomb] at @s run execute as @s at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 0.75
execute as @a[scores={21_death=101},tag=madn] at @s if entity @s run execute as @a[tag=bomb] at @s run execute as @s at @s run damage @s 16 minecraft:explosion by @r[tag=madn]

#マッドナース(ギロチン能力)
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stonecutter"}}] at @s run summon minecraft:block_display ~-0.5 ~-0.5624 ~-0.5 {block_state:{Name:"minecraft:stonecutter"},Tags:["stonec"]}
kill @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:stonecutter"}}]
execute as @e[type=minecraft:block_display,tag=stonec] at @s run execute as @s[tag=stonec] at @s positioned ~0.5 ~ ~0.5 run effect give @a[distance=..0.75] minecraft:slowness 1 3

execute as @e[type=minecraft:block_display,tag=stonec] at @s run execute as @s[tag=stonec] at @s positioned ~0.5 ~ ~0.5 run effect give @a[tag=robo,distance=..0.75] minecraft:instant_damage 1 108

execute as @e[type=minecraft:block_display,tag=stonec] at @s run execute as @s[tag=stonec] at @s positioned ~0.5 ~ ~0.5 run effect give @a[distance=..0.75] minecraft:instant_damage 1 0

#バルディ
execute as @a if items entity @s weapon.mainhand minecraft:breeze_rod if score 21._.GM 21_whi_a matches 5.. run effect give @s minecraft:speed 1 0 true
execute as @a if items entity @s weapon.mainhand minecraft:breeze_rod if score 21._.GM 21_whi_a matches 4 run effect give @s minecraft:speed 1 1 true
execute as @a if items entity @s weapon.mainhand minecraft:breeze_rod if score 21._.GM 21_whi_a matches 3 run effect give @s minecraft:speed 1 2 true
execute as @a if items entity @s weapon.mainhand minecraft:breeze_rod if score 21._.GM 21_whi_a matches 2 run effect give @s minecraft:speed 1 3 true
execute as @a if items entity @s weapon.mainhand minecraft:breeze_rod if score 21._.GM 21_whi_a matches 1 run effect give @s minecraft:speed 1 4 true
execute as @a if items entity @s weapon.mainhand minecraft:breeze_rod if entity @s[tag=!baldi] run item replace entity @s weapon.mainhand with minecraft:blaze_rod[minecraft:enchantments={levels:{'minecraft:knockback':25}}]
execute as @a if items entity @s weapon.mainhand minecraft:blaze_rod if entity @s[tag=baldi] run item replace entity @s weapon.mainhand with minecraft:breeze_rod[minecraft:enchantments={levels:{'minecraft:sharpness':255}}]


#双子
execute as @a[tag=jemi] at @s run execute as @s[gamemode=adventure,distance=..5] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.25 0.25 0.25 0.005 1 force @a[gamemode=adventure,tag=huta]

#勝敗判定
execute if score 21._.GM 21_whi_a matches 0 unless score 21._.GM 21_bla_a matches 0 run scoreboard players add 21._.GM 21_end 1
execute if score 21._.GM 21_bla_a matches 0 unless score 21._.GM 21_whi_a matches 0 run scoreboard players add 21._.GM 21_end 1
execute if score 21._.GM 21_whi_a matches 0 if score 21._.GM 21_bla_a matches 0 run scoreboard players add 21._.GM 21_end 1

#終了判定
execute if score 21._.GM 21_end matches 1 if score 21._.GM 21_whi_a matches 0 unless score 21._.GM 21_bla_a matches 0 if score 21._.GM 21_undeath matches 0 run title @a title {"text":"\u4eba\u72fc\u9663\u55b6\u306e\u52dd\u5229","color":"red"}
execute if score 21._.GM 21_end matches 1 if score 21._.GM 21_whi_a matches 0 unless score 21._.GM 21_bla_a matches 0 if score 21._.GM 21_undeath matches 1.. run title @a title {"text":"\u6751\u4eba\u9663\u55b6\u306e\u52dd\u5229","color":"green"}
execute if score 21._.GM 21_end matches 1 if score 21._.GM 21_whi_a matches 0 unless score 21._.GM 21_bla_a matches 0 if score 21._.GM 21_undeath matches 1.. run title @a subtitle {"text":"\u6557\u56e0 : \u30b1\u30fc\u30ad\u8131\u51fa\u6210\u529f","color":"dark_green"}
execute if score 21._.GM 21_end matches 1 if score 21._.GM 21_bla_a matches 0 unless score 21._.GM 21_whi_a matches 0 run title @a title {"text":"\u6751\u4eba\u9663\u55b6\u306e\u52dd\u5229","color":"green"}
execute if score 21._.GM 21_end matches 1 if score 21._.GM 21_whi_a matches 0 if score 21._.GM 21_bla_a matches 0 if score 21._.GM 21_undeath matches 0 run title @a title {"text":"\u5f15\u304d\u5206\u3051","color":"aqua"}
execute if score 21._.GM 21_end matches 1 if score 21._.GM 21_whi_a matches 0 if score 21._.GM 21_bla_a matches 0 if score 21._.GM 21_undeath matches 1.. run title @a title {"text":"\u6751\u4eba\u9663\u55b6\u306e\u52dd\u5229","color":"green"}
execute if score 21._.GM 21_end matches 1 if score 21._.GM 21_whi_a matches 0 if score 21._.GM 21_bla_a matches 0 if score 21._.GM 21_undeath matches 1.. run title @a subtitle {"text":"\u6557\u56e0 : \u30b1\u30fc\u30ad\u8131\u51fa\u6210\u529f","color":"dark_green"}
execute if score 21._.GM 21_end matches 1 run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 0.5 1 1
execute if score 21._.GM 21_end matches 1 run effect give @a minecraft:resistance 30 9 true
execute if score 21._.GM 21_end matches 1 run function wolf2xx:hri_endgame
execute if score 21._.GM 21_end matches 101 run function wolf2xx:5_utiwake
execute if score 21._.GM 21_end matches 102 run clear @a
execute if score 21._.GM 21_end matches 103 run effect clear @a
execute if score 21._.GM 21_end matches 104 run function wolf2xx:6_reset

#村人エンティティkill(白煙)
effect give @e[type=minecraft:villager] minecraft:invisibility 9 0 true
kill @e[type=minecraft:villager]

#クリーキング(試験実装)
effect give @e[type=minecraft:creaking] minecraft:resistance infinite 9 true
effect give @e[type=minecraft:creaking] minecraft:speed infinite 5 true
effect give @e[type=minecraft:creaking] minecraft:strength infinite 3 true
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:creaking_heart"}}] at @s run summon minecraft:block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:creaking_heart"},Tags:["creak"]}
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:creaking_heart"}}] at @s run summon minecraft:creaking ~ ~ ~
kill @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:creaking_heart"}}]

scoreboard players remove @a[scores={21_shy=0,21_sncr=0..}] 21_sncr 1


execute as @a at @s unless entity @e[distance=..0.8,type=minecraft:block_display,tag=creak] run scoreboard players remove @s[scores={21_shy=1..}] 21_sncr 1
execute as @e[type=minecraft:block_display,tag=creak] at @s run execute as @s[tag=creak] at @s positioned ~0.5 ~ ~0.5 if entity @a[distance=..0.8,scores={21_sncr=300..}] run kill @e[type=creaking,sort=nearest,limit=1]
execute as @e[type=minecraft:block_display,tag=creak] at @s run execute as @s[tag=creak] at @s positioned ~0.5 ~ ~0.5 if entity @a[distance=..0.8,scores={21_sncr=300..}] run playsound minecraft:block.creaking_heart.break master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=creak] at @s run execute as @s[tag=creak] at @s positioned ~0.5 ~ ~0.5 if entity @a[distance=..0.8,scores={21_sncr=1..75,21_shy=1..}] run particle minecraft:composter ~ ~ ~ 0.5 0.5 0.5 0.0025 8 force @a
execute as @e[type=minecraft:block_display,tag=creak] at @s run execute as @s[tag=creak] at @s positioned ~0.5 ~ ~0.5 if entity @a[distance=..0.8,scores={21_sncr=76..150,21_shy=1..}] run particle minecraft:wax_on ~ ~ ~ 0.5 0.5 0.5 0.0025 8 force @a
execute as @e[type=minecraft:block_display,tag=creak] at @s run execute as @s[tag=creak] at @s positioned ~0.5 ~ ~0.5 if entity @a[distance=..0.8,scores={21_sncr=151..300,21_shy=1..}] run particle minecraft:damage_indicator ~ ~ ~ 0.5 0.5 0.5 0.0025 2 force @a
execute as @e[type=minecraft:block_display,tag=creak] at @s run execute as @s[tag=creak] at @s positioned ~0.5 ~ ~0.5 if entity @a[distance=..0.8,scores={21_sncr=226..300,21_shy=1..}] run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.0025 4 force @a
execute as @e[type=minecraft:block_display,tag=creak] at @s run execute as @s[tag=creak] at @s positioned ~0.5 ~ ~0.5 if entity @a[distance=..0.8,scores={21_sncr=300..}] run kill @e[type=minecraft:block_display,tag=creak,sort=nearest,limit=1]
execute as @a[scores={21_sncr=300..}] at @s if entity @e[distance=..0.8,type=minecraft:block_display,tag=creak] run scoreboard players set @s 21_sncr 0

###サンタ処理系統
##トナカイ>サンタ任命
execute as @e[type=item,nbt={OnGround:0b,Item:{id:"minecraft:white_shulker_box"}}] at @s unless entity @s[tag=santa] run tag @p[tag=!tonak,gamemode=!creative,gamemode=!spectator] add santa
execute as @e[type=item,nbt={OnGround:0b,Item:{id:"minecraft:white_shulker_box"}}] at @s unless entity @s[tag=santa_no] run tag @p[tag=santa,tag=!tonak,gamemode=!creative,gamemode=!spectator] add santa_no
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_shulker_box"}}] at @s run execute as @e[name=itemlist0730,type=minecraft:armor_stand] at @s run item replace entity @a[tag=santa] inventory.18 from block ~ ~-1 ~ container.0
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_shulker_box"}}] at @s run tellraw @a[tag=santa] ["",{"text":"\u3042\u306a\u305f\u306f\u30b5\u30f3\u30bf\u306b\u4efb\u547d\u3055\u308c\u307e\u3057\u305f\u3002\n\u3042\u306a\u305f\u306f"},{"text":"\u77e2","color":"gold"},{"text":"\u3092"},{"text":"\u30c8\u30ca\u30ab\u30a4","color":"blue"},{"text":"\u306b\u76d7\u307e\u308c\u307e\u3057\u305f\u3002\n"},{"text":"\u7dd1","color":"dark_green"},{"text":"\u306e"},{"text":"\u30d7\u30ec\u30bc\u30f3\u30c8","color":"green"},{"text":"\u3092\u8ab0\u304b\u306b\u914d\u5e03\u3057\u306a\u3044\u3068"},{"text":"\u77e2","color":"gold"},{"text":"\u3092"},{"text":"\u518d\u53d6\u5f97","color":"aqua"},{"text":"\u3067\u304d\u307e\u305b\u3093\u3002\n"},{"text":"\u8d64","color":"dark_red"},{"text":"\u306e"},{"text":"\u30d7\u30ec\u30bc\u30f3\u30c8","color":"red"},{"text":"\u306f"},{"text":"\u7206\u5f3e","color":"dark_purple"},{"text":"\u3067\u3001\n"},{"text":"\u7dd1","color":"dark_green"},{"text":"\u306e"},{"text":"\u30d7\u30ec\u30bc\u30f3\u30c8","color":"green"},{"text":"\u306f"},{"text":"\u30e9\u30f3\u30c0\u30e0\u30a2\u30a4\u30c6\u30e0","color":"aqua"},{"text":"\u3067\u3059\u3002"}]
kill @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_shulker_box"}}]


##サンタプレゼント系
#(プレゼント爆弾)
execute as @a at @s if items entity @s[gamemode=!creative,gamemode=!spectator] hotbar.* minecraft:player_head[minecraft:max_stack_size=1] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:9b}
execute as @a at @s if items entity @s[gamemode=!creative,gamemode=!spectator] hotbar.* minecraft:player_head[minecraft:max_stack_size=1] run clear @s minecraft:player_head[minecraft:max_stack_size=1]
execute as @a at @s if items entity @s[gamemode=!creative,gamemode=!spectator] inventory.* minecraft:player_head[minecraft:max_stack_size=1] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:9b}
execute as @a at @s if items entity @s[gamemode=!creative,gamemode=!spectator] inventory.* minecraft:player_head[minecraft:max_stack_size=1] run clear @s minecraft:player_head[minecraft:max_stack_size=1]

#(矢が消える処理)
execute as @a[tag=santa_no] at @s run clear @s arrow

##サンタ矢を復帰
#緑のプレゼントを受け取った！！
execute as @a at @s if items entity @s weapon.mainhand minecraft:player_head[minecraft:max_stack_size=66] run tag @s add santa_ok
execute as @a at @s if items entity @s weapon.mainhand minecraft:player_head[minecraft:max_stack_size=66] run tellraw @s ["",{"text":"\u30c8\u30fc\u30c6\u30e0\u30c0\u30a4\u30e4\u3092\u624b\u306b\u5165\u308c\u305f\uff01\uff01","color":"aqua"},{"text":"\n"},{"text":"\u52b9\u679c : \u4e0d\u6b7b\u306e\u30c8\u30fc\u30c6\u30e0\u3068\u540c\u69d8","color":"yellow"}]
execute as @a at @s if items entity @s weapon.mainhand minecraft:player_head[minecraft:max_stack_size=66] run item replace entity @s weapon.mainhand with minecraft:diamond[minecraft:death_protection={}]
execute as @a[tag=santa_ok] run tag @a remove santa_no

#サンタ(矢を入手)
execute as @a at @s if entity @a[tag=santa_ok] if entity @s[tag=santa,tag=!santa_no] unless entity @s[tag=santa_ok] run give @s[gamemode=!creative,gamemode=!spectator] arrow[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}}]
execute as @a at @s if entity @a[tag=santa_ok] if entity @s[tag=santa,tag=!santa_no] unless entity @s[tag=santa_ok] run tag @a remove santa_ok
clear @s minecraft:white_bundle[minecraft:bundle_contents=[{id:"minecraft:firework_star",count: 1}]] 1


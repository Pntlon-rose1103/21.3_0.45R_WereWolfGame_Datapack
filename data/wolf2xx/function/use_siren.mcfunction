##フェーズ0
scoreboard players add @a[scores={21_siren=1..}] 21_siren 1
execute as @a[scores={21_siren=2}] run effect give @a minecraft:trial_omen 300 4
execute as @a[scores={21_siren=2}] run tellraw @a ["",{"text":"\u8a66\u7df4\u304c\u59cb\u307e\u3063\u305f...","color":"dark_green"},{"text":"(\u3053\u308c\u304b\u3089\u751f\u5b58\u8005\u306e\u6240\u306b\u69d8\u3005\u306aMOB\u304c\u30b9\u30dd\u30fc\u30f3\u3057\u307e\u3059)"}]
execute as @a[scores={21_siren=2}] run playsound minecraft:item.wolf_armor.break master @a ~ ~ ~ 0.5 0.5 1
execute as @a[scores={21_siren=2}] run title @a title ["",{"text":"\u30d5\u30a7\u30fc\u30ba"},{"text":"0","color":"green"}]
##フェーズ1
execute as @a[scores={21_siren=1200}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:breeze ~ ~ ~ {Health:8.0f,attributes:[{id:"minecraft:generic.scale",base:0.75d},{id:"minecraft:generic.movement_speed",base:0.0d},{id:"minecraft:generic.gravity",base:0.02d}]}
execute as @a[scores={21_siren=1200}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:zombie ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:15.0f,HandItems:[{count:1,id:"minecraft:golden_pickaxe"},{count:1,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.5d}]}
execute as @a[scores={21_siren=1200}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:skeleton ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:15.0f,HandItems:[{count:1,id:"minecraft:bow"},{count:1,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.5d}]}
execute as @a[scores={21_siren=1140}] run title @a title ["",{"text":"\u30d5\u30a7\u30fc\u30ba"},{"text":"1","color":"red"}]
execute as @a[scores={21_siren=1140}] run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.1 1
##フェーズ2
execute as @a[scores={21_siren=2400}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:breeze ~ ~ ~ {Health:10.0f,attributes:[{id:"minecraft:generic.scale",base:0.9d},{id:"minecraft:generic.movement_speed",base:0.0d},{id:"minecraft:generic.gravity",base:0.08d}]}
execute as @a[scores={21_siren=2400}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:zombie ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:golden_pickaxe"},{count:2,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.5d}]}
execute as @a[scores={21_siren=2400}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:skeleton ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:bow"},{count:2,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.5d}]}
execute as @a[scores={21_siren=2340}] run title @a title ["",{"text":"\u30d5\u30a7\u30fc\u30ba"},{"text":"2","color":"blue"}]
execute as @a[scores={21_siren=2340}] run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.1 1
##フェーズ3
execute as @a[scores={21_siren=3600}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:breeze ~ ~ ~ {Health:10.0f,attributes:[{id:"minecraft:generic.scale",base:0.9d},{id:"minecraft:generic.movement_speed",base:0.0d},{id:"minecraft:generic.gravity",base:0.16d}]}
execute as @a[scores={21_siren=3600}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:husk ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:18.0f,HandItems:[{count:1,id:"minecraft:golden_pickaxe"},{count:1,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.9d}]}
execute as @a[scores={21_siren=3600}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:stray ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:18.0f,HandItems:[{count:1,id:"minecraft:bow"},{count:1,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.9d}]}
execute as @a[scores={21_siren=3600}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:pillager ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:crossbow"},{count:3,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.5d}]}
execute as @a[scores={21_siren=3600}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:endermite ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:golden_pickaxe"},{count:3,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:3.0d}]}
execute as @a[scores={21_siren=3540}] run title @a title ["",{"text":"\u30d5\u30a7\u30fc\u30ba"},{"text":"3","color":"yellow"}]
execute as @a[scores={21_siren=3540}] run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.1 1
##フェーズLast
execute as @a[scores={21_siren=4800}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:breeze ~ ~ ~ {Health:10.0f,attributes:[{id:"minecraft:generic.scale",base:1.25d},{id:"minecraft:generic.movement_speed",base:1.2d},{id:"minecraft:generic.gravity",base:0.24d}]}
execute as @a[scores={21_siren=4800}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:drowned ~ ~ ~ {IsBaby:1b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:golden_pickaxe"},{count:2,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.9d}]}
execute as @a[scores={21_siren=4800}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:bogged ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:bow"},{count:2,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.9d}]}
execute as @a[scores={21_siren=4800}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:pillager ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:crossbow"},{count:3,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.9d}]}
execute as @a[scores={21_siren=4800}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:endermite ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:25.0f,HandItems:[{count:1,id:"minecraft:golden_pickaxe"},{count:3,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:3.0d},{id:"minecraft:generic.movement_speed",base:0.45d}]}
execute as @a[scores={21_siren=4800}] run execute as @r[gamemode=!spectator,gamemode=!creative] at @s run summon minecraft:ravager ~ ~ ~ {IsBaby:0b,ArmorItems:[{},{},{},{count:1,id:"minecraft:glass"}],Health:10.0f,HandItems:[{},{count:3,id:"minecraft:totem_of_undying"}],attributes:[{id:"minecraft:generic.scale",base:0.25d},{id:"minecraft:generic.movement_speed",base:0.4d}]}
execute as @a[scores={21_siren=4740}] run title @a title ["",{"text":"\u30d5\u30a7\u30fc\u30ba"},{"text":"Final","color":"light_purple"}]
execute as @a[scores={21_siren=4740}] run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.1 1
##フェーズEND
execute as @a[scores={21_siren=5998}] run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1 0.5 1
execute as @a[scores={21_siren=5998}] run title @a title ["",{"text":"\u30d5\u30a7\u30fc\u30ba"},{"text":"Complete","color":"gold"}]
execute as @a[scores={21_siren=5997}] run kill @e[type=#minecraft:undead]
execute as @a[scores={21_siren=5997}] run kill @e[type=#minecraft:raiders]
execute as @a[scores={21_siren=5997}] run kill @e[type=minecraft:endermite]
execute as @a[scores={21_siren=5997}] run kill @e[type=minecraft:breeze]
scoreboard players reset @a[scores={21_siren=6000..}] 21_siren

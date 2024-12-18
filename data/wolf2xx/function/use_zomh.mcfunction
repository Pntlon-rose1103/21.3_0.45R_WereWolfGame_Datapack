summon zombie_horse ~ ~ ~ {SaddleItem:{id:"minecraft:saddle",count:1},attributes: [{modifiers:[], id: "minecraft:follow_range", base: 16.0d}, {id: "minecraft:jump_strength", base: 0.6d}, {id: "minecraft:max_health", base: 3.0d}, {id: "minecraft:movement_speed", base: 0.3d}],HandItems:[{id:"minecraft:saddle",count:1},{}],Tame:1b}
playsound minecraft:entity.warden.dig master @a ~ ~ ~ 1 1.25
clear @s minecraft:green_candle
kill @e[type=item,nbt={Item:{id:"minecraft:green_candle"}}]
scoreboard players reset @s 21_zomh

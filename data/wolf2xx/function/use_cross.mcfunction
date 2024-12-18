#トライデントランチャー
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:trident"}} run summon minecraft:trident
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:trident"}} run data modify entity @e[type=trident,limit=1,sort=nearest] Owner set from entity @e[type=arrow,limit=1,sort=nearest] Owner
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:trident"}} run data modify entity @e[type=trident,limit=1,sort=nearest] Motion[0] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[0]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:trident"}} run data modify entity @e[type=trident,limit=1,sort=nearest] Motion[1] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[1]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:trident"}} run data modify entity @e[type=trident,limit=1,sort=nearest] Motion[2] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[2]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:trident"}} run execute as @e[type=trident] run data merge entity @s {item:{components:{"minecraft:charged_projectiles":[{count:1,id:"minecraft:trident"}],"minecraft:attribute_modifiers":{modifiers:[{amount:-9999999.d,id:"minecraft:",type:"minecraft:generic.attack_speed",operation:"add_value"}]},"minecraft:enchantments":{levels:{"minecraft:loyalty":1,"minecraft:sharpness":66}},"minecraft:damage":999},count:1,id:"minecraft:crossbow"}}
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:trident"}} run kill @s

#腐食ブラスター
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_breath"}} run summon minecraft:dragon_fireball
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_breath"}} run execute as @e[type=minecraft:dragon_fireball] run data modify entity @s Motion[0] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[0]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_breath"}} run execute as @e[type=minecraft:dragon_fireball] run data modify entity @s Motion[1] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[1]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_breath"}} run execute as @e[type=minecraft:dragon_fireball] run data modify entity @s Motion[2] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[2]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_breath"}} run execute as @e[type=minecraft:dragon_fireball] run data modify entity @s Owner set from entity @e[type=arrow,limit=1,sort=nearest] Owner
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_breath"}} run kill @s
execute as @e[type=minecraft:area_effect_cloud] if data entity @s {potion_contents:{custom_effects:[{duration:1,show_icon:1b,amplifier:1b,id:"minecraft:instant_damage"}]}} run data merge entity @s {Particle:{type:"minecraft:sneeze"}}
execute as @e[type=minecraft:area_effect_cloud] if data entity @s {potion_contents:{custom_effects:[{duration:1,show_icon:1b,amplifier:1b,id:"minecraft:instant_damage"}]}} run data merge entity @s {ReapplicationDelay:1}

#クリーパーランチャー
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:creeper_spawn_egg"}} run summon minecraft:creeper
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:creeper_spawn_egg"}} run execute as @e[type=minecraft:creeper] run data modify entity @s Motion[0] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[0]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:creeper_spawn_egg"}} run execute as @e[type=minecraft:creeper] run data modify entity @s Motion[1] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[1]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:creeper_spawn_egg"}} run execute as @e[type=minecraft:creeper] run data modify entity @s Motion[2] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[2]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:creeper_spawn_egg"}} run execute as @e[type=minecraft:creeper] run data modify entity @s Owner set from entity @e[type=arrow,limit=1,sort=nearest] Owner
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:creeper_spawn_egg"}} run kill @s

#ドラゴンランチャー
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_egg"}} run summon minecraft:ender_dragon
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_egg"}} run execute as @e[type=minecraft:ender_dragon] run data modify entity @s Motion[0] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[0]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_egg"}} run execute as @e[type=minecraft:ender_dragon] run data modify entity @s Motion[1] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[1]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_egg"}} run execute as @e[type=minecraft:ender_dragon] run data modify entity @s Motion[2] set from entity @e[type=arrow,limit=1,sort=nearest] Motion[2]
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_egg"}} run execute as @e[type=minecraft:ender_dragon] run data modify entity @s Owner set from entity @e[type=arrow,limit=1,sort=nearest] Owner
execute as @e[type=arrow] at @s if data entity @s {item:{count:1,id:"minecraft:dragon_egg"}} run kill @s

#
#エメラルド砲
execute as @e[type=snowball] run data merge entity @s {Item:{count:1,id:"minecraft:emerald"}}
execute as @e[type=snowball] at @s if data entity @s {Item:{count:1,id:"minecraft:emerald"}} run summon minecraft:spectral_arrow ^ ^ ^ {PierceLevel:3,damage:44,crit:1,NoGravity:1,SoundEvent:"minecraft:entity.ender_dragon.hurt"}
execute as @e[type=snowball] at @s if data entity @s {Item:{count:1,id:"minecraft:emerald"}} run execute as @e[type=minecraft:spectral_arrow] run data modify entity @s Motion[0] set from entity @e[type=snowball,limit=1,sort=nearest] Motion[0]
execute as @e[type=snowball] at @s if data entity @s {Item:{count:1,id:"minecraft:emerald"}} run execute as @e[type=minecraft:spectral_arrow] run data modify entity @s Motion[1] set from entity @e[type=snowball,limit=1,sort=nearest] Motion[1]
execute as @e[type=snowball] at @s if data entity @s {Item:{count:1,id:"minecraft:emerald"}} run execute as @e[type=minecraft:spectral_arrow] run data modify entity @s Motion[2] set from entity @e[type=snowball,limit=1,sort=nearest] Motion[2]
execute as @e[type=snowball] at @s if data entity @s {Item:{count:1,id:"minecraft:emerald"}} run execute as @e[type=minecraft:spectral_arrow] run data modify entity @s Owner set from entity @e[type=snowball,limit=1,sort=nearest] Owner
execute as @e[type=snowball] at @s if data entity @s {Item:{count:1,id:"minecraft:emerald"}} run kill @s

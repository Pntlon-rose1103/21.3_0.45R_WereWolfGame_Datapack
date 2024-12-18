#0.20�̃{�[�_�[�ݒ�

execute store result score 21._.GM 21_0size run data get storage minecraft:0size size
execute store result score 21._.GM 21_1stime run data get storage minecraft:1time time
execute store result score 21._.GM 21_2endsize run data get storage minecraft:1time size
execute store result score 21._.GM 21_3endtime run data get storage minecraft:1time ltime

#0.15�ȍ~�V�A�C�e���p
execute as @e store result score @s MotionX run data get entity @s Motion[0]
execute as @e store result score @s MotionY run data get entity @s Motion[1]
execute as @e store result score @s MotionZ run data get entity @s Motion[2]

#�ݒ���
item replace entity @a[tag=kanr] inventory.8 with minecraft:wooden_hoe[minecraft:enchantments={levels:{'minecraft:vanishing_curse':1}}]
execute as @a[scores={21_set=1..}] run function wolf2xx:000-allsetting
scoreboard players reset @a[scores={21_set=1..}] 21_set
execute as @e[nbt={Item:{id:"minecraft:wooden_hoe"}}] if entity @e[nbt={Item:{id:"minecraft:wooden_hoe"}}] run data merge entity @s {Item:{id:"minecraft:air"}}

#nv�^�O�ɂ��Î��⏕
execute as @a at @s if entity @s[tag=nv] run effect give @s minecraft:night_vision infinite 9 true

#�l�T�J�n
#�Q�[�����s
execute if score 21._.GM 21_info matches 9 run function wolf2xx:before_run
execute if score 21._.GM 21_info matches 10 run scoreboard players set 21._.GM 21_info 11
execute if score 21._.GM 21_info matches 11 run schedule function wolf2xx:tantei_usecount 3s
execute if score 21._.GM 21_info matches 11 run effect give @s minecraft:absorption infinite 4 true
execute if score 21._.GM 21_info matches 11 run effect give @s minecraft:saturation 1200 0 true
execute if score 21._.GM 21_info matches 11 run scoreboard players set 21._.GM 21_info 12
execute if score 21._.GM 21_info matches 12 if entity @a[tag=thiok] run scoreboard players set 21._.GM 21_info 13
execute if score 21._.GM 21_info matches 13 run title @a title ["",{"text":"Game","color":"green"},{"text":"Start","color":"red"}]
execute if score 21._.GM 21_info matches 13 run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.65 1 1
execute if score 21._.GM 21_info matches 13 if entity @a[tag=thiok] run scoreboard players set 21._.GM 21_info 14
execute if score 21._.GM 21_info matches 14 run function wolf2xx:run_game

#0.45����ǉ��̃f�o�b�O�@�\
execute if score 21._.GM 21_debu matches 91 run function wolf2xx:run_game

#��E�^�[�Q�b�g
function wolf2xx:use_role

#����
function wolf2xx:use_kaitou

#�����������𓐂����ꍇ���S����
scoreboard players add @a[scores={21_de_kai=44..100}] 21_de_kai 1
kill @a[scores={21_de_kai=99}]

#�X�R�A�Œ�
scoreboard players set 21._.GM 21_wolfdef 4
scoreboard players set @a 21_1 1

#�N���X�{�E�n�A�C�e��(�N���[�p�[�����`���[,�h���S�������`���[,���H�u���X�^�[,�g���C�f���g�����`���[)
function wolf2xx:use_cross

#�����X�|�i�[�A�C�e��
function wolf2xx:use_siren

#�Ռ��e�I�v�V����
function wolf2xx:use_imop

#�r�[�R���N�����u
execute as @a[scores={21_bea=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}}] run function wolf2xx:use_bea
execute as @a[scores={21_bea=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}}] run scoreboard players reset @s 21_bea
function wolf2xx:bea_load

#����L�m�R
function wolf2xx:use_mush

#���G�X�^�[
execute as @a[scores={21_star=1}] at @s run function wolf2xx:use_star

#�𗋐j
function wolf2xx:use_hri

#�V�����J�[��
execute as @a[scores={21_shul=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:shulker_spawn_egg"}}] run function wolf2xx:use_shul
execute as @a[scores={21_shul=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:shulker_spawn_egg"}}] run scoreboard players reset @s 21_shul

#��Ō����Ȃ�
execute as @a[scores={21_hesn=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:snow"}}] run function wolf2xx:use_hesn
execute as @a[scores={21_hesn=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:snow"}}] run scoreboard players reset @s 21_hesn

#�]���r�n
execute as @a[scores={21_zomh=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:green_candle"}}] run function wolf2xx:use_zomh
execute as @a[scores={21_zomh=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:green_candle"}}] run scoreboard players reset @s 21_zomh
execute as @e[type=minecraft:zombie_horse] at @s unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..5] run tp @s ^ ^ ^ facing ^0.8 ^ ^-0.1
item replace entity @e[type=minecraft:zombie_horse] horse.saddle with minecraft:saddle

#��d�X�C�b�`
execute as @a[scores={21_teiden=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:light"}}] run function wolf2xx:use_teiden
execute as @a[scores={21_teiden=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:light"}}] run scoreboard players reset @s 21_teiden

#�����C�J�n(�ڐA)
execute as @a[scores={21_glow=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}}] run function wolf2xx:use_glow
execute as @a[scores={21_glow=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}}] run scoreboard players reset @s 21_glow

#�u���[�`���O�`���[�W(�ڐA)
function wolf2xx:use_bri

#���P����(�ڐA)
execute as @e[type=minecraft:firework_rocket,scores={21_roc=5..}] at @s if entity @a[distance=..2] run execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2.25] at @s run damage @s 60 minecraft:fireworks at ^ ^ ^
scoreboard players add @e[type=minecraft:firework_rocket] 21_roc 1
execute as @e[type=minecraft:firework_rocket] run data merge entity @s {Glowing:1b}

#�g�[�e���t���h�앞(�ڐA)
execute as @a at @s if items entity @s armor.* minecraft:netherite_chestplate[minecraft:trim={material:"minecraft:gold",pattern:"minecraft:silence"}] run effect give @s minecraft:resistance 1 9 true
execute as @a at @s if items entity @s armor.* minecraft:netherite_chestplate[minecraft:trim={material:"minecraft:gold",pattern:"minecraft:silence"}] run effect give @s minecraft:fire_resistance 1 1 true

execute as @a at @s if items entity @s armor.* minecraft:netherite_chestplate[minecraft:trim={material:"minecraft:diamond",pattern:"minecraft:silence"}] run effect give @s minecraft:resistance 1 9 true
execute as @a at @s if items entity @s armor.* minecraft:netherite_chestplate[minecraft:trim={material:"minecraft:diamond",pattern:"minecraft:silence"}] run effect give @s minecraft:fire_resistance 1 1 true

execute as @a at @s if items entity @s armor.* minecraft:netherite_chestplate[minecraft:trim={material:"minecraft:emerald",pattern:"minecraft:silence"}] run effect give @s minecraft:resistance 1 9 true
execute as @a at @s if items entity @s armor.* minecraft:netherite_chestplate[minecraft:trim={material:"minecraft:emerald",pattern:"minecraft:silence"}] run effect give @s minecraft:fire_resistance 1 1 true

#�G���p�㉻
execute as @e[type=minecraft:ender_pearl] at @s run execute as @s at @s run particle minecraft:witch ~ ~ ~ 0.6 0.6 0.6 0.02 3 force @a

#�g���b�v
execute as @a[scores={21_trap=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:crying_obsidian"}}] run function wolf2xx:use_trap
execute as @a[scores={21_trap=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:crying_obsidian"}}] run scoreboard players reset @s 21_trap
execute as @a at @s if items entity @s hotbar.* minecraft:end_crystal run damage @s[gamemode=!spectator,gamemode=!creative] 3 minecraft:freeze by @s
execute as @a at @s if items entity @s inventory.* minecraft:end_crystal run damage @s[gamemode=!spectator,gamemode=!creative] 2 minecraft:freeze by @s
execute as @a at @s if items entity @s weapon.offhand minecraft:end_crystal run damage @s[gamemode=!spectator,gamemode=!creative] 6 minecraft:freeze by @s

#�{�[�i�X�Q�[��
execute as @a[scores={21_crdr=1}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:crafter"}}] run function wolf2xx:use_crdr
execute as @a[scores={21_crdr=2..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:crafter"}}] run scoreboard players reset @s 21_crdr
function wolf2xx:cr_ti

#�N���[�L���O


#�u���`�F��(�폜)

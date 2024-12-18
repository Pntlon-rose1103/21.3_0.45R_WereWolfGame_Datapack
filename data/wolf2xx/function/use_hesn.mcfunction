item replace entity @a[gamemode=!spectator,gamemode=!creative,distance=1.3..] armor.head with minecraft:carved_pumpkin[minecraft:equippable={slot:head,camera_overlay:'misc/powder_snow_outline'},minecraft:custom_name='{"extra":[{"bold":false,"color":"aqua","italic":false,"text":"FREEZE SLOT LOCK"}],"text":""}',enchantments={levels:{binding_curse:1,vanishing_curse:1}},minecraft:item_model="minecraft:air"]
playsound minecraft:block.powder_snow.step master @a ~ ~ ~ 1 0.5 1
clear @s minecraft:snow
kill @e[type=item,nbt={Item:{id:"minecraft:snow"}}]
scoreboard players reset @s 21_hesn

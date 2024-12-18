execute if entity @e[type=minecraft:armor_stand,name=rolelist0730] run kill @e[type=minecraft:armor_stand,name=rolelist0730]
execute unless entity @e[type=minecraft:armor_stand,name=rolelist0730] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems: [{}, {}, {}, {}] , Invulnerable:1b , Pose: {},Rotation: [180.0f, 0.0f],Invisible: 1b,CustomName: '"rolelist0730"',DisableSlots:255b,Marker:1b}
item replace entity @e[type=minecraft:armor_stand,name=rolelist0730] armor.head with minecraft:barrel
setblock ~ ~ ~ minecraft:barrel
tellraw @a ["",{"text":"[","bold":false,"color":"green"},{"text":"\u30de\u30a4\u30af\u30e9","color":"green"},{"text":"\u4eba\u72fc","color":"red"},{"text":"]","bold":false,"color":"green"},{"text":"\u5f79\u8077\u6392\u51fa\u30dc\u30c3\u30af\u30b9\u3092\u4e0a\u66f8\u304d\u3057\u307e\u3057\u305f\u3002"}]
tellraw @s ["",{"text":"\u5f79\u8077\u306b\u5bfe\u5fdc\u3057\u305f\u30d6\u30ed\u30c3\u30af\u306e\u30ea\u30b9\u30c8\u8868\u793a","color":"green"},{"text":" \u1405 "},{"text":"[\u2691\u2691\u2691]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function a_wiki:wiki_role"}}]
function wolf2xx:000-allsetting

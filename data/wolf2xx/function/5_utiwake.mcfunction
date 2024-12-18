#É`Å[ÉÄ(ì‡ñÛå©Ç‚Ç∑Ç≠Ç∑ÇÈóp)
team modify 21_white nametagVisibility never
team modify 21_white color reset
team modify 21_black nametagVisibility never
team modify 21_black color reset
team modify 21_kaitou nametagVisibility never
team modify 21_madman nametagVisibility never
team modify 21_madman color reset


##îíêwâc
tellraw @a ["",{"text":"======","color":"gold"},{"text":" <\u767d\u9663\u55b6> ","color":"green"},{"text":"======","color":"gold"}]
execute as @r[tag=mura] run tellraw @a ["",{"text":"\u6751\u4eba : ","color":"green"},{"selector":"@a[tag=mura]","color":"green"}]
execute as @r[tag=yogen] run tellraw @a ["",{"text":"\u9810\u8a00\u8005 : ","color":"aqua"},{"selector":"@a[tag=yogen]","color":"aqua"}]
execute as @r[tag=reibai] run tellraw @a ["",{"text":"\u970a\u5a92\u5e2b : ","color":"yellow"},{"selector":"@a[tag=reibai]","color":"yellow"}]
execute as @r[tag=kishi] run tellraw @a ["",{"text":"\u9a0e\u58eb : ","color":"gold"},{"selector":"@a[tag=kishi]","color":"gold"}]
execute as @r[tag=tantei] run tellraw @a ["",{"text":"\u63a2\u5075 : ","color":"#CA8200"},{"selector":"@a[tag=tantei]","color":"#CA8200"}]
execute as @r[tag=kaun] run tellraw @a ["",{"text":"\u30ab\u30a6\u30f3\u30bb\u30e9\u30fc : ","color":"dark_aqua"},{"selector":"@a[tag=kaun]","color":"dark_aqua"}]
execute as @r[tag=denpa] run tellraw @a ["",{"text":"\u96fb\u6ce2\u4eba\u9593 : ","color":"gold"},{"selector":"@a[tag=denpa]","color":"gold"}]
execute as @r[tag=snow] run tellraw @a ["",{"text":"\u30b9\u30ce\u30fc\u30de\u30f3 : ","color":"#B1B1B1"},{"selector":"@a[tag=snow]","color":"#B1B1B1"},{"text":" /"},{"text":" \u751f\u8d04 : ","color":"#B1B1B1"},{"selector":"@a[tag=yuki]","color":"#B1B1B1"}]
execute as @r[tag=yaku] run tellraw @a ["",{"text":"\u5384\u795e : ","color":"dark_green"},{"selector":"@a[tag=yaku]","color":"dark_green"}]
execute as @r[tag=pate] run tellraw @a ["",{"text":"\u30d1\u30c6\u30a3\u30b7\u30a8 : ","color":"#FF9BFF"},{"selector":"@a[tag=pate]","color":"#FF9BFF"}]
execute as @r[tag=wmura] run tellraw @a ["",{"text":"\u30aa\u30aa\u30ab\u30df\u5c11\u5e74 : ","color":"green"},{"selector":"@a[tag=wmura]","color":"green"}]
execute as @r[tag=kosp] run tellraw @a ["",{"text":"\u30b3\u30b9\u30d7\u30ec\u30a4\u30e4\u30fc : ","color":"#FF6DEA"},{"selector":"@a[tag=kosp]","color":"#FF6DEA"}]
execute as @r[tag=kaitou] run tellraw @a ["",{"text":"\u602a\u76d7 : ","color":"blue"},{"selector":"@a[tag=kaitou]","color":"blue"},{"text":" /"},{"text":" \u76d7\u3089\u308c\u305f\u4eba : ","color":"green"},{"selector":"@a[tag=thiok]","color":"green"}]
execute as @r[tag=huta] if entity @a[team=21_white,tag=jemi] run tellraw @a ["",{"text":"\u53cc\u5b50 : ","color":"gold"},{"selector":"@a[tag=huta]","color":"gold"},{"text":" /"},{"text":" \u7247\u5272\u308c : ","color":"aqua"},{"selector":"@a[tag=jemi]","color":"aqua"}]
execute as @r[tag=kaun] if entity @a[team=21_nwhite] run tellraw @a ["",{"text":"\u767d\u66f4\u751f : ","color":"green"},{"selector":"@a[team=21_nwhite]","color":"green"}]

##çïêwâc
tellraw @a ["",{"text":"======","color":"gold"},{"text":" <\u9ed2\u9663\u55b6>","color":"red"},{"text":" ======","color":"gold"}]
execute as @r[tag=wolf] run tellraw @a ["",{"text":"\u4eba\u72fc : ","color":"red"},{"selector":"@a[tag=wolf]","color":"red"}]
execute as @r[tag=vwo] run tellraw @a ["",{"text":"\u30a6\u30a4\u30eb\u30b9\u72fc : ","color":"red"},{"selector":"@a[tag=vwo]","color":"red"}]
execute as @r[tag=kyouj] run tellraw @a ["",{"text":"\u72c2\u4eba : ","color":"light_purple"},{"selector":"@a[tag=kyouj]","color":"light_purple"}]
execute as @r[tag=madn] run tellraw @a ["",{"text":"\u30de\u30c3\u30c9\u30ca\u30fc\u30b9 : ","color":"dark_red"},{"selector":"@a[tag=madn]","color":"dark_red"}]
execute as @r[tag=huta] unless entity @a[team=21_white,tag=jemi] run tellraw @a ["",{"text":"\u53cc\u5b50 : ","color":"gold"},{"selector":"@a[tag=huta]","color":"gold"},{"text":" /"},{"text":" \u7247\u5272\u308c : ","color":"aqua"},{"selector":"@a[tag=jemi]","color":"aqua"}]
execute as @r[tag=kaun] if entity @a[team=21_nblack] run tellraw @a ["",{"text":"\u9ed2\u66f4\u751f : ","color":"red"},{"selector":"@a[team=21_nblack]","color":"red"}]

##2éüñêE
tellraw @a ["",{"text":"======","color":"gold"},{"text":" <2\u6b21\u5f79\u8077>","color":"aqua"},{"text":" ======","color":"gold"}]
execute as @r[tag=yomibito] run tellraw @a ["",{"text":"\u9ec4\u6cc9\u4eba : ","color":"gold"},{"selector":"@a[tag=yomibito]","color":"gold"}]
execute as @r[tag=goosuto] run tellraw @a ["",{"text":"\u30b4\u30fc\u30b9\u30c8 : ","color":"dark_gray"},{"selector":"@a[tag=goosuto]","color":"dark_gray"}]
execute as @r[tag=robo] run tellraw @a ["",{"text":"\u58ca\u308c\u305f\u30ed\u30dc\u30c3\u30c8 : ","color":"#B8FFC2"},{"selector":"@a[tag=robo]","color":"#B8FFC2"}]
execute as @r[tag=sli] run tellraw @a ["",{"text":"\u30b9\u30e9\u30a4\u30e0 : ","color":"#64FF96"},{"selector":"@a[tag=sli]","color":"#64FF96"}]
execute as @r[tag=TNT] run tellraw @a ["",{"text":"\u30dc\u30de\u30fc : ","color":"gray"},{"selector":"@a[tag=TNT]","color":"gray"}]
execute as @r[tag=dragon] run tellraw @a ["",{"text":"\u30c9\u30e9\u30b4\u30f3\u30c6\u30a4\u30de\u30fc : ","color":"light_purple"},{"selector":"@a[tag=dragon]","color":"light_purple"}]
execute as @r[tag=kodai] run tellraw @a ["",{"text":"\u53e4\u4ee3\u4eba : ","color":"dark_green"},{"selector":"@a[tag=kodai]","color":"dark_green"}]
execute as @r[tag=mitam] run tellraw @a ["",{"text":"\u751f\u5fa1\u970a : ","color":"blue"},{"selector":"@a[tag=mitam]","color":"blue"}]
execute as @r[tag=baldi] run tellraw @a ["",{"text":"\u30d0\u30eb\u30c7\u30a3 : ","color":"green"},{"selector":"@a[tag=baldi]","color":"green"}]
execute as @r[tag=tonak] if entity @a[tag=santa] run tellraw @a ["",{"text":"\u30b5\u30f3\u30bf : "},{"selector":"@a[tag=santa]"},{"text":" /"},{"text":" \u30c8\u30ca\u30ab\u30a4 : ","color":"blue"},{"selector":"@a[tag=tonak]","color":"blue"}]
execute as @r[tag=tonak] unless entity @a[tag=santa] run tellraw @a ["",{"text":"\u30b5\u30f3\u30bf : "},{"text":"\u4efb\u547d\u524d"},{"text":" /"},{"text":" \u30c8\u30ca\u30ab\u30a4 : ","color":"blue"},{"selector":"@a[tag=tonak]","color":"blue"}]


###
scoreboard players set 21._.GM 21_c -2

#####

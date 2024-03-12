execute if score #button jkvb.mem matches 1 run function jkvb:countdown/order/_1
execute if score #button jkvb.mem matches 2 run function jkvb:countdown/order/_2
execute if score #button jkvb.mem matches 3 run function jkvb:countdown/order/_3
execute if score #button jkvb.mem matches 4 run function jkvb:countdown/order/_4
execute if score #button jkvb.mem matches 5 run function jkvb:countdown/order/_5

execute unless score #tip_block jkvb.mem matches 1 run tellraw @a ["",{"selector":"@e[limit=1,tag=jkvb.marker]","color": "yellow"},"已消失！"]
execute if score #tip_block jkvb.mem matches 1 run tellraw @a ["",{"selector":"@e[limit=1,tag=jkvb.marker]","color": "yellow"},"已消失！","(",{"score":{"name": "#block","objective": "jkvb.mem"},"color": "yellow"},")"]

# 清理
kill @e[tag=jkvb.marker]
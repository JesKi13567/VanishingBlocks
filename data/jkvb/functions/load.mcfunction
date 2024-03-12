# 第一次进入
scoreboard objectives add jkvb.mem dummy
execute unless score #state jkvb.mem matches 0..1 run function jkvb:init
execute if score #state jkvb.mem matches 0 run function jkvb:menu
execute if score #state jkvb.mem matches 1 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "【消失的方块】","color": "gold"},{"text": "游戏已开始！","color": "green"},"    ",{"text": "[停止]","color": "red","clickEvent": {"action": "run_command","value": "/function jkvb:end"}}]
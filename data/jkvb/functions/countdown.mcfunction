# 在开始游戏时触发循环（自带state=1..2）
schedule function jkvb:countdown 1s replace
scoreboard players add #time_last jkvb.mem 1

# 按冷却倒计时
scoreboard players remove #count jkvb.mem 1
execute if score #count jkvb.mem matches 0 unless score #block jkvb.mem matches ..0 run function jkvb:countdown/order
execute if score #count jkvb.mem matches ..0 run scoreboard players operation #count jkvb.mem = #time jkvb.mem

# 有分数的方块开始消失
execute as @a[gamemode=survival] at @s run function jkvb:countdown/fill

# 旁观
execute if entity @p[scores={jkvb.spec=1..}] run tellraw @a ["",{"selector":"@a[scores={jkvb.spec=1..}]"},{"text": "变成了旁观模式！","color": "green"}]
gamemode spectator @a[scores={jkvb.spec=1..}]
scoreboard players reset @a jkvb.spec
scoreboard players enable @a[gamemode=survival] jkvb.spec

# 新加入游戏/退出游戏提示
execute as @a unless score @s jkvb.leavegame matches 0 run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "消失的方块","bold": true,"color": "gold"},{"text": "游戏已开始！","color": "green"},{"text": "\n按照设置，每 ","color": "yellow"},{"score":{"name": "#time","objective": "jkvb.mem"},"color": "gold"},{"text": " 秒消失一种方块。","color": "yellow"},{"text": "\n当玩家靠近被声明消失的方块时，它们就会变成空气！","color": "aqua"},{"text": "\n使用","color": "green"},{"text": "/trigger jkvb.spec","color": "gold"},{"text": "切换为不能撤销的旁观模式！","color": "green"}]
scoreboard players set @a jkvb.leavegame 0

# 动作栏
execute if score #actionbar jkvb.mem matches 1 unless score #block jkvb.mem matches ..0 run title @a actionbar [{"text": "剩余方块：","color": "gold"},{"score":{"name": "#block","objective": "jkvb.mem"},"color": "yellow"},"种，消失倒计时：",{"score":{"name": "#count","objective": "jkvb.mem"},"color": "yellow"},"秒"]
execute if score #actionbar jkvb.mem matches 1 if score #block jkvb.mem matches ..0 run title @a actionbar [{"text": "方块全部消失了！","color": "gold"},"游戏时长：",{"score":{"name": "#time_last","objective": "jkvb.mem"},"color": "yellow"},"秒"]

# 夜视
execute if score #night_vision jkvb.mem matches 1 run effect give @a night_vision 137 0 true

# 2阶段
# 末影龙生成时花费2t < 1s 以及 击杀末影龙可能没有成就，故如此处理
execute if score #state jkvb.mem matches 2 at @a[gamemode=survival,advancements={story/enter_the_end=true}] if dimension the_end unless entity @e[type=ender_dragon] run schedule function jkvb:end 1t
execute unless score #state jkvb.mem matches 2 if entity @p[gamemode=survival,advancements={story/enter_the_end=true}] run scoreboard players set #state jkvb.mem 2
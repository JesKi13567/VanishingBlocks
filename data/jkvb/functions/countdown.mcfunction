# 在开始游戏时触发循环
schedule function jkvb:countdown 1s replace
execute if score #state jkvb.mem matches 1 run scoreboard players add #time_last jkvb.mem 1

# 按冷却倒计时
scoreboard players remove #count jkvb.mem 1
execute if score #count jkvb.mem matches ..0 run scoreboard players operation #count jkvb.mem = #time jkvb.mem

# 按顺序触发
execute if score #count jkvb.mem matches 1 unless score #block jkvb.mem matches 934.. run function jkvb:countdown/order

# 有分数的方块开始消失
execute as @a[gamemode=survival] at @s run function jkvb:countdown/fill

# 夜视
execute if score #night_vision jkvb.mem matches 1 run effect give @a night_vision 137 0 true
execute if entity @p[gamemode=survival,advancements={end/kill_dragon=true}] run function jkvb:end
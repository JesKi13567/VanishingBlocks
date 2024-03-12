scoreboard players operation #time_s jkvb.mem = #time_last jkvb.mem
scoreboard players operation #time_s jkvb.mem %= #60 jkvb.mem
scoreboard players operation #time_m jkvb.mem = #time_last jkvb.mem
scoreboard players operation #time_m jkvb.mem /= #60 jkvb.mem
scoreboard players operation #time_m jkvb.mem %= #60 jkvb.mem
scoreboard players operation #time_h jkvb.mem = #time_last jkvb.mem
scoreboard players operation #time_h jkvb.mem /= #60 jkvb.mem
scoreboard players operation #time_h jkvb.mem /= #60 jkvb.mem
tellraw @a ["",{"text": "【消失的方块】","color": "gold"},{"text": "游戏已结束！","color": "yellow"},{"text": "  用时 ","color": "yellow"},{"score":{"name": "#time_h","objective": "jkvb.mem"},"color": "gold"},{"text": " : ","color": "yellow"},{"score":{"name": "#time_m","objective": "jkvb.mem"},"color": "gold"},{"text": " : ","color": "yellow"},{"score":{"name": "#time_s","objective": "jkvb.mem"},"color": "gold"}]
execute as @a at @s run playsound ui.toast.challenge_complete player @s
scoreboard players set #state jkvb.mem 2
effect give @a resistance 10 0
effect give @a levitation 4 0
schedule clear jkvb:countdown
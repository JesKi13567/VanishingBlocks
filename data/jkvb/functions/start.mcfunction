fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 obsidian
spawnpoint @a ~ ~ ~
setworldspawn ~ ~ ~
tp @a @s
gamemode survival @a
effect give @a saturation 2 5 true
execute if score #init_tool jkvb.mem matches 1 run give @a stone_axe
execute if score #init_tool jkvb.mem matches 1 run give @a stone_pickaxe
scoreboard players reset * jkvb.death
scoreboard players set #state jkvb.mem 1
scoreboard players set #time_last jkvb.mem 0
scoreboard players set @a jkvb.leavegame 0
execute unless score #time jkvb.mem matches 1..1000 run scoreboard players set #time jkvb.mem 5
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "消失的方块","bold": true,"color": "gold"},{"text": "游戏已开始！","color": "green"},{"text": "\n按照设置，每 ","color": "yellow"},{"score":{"name": "#time","objective": "jkvb.mem"},"color": "gold"},{"text": " 秒消失一种方块。","color": "yellow"},{"text": "\n当玩家靠近被声明消失的方块时，它们就会变成空气！","color": "aqua"},{"text": "\n使用","color": "green"},{"text": "/trigger jkvb.spec","color": "gold"},{"text": "切换为不能撤销的旁观模式！","color": "green"}]
playsound entity.ender_dragon.growl player @a
schedule function jkvb:countdown 1s
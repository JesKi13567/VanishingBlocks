playsound block.note_block.bell player @s

scoreboard players set #version jkvb.mem 200
function jkvb:version/202

tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "====","color": "green"},{"text": " 消失的方块 ","color": "yellow"},{"text": "======","color": "green"}," v1.1 for 1.20.0-4 ",{"text": "====\n","color": "green"}]

execute if score #version jkvb.mem matches 200 run tellraw @a ["",{"text":"当前服务器版本：","color": "green"},"1.20.0-1"]
execute if score #version jkvb.mem matches 202 run tellraw @a ["",{"text":"当前服务器版本：","color": "green"},"1.20.2"]
execute if score #version jkvb.mem matches 203 run tellraw @a ["",{"text":"当前服务器版本：","color": "green"},"1.20.3-4"]

tellraw @a [{"text": "\n世界上的方块突然开始按种类随机消失，\n打破这一诅咒的方式是击败","color": "yellow"},{"translate":"entity.minecraft.ender_dragon","color": "aqua"},{"text": "！\n玩家们能否团结一心，成功通关呢？","color": "yellow"},{"text": "\n\n特别地，禁用消失的方块有：\n","color": "gold"},{"translate":"block.minecraft.obsidian","color": "gold"},{"text": "、","color": "gold"},{"translate":"block.minecraft.nether_portal","color": "gold"},{"text": "、","color": "gold"},{"translate":"block.minecraft.end_portal_frame","color": "gold"},{"text": "、","color": "gold"},{"translate":"block.minecraft.end_portal","color": "gold"},{"text": "。","color": "gold"}]

tellraw @a ["\n",{"text": "======== ","color": "green"},{"text": "[设置]","color": "aqua","clickEvent": {"action": "run_command","value": "/function jkvb:settings"}},{"text": " ======== ","color": "green"},{"text": "[开始游戏]","color": "light_purple","clickEvent": {"action":"run_command","value": "/function jkvb:start"},"hoverEvent":{"action":"show_text","value":"开始游戏时所有玩家传送到你的位置。"}},{"text": " ========","color": "green"}]
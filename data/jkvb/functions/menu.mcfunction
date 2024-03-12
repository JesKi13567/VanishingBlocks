scoreboard players set #version jkvb.mem 200
function jkvb:version/202

tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "==","color": "green"},{"text": " 消失的方块 ","color": "yellow"},{"text": "== ","color": "green"},"v1.0 for 1.20.0-4",{"text": " === ","color": "green"},{"underlined":true,"text":"JK137","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"JesKi13567","color":"blue"}},"clickEvent":{"action":"open_url","value":"https://github.com/JesKi13567"}},{"text": " ==\n","color": "green"}]

execute if score #version jkvb.mem matches 200 run tellraw @a ["",{"text":"当前服务器版本：","color": "green"},"1.20.0-1"]
execute if score #version jkvb.mem matches 202 run tellraw @a ["",{"text":"当前服务器版本：","color": "green"},"1.20.2"]
execute if score #version jkvb.mem matches 203 run tellraw @a ["",{"text":"当前服务器版本：","color": "green"},"1.20.3-4"]

tellraw @a [{"text": "\n世界上的方块突然开始按种类慢慢消失，\n打破这一诅咒的方式是击败末影龙！\n玩家们能否团结一心，成功通关呢？","color": "yellow"},{"text": "\n\n特别地，禁用消失的方块有：\n","color": "gold"},{"translate":"block.minecraft.obsidian","color": "gold"},{"text": "、","color": "gold"},{"translate":"block.minecraft.nether_portal","color": "gold"},{"text": "、","color": "gold"},{"translate":"block.minecraft.end_portal_frame","color": "gold"},{"text": "、","color": "gold"},{"translate":"block.minecraft.end_portal","color": "gold"},{"text": "。","color": "gold"}]

kill @e[tag=jkvb.display]

execute unless score #Ebedrock jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ebedrock"], CustomName: '[{"text": "[","color": "white"},{"translate":"block.minecraft.bedrock"},"]"]'}
execute if score #Ebedrock jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ebedrock"], CustomName: '[{"text": "[","color": "green"},{"translate":"block.minecraft.bedrock"},"]"]'}
execute unless score #Espawner jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Espawner"], CustomName: '[{"text": "[","color": "white"},{"translate":"block.minecraft.spawner"},"]"]'}
execute if score #Espawner jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Espawner"], CustomName: '[{"text": "[","color": "green"},{"translate":"block.minecraft.spawner"},"]"]'}
execute unless score #Ewhite_bed jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ewhite_bed"], CustomName: '[{"text": "[","color": "white"},{"translate":"block.minecraft.white_bed"},"]"]'}
execute if score #Ewhite_bed jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ewhite_bed"], CustomName: '[{"text": "[","color": "green"},{"translate":"block.minecraft.white_bed"},"]"]'}
execute unless score #Ework_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ework_block"], CustomName: '[{"text": "[工作方块]","color": "white"}]'}
execute if score #Ework_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ework_block"], CustomName: '[{"text": "[工作方块]","color": "green"}]'}

tellraw @a ["\n禁用消失：",{"selector":"@e[limit=1,tag=jkvb.Ebedrock]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/enable/bedrock"}},"  ",{"selector":"@e[limit=1,tag=jkvb.Espawner]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/enable/spawner"}},"  ",{"selector":"@e[limit=1,tag=jkvb.Ewhite_bed]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/enable/white_bed"}},"  ",{"selector":"@e[limit=1,tag=jkvb.Ework_block]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/enable/work_block"},"hoverEvent": {"action": "show_text","contents": ["包含：\n",{"translate":"block.minecraft.crafting_table","color": "yellow"},"、",{"translate":"block.minecraft.furnace","color": "yellow"},"、",{"translate":"block.minecraft.smithing_table","color": "yellow"},"、",{"translate":"block.minecraft.stonecutter","color": "yellow"},"。"]}}]

execute unless score #keepinv jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.keepinv"], CustomName: '{"text": "[死亡不掉落]","color": "white"}'}
execute if score #keepinv jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.keepinv"], CustomName: '{"text": "[死亡不掉落]","color": "green"}'}
execute unless score #night_vision jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.night_vision"], CustomName: '{"text": "[永久夜视]","color": "white"}'}
execute if score #night_vision jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.night_vision"], CustomName: '{"text": "[永久夜视]","color": "green"}'}
execute unless score #supply_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.supply_block"], CustomName: '{"text": "[方块补给]","color": "white"}'}
execute if score #supply_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.supply_block"], CustomName: '{"text": "[方块补给]","color": "green"}'}

tellraw @a ["\n设置1：",{"selector":"@e[limit=1,tag=jkvb.keepinv]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/keepinv"}},"  ",{"selector":"@e[limit=1,tag=jkvb.night_vision]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/night_vision"}},"  ",{"selector":"@e[limit=1,tag=jkvb.supply_block]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/supply_block"},"hoverEvent": {"action":"show_text","value": ["在游戏进行到最后 25%，\n方块种类每消失 1 次给予玩家 1 个",{"translate":"block.minecraft.obsidian","color": "yellow"},"。"]}}]

execute unless score #tip_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.tip_block"], CustomName: '{"text": "[显示计数]","color": "white"}'}
execute if score #tip_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.tip_block"], CustomName: '{"text": "[显示计数]","color": "green"}'}

execute if score #version jkvb.mem matches 202.. run tellraw @a ["\n设置2：",{"text": "[消失间隔]","color": "yellow","clickEvent": {"action":"suggest_command","value": "/scoreboard players set #time jkvb.mem "},"hoverEvent": {"action":"show_text","value": "每种方块消失后的冷却时间/秒，默认为 5。\n可设定范围在 1~1000 内，否则变为默认。"}},"  ",{"selector":"@e[limit=1,tag=jkvb.tip_block]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/tip_block"},"hoverEvent": {"action":"show_text","value":"每种方块消失后是否计数，总数为 934。"}}]

execute if score #version jkvb.mem matches ..200 run tellraw @a ["\n设置2：",{"text": "[消失间隔]","color": "yellow","clickEvent": {"action":"suggest_command","value": "/scoreboard players set #time jkvb.mem "},"hoverEvent": {"action":"show_text","value": "每种方块消失后的冷却时间/秒，默认为 5。\n可设定范围在 1~1000 内，否则变为默认。"}},"  ",{"selector":"@e[limit=1,tag=jkvb.tip_block]","clickEvent":{"action":"run_command","value":"/function jkvb:menu/tip_block"},"hoverEvent": {"action":"show_text","value":"每种方块消失后是否计数，总数为 934。"}},"  ",{"text": "[预设：","color": "green","hoverEvent": {"action":"show_text","value": "数据包内有 5 个预设，可以任选其一游玩。\n对于相同的预设，消失方块顺序也相同！\n\n本设置为 MC1.20.0-1 版本设计，\n而 MC1.20.2+ 将使用数据包产生随机。\n对了，还可以使用包内自带的py文件创建新预设！"},"clickEvent":{"action":"run_command","value":"/function jkvb:menu/button"}},{"score":{"name": "#button","objective": "jkvb.mem"},"color": "green"},{"text": "]","color": "green"}]

tellraw @a [{"text": "\n-------------------------------> ","color": "green"},{"text": "[开始游戏]","color": "light_purple","clickEvent": {"action":"run_command","value": "/function jkvb:start"},"hoverEvent":{"action":"show_text","value":"开始游戏时所有玩家传送到你的位置。"}}]

playsound block.note_block.bell player @s
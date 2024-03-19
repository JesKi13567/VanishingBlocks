playsound block.note_block.bell player @s

tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "====","color": "green"},{"text": " 消失的方块 ","color": "yellow"},{"text": "======","color": "green"}," v1.1 for 1.20.0-4 ",{"text": "====","color": "green"}]

kill @e[tag=jkvb.display]

execute unless score #Ebedrock jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ebedrock"], CustomName: '[{"text": "[","color": "white"},{"translate":"block.minecraft.bedrock"},"]"]'}
execute if score #Ebedrock jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ebedrock"], CustomName: '[{"text": "[","color": "green"},{"translate":"block.minecraft.bedrock"},"]"]'}
execute unless score #Espawner jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Espawner"], CustomName: '[{"text": "[","color": "white"},{"translate":"block.minecraft.spawner"},"]"]'}
execute if score #Espawner jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Espawner"], CustomName: '[{"text": "[","color": "green"},{"translate":"block.minecraft.spawner"},"]"]'}
execute unless score #Ewhite_bed jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ewhite_bed"], CustomName: '[{"text": "[","color": "white"},{"translate":"block.minecraft.white_bed"},"]"]'}
execute if score #Ewhite_bed jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ewhite_bed"], CustomName: '[{"text": "[","color": "green"},{"translate":"block.minecraft.white_bed"},"]"]'}
execute unless score #Ework_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ework_block"], CustomName: '[{"text": "[工作方块]","color": "white"}]'}
execute if score #Ework_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.Ework_block"], CustomName: '[{"text": "[工作方块]","color": "green"}]'}

tellraw @a ["\n禁用消失：",{"selector":"@e[limit=1,tag=jkvb.Ebedrock]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/enable/bedrock"}},"  ",{"selector":"@e[limit=1,tag=jkvb.Espawner]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/enable/spawner"}},"  ",{"selector":"@e[limit=1,tag=jkvb.Ewhite_bed]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/enable/white_bed"}},"  ",{"selector":"@e[limit=1,tag=jkvb.Ework_block]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/enable/work_block"},"hoverEvent": {"action": "show_text","contents": ["包含：\n",{"translate":"block.minecraft.crafting_table","color": "yellow"},"、",{"translate":"block.minecraft.furnace","color": "yellow"},"、",{"translate":"block.minecraft.smithing_table","color": "yellow"},"、",{"translate":"block.minecraft.stonecutter","color": "yellow"},"。"]}}]

execute unless score #keepinv jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.keepinv"], CustomName: '{"text": "[死亡不掉落]","color": "white"}'}
execute if score #keepinv jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.keepinv"], CustomName: '{"text": "[死亡不掉落]","color": "green"}'}
execute unless score #night_vision jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.night_vision"], CustomName: '{"text": "[永久夜视]","color": "white"}'}
execute if score #night_vision jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.night_vision"], CustomName: '{"text": "[永久夜视]","color": "green"}'}
execute unless score #init_tool jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.init_tool"], CustomName: '{"text": "[初始工具]","color": "white"}'}
execute if score #init_tool jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.init_tool"], CustomName: '{"text": "[初始工具]","color": "green"}'}

tellraw @a ["\n属性：",{"selector":"@e[limit=1,tag=jkvb.keepinv]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/keepinv"}},"  ",{"selector":"@e[limit=1,tag=jkvb.night_vision]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/night_vision"}},"  ",{"selector":"@e[limit=1,tag=jkvb.init_tool]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/init_tool"},"hoverEvent": {"action":"show_text","contents": ["包含一个",{"translate":"item.minecraft.stone_axe","color": "yellow"},"和一个",{"translate":"item.minecraft.stone_pickaxe","color": "yellow"}]}}]

execute unless score #actionbar jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.actionbar"], CustomName: '{"text": "[动作栏]","color": "white"}'}
execute if score #actionbar jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.actionbar"], CustomName: '{"text": "[动作栏]","color": "green"}'}
execute unless score #death_list jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.death_list"], CustomName: '{"text": "[侧边栏]","color": "white"}'}
execute if score #death_list jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.death_list"], CustomName: '{"text": "[侧边栏]","color": "green"}'}

tellraw @a ["\n提示：",{"selector":"@e[limit=1,tag=jkvb.actionbar]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/actionbar"},"hoverEvent": {"action":"show_text","value": "显示剩余方块数及消失倒计时。"}},"  ",{"selector":"@e[limit=1,tag=jkvb.death_list]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/death_list"},"hoverEvent": {"action":"show_text","value": "显示死亡榜"}}]

execute unless score #supply_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.supply_block"], CustomName: '["[",{"translate":"block.minecraft.obsidian"},"]"]'}
execute if score #supply_block jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.supply_block"], CustomName: '[{"text": "[","color": "green"},{"translate":"block.minecraft.obsidian"},"]"]'}

execute unless score #supply_firework jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.supply_firework"], CustomName: '["[",{"translate":"item.minecraft.elytra"},"+",{"translate":"item.minecraft.firework_rocket"},"]"]'}
execute if score #supply_firework jkvb.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkvb.display", "jkvb.supply_firework"], CustomName: '[{"text": "[","color": "green"},{"translate":"item.minecraft.elytra"},"+",{"translate":"item.minecraft.firework_rocket"},"]"]'}

tellraw @a ["\n补给：",{"selector":"@e[limit=1,tag=jkvb.supply_block]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/supply_block"},"hoverEvent": {"action":"show_text","value": ["游戏进行至 50% ~ 75%，\n方块种类每消失 1 次给予玩家 1 个",{"translate":"block.minecraft.obsidian","color": "yellow"},"。"]}},"  ",{"selector":"@e[limit=1,tag=jkvb.supply_firework]","clickEvent":{"action":"run_command","value":"/function jkvb:settings/supply_firework"},"hoverEvent": {"action":"show_text","value": ["游戏进行至 75% ~ 100%，\n方块种类每消失 1 次给予玩家 1 个",{"translate":"item.minecraft.firework_rocket","color": "yellow"},"。\n在此之前，会给予玩家",{"text": "无法破坏","color": "aqua"},"的",{"translate":"item.minecraft.elytra","color": "yellow"},"。"]}}]

execute if score #version jkvb.mem matches 202.. run tellraw @a ["\n特殊：",{"text": "[消失间隔]","color": "yellow","clickEvent": {"action":"suggest_command","value": "/scoreboard players set #time jkvb.mem "},"hoverEvent": {"action":"show_text","value": "每种方块消失后的冷却时间/秒，默认为 5。\n可设定范围在 1~1000 内，否则变为默认。"}}]

execute if score #version jkvb.mem matches ..200 run tellraw @a ["\n特殊：",{"text": "[消失间隔]","color": "yellow","clickEvent": {"action":"suggest_command","value": "/scoreboard players set #time jkvb.mem "},"hoverEvent": {"action":"show_text","value": "每种方块消失后的冷却时间/秒，默认为 5。\n可设定范围在 1~1000 内，否则变为默认。"}},"  ",{"text": "[预设：","color": "green","hoverEvent": {"action":"show_text","value": "数据包内有 5 个预设，可以任选其一游玩。\n对于相同的预设，消失方块顺序也相同！\n\n本设置为 MC1.20.0-1 版本设计，\n而 MC1.20.2+ 将使用数据包产生随机。\n对了，还可以使用包内自带的py文件创建新预设！"},"clickEvent":{"action":"run_command","value":"/function jkvb:settings/button"}},{"score":{"name": "#button","objective": "jkvb.mem"},"color": "green"},{"text": "]","color": "green"}]

tellraw @a ["\n",{"text": "======== ","color": "green"},{"text": "[返回]","color": "aqua","clickEvent": {"action": "run_command","value": "/function jkvb:menu"}},{"text": " ======== ","color": "green"},{"text": "[作者页面]","color": "gold","clickEvent": {"action":"run_command","value": "/function jkvb:author"}},{"text": " ========","color": "green"}]
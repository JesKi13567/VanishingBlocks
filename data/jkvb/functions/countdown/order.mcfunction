scoreboard players remove #block jkvb.mem 1
execute if score #version jkvb.mem matches ..200 run function jkvb:countdown/order/_0
execute if score #version jkvb.mem matches 202.. run function jkvb:countdown/order/0

# 禁止消失
execute if score #Ebedrock jkvb.mem matches 1 if score #Bbedrock jkvb.mem matches 1 run tellraw @a ["...了吗？",{"text": "关于","color": "red"},{"translate":"block.minecraft.bedrock","color": "yellow"},{"text":"的消失被撤回了！","color": "red"}]
execute if score #Ebedrock jkvb.mem matches 1 run scoreboard players reset #Bbedrock jkvb.mem
execute if score #Espawner jkvb.mem matches 1 if score #Bspawner jkvb.mem matches 1 run tellraw @a ["...了吗？",{"text": "关于","color": "red"},{"translate":"block.minecraft.spawner","color": "yellow"},{"text":"的消失被撤回了！","color": "red"}]
execute if score #Espawner jkvb.mem matches 1 run scoreboard players reset #Bspawner jkvb.mem
execute if score #Ewhite_bed jkvb.mem matches 1 if score #Bwhite_bed jkvb.mem matches 1 run tellraw @a ["...了吗？",{"text": "关于","color": "red"},{"translate":"block.minecraft.white_bed","color": "yellow"},{"text":"的消失被撤回了！","color": "red"}]
execute if score #Ewhite_bed jkvb.mem matches 1 run scoreboard players reset #Bwhite_bed jkvb.mem
execute if score #Ework_block jkvb.mem matches 1 if score #Bcrafting_table jkvb.mem matches 1 run tellraw @a ["...了吗？",{"text": "关于","color": "red"},{"translate":"block.minecraft.crafting_table","color": "yellow"},{"text":"的消失被撤回了！","color": "red"}]
execute if score #Ework_block jkvb.mem matches 1 run scoreboard players reset #Bcrafting_table jkvb.mem
execute if score #Ework_block jkvb.mem matches 1 if score #Bfurnace jkvb.mem matches 1 run tellraw @a ["...了吗？",{"text": "关于","color": "red"},{"translate":"block.minecraft.furnace","color": "yellow"},{"text":"的消失被撤回了！","color": "red"}]
execute if score #Ework_block jkvb.mem matches 1 run scoreboard players reset #Bfurnace jkvb.mem
execute if score #Ework_block jkvb.mem matches 1 if score #Bsmithing_table jkvb.mem matches 1 run tellraw @a ["...了吗？",{"text": "关于","color": "red"},{"translate":"block.minecraft.smithing_table","color": "yellow"},{"text":"的消失被撤回了！","color": "red"}]
execute if score #Ework_block jkvb.mem matches 1 run scoreboard players reset #Bsmithing_table jkvb.mem
execute if score #Ework_block jkvb.mem matches 1 if score #Bstonecutter jkvb.mem matches 1 run tellraw @a ["...了吗？",{"text": "关于","color": "red"},{"translate":"block.minecraft.stonecutter","color": "yellow"},{"text":"的消失被撤回了！","color": "red"}]
execute if score #Ework_block jkvb.mem matches 1 run scoreboard players reset #Bstonecutter jkvb.mem

# 提示个数
execute if score #block jkvb.mem matches 701 run tellraw @a {"text": "这个世界已经消失 25% 的方块了！","color": "gold"}
execute if score #block jkvb.mem matches 467 run tellraw @a {"text": "这个世界已经消失 50% 的方块了！","color": "gold"}
execute if score #block jkvb.mem matches 467 if score #supply_block jkvb.mem matches 1 run tellraw @a [{"text": "从现在开始，方块种类每消失 1 次将给予玩家 1 个","color": "yellow"},{"translate":"block.minecraft.obsidian","color": "aqua"},"！"]
execute if score #block jkvb.mem matches 234 run tellraw @a {"text": "这个世界已经消失 75% 的方块了！","color": "gold"}
execute if score #block jkvb.mem matches 234 if score #supply_block jkvb.mem matches 1 run tellraw @a [{"translate":"block.minecraft.obsidian","color": "aqua"},{"text": "补给已停止！","color": "yellow"}]
execute if score #block jkvb.mem matches 234 if score #supply_firework jkvb.mem matches 1 run tellraw @a [{"text": "从现在开始，方块种类每消失 1 次将给予玩家 1 个","color": "yellow"},{"translate":"item.minecraft.firework_rocket","color": "aqua"},"！"]
execute if score #block jkvb.mem matches 0 run tellraw @a {"text": "这个世界所有能消失的方块都消失了，玩家们能否力挽狂澜呢？","color": "gold"}
execute if score #block jkvb.mem matches 0 if score #supply_firework jkvb.mem matches 1 run tellraw @a [{"translate":"item.minecraft.firework_rocket","color": "aqua"},{"text": "补给已停止！","color": "yellow"}]

# 方块补给
execute if score #supply_block jkvb.mem matches 1 if score #block jkvb.mem matches 235..467 run give @a[gamemode=survival] obsidian 1
execute if score #supply_firework jkvb.mem matches 1 if score #block jkvb.mem matches 234 run give @a[gamemode=survival] elytra{Unbreakable: 1b} 1
execute if score #supply_firework jkvb.mem matches 1 if score #block jkvb.mem matches 1..234 run give @a[gamemode=survival] firework_rocket 1
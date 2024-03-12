# 选中方块
$data modify storage jkvb:blocks chosen_block set from storage jkvb:blocks blocks[$(chosen_num)]
$data remove storage jkvb:blocks blocks[$(chosen_num)]
# 剩余值-1
execute store result score #remain jkvb.mem run data get storage jkvb:blocks remain
scoreboard players remove #remain jkvb.mem 1
execute store result storage jkvb:blocks remain int 1 run scoreboard players get #remain jkvb.mem
# 展示
function jkvb:countdown/order/3 with storage jkvb:blocks
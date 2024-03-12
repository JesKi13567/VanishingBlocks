# 产生随机数
$execute store result score #random jkvb.mem run random value 0..$(remain)
execute store result storage jkvb:blocks chosen_num int 1 run scoreboard players get #random jkvb.mem
function jkvb:countdown/order/2 with storage jkvb:blocks
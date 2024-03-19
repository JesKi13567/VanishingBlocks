scoreboard players add #death_list jkvb.mem 1
execute if score #death_list jkvb.mem matches 2.. run scoreboard players reset #death_list jkvb.mem

execute unless score #death_list jkvb.mem matches 1 run scoreboard objectives setdisplay sidebar
execute if score #death_list jkvb.mem matches 1 run scoreboard objectives add jkvb.death deathCount "死亡榜"
execute if score #death_list jkvb.mem matches 1 run scoreboard objectives setdisplay sidebar jkvb.death

function jkvb:settings
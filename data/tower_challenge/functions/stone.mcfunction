place template tower_challenge:tower_challenge_stone ~-3 ~-1 ~-3
function tower_challenge:give_items_light_gray
tellraw @p ["",{"text":"Stone Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

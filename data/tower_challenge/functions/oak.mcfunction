place template tower_challenge:tower_challenge_oak ~-3 ~-1 ~-3
function tower_challenge:give_items_green
tellraw @p ["",{"text":"Oak Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

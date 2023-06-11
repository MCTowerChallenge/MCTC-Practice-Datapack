place template tower_challenge:tower_challenge_warped ~-3 ~-1 ~-3
function tower_challenge:give_items_cyan
tellraw @p ["",{"text":"Warped Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

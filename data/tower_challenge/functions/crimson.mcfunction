place template tower_challenge:tower_challenge_crimson ~-3 ~-1 ~-3
function tower_challenge:give_items_red
tellraw @p ["",{"text":"Crimson starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

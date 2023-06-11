place template tower_challenge:tower_challenge_end ~-3 ~-1 ~-3
function tower_challenge:give_items_magenta
tellraw @p ["",{"text":"End Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~
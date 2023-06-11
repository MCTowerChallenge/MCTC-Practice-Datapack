place template tower_challenge:tower_challenge_desert ~-3 ~-1 ~-3
function tower_challenge:give_items_orange
tellraw @p ["",{"text":"Desert Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

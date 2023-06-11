place template tc:warped_spawn ~-3 ~-1 ~-3
# function tc:give_items_cyan
tellraw @p ["",{"text":"Warped Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

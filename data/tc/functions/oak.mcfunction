place template tc:oak_spawn ~-3 ~-1 ~-3
# function tc:give_items_green
tellraw @p ["",{"text":"Oak Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

place template tc:desert_spawn ~-3 ~-1 ~-3
# function tc:give_items_orange
tellraw @p ["",{"text":"Desert Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

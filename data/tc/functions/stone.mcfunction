place template tc:stone_spawn ~-3 ~-1 ~-3
# function tc:give_items_light_gray
tellraw @p ["",{"text":"Stone Starter generated, and items placed in inventory!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

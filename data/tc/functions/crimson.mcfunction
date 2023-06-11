place template tc:crimson_spawn ~-3 ~-1 ~-3
# function tc:give_items_red
tellraw @p ["",{"text":"Crimson starter generated!","italic":true,"color":"#E5A3FF"}]
spawnpoint @p ~ ~ ~

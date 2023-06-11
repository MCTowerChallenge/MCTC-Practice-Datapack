scoreboard players reset @a[tag=!tc.admin] tc.generate
scoreboard players enable @a[tag=tc.admin] tc.generate
execute as @a[scores={tc.generate=1..}] run gamerule keepInventory true
tellraw @a[scores={tc.generate=1..}] [{"text":"Keep Inventory gamerule enabled!","color":"#CE64F8"}]
execute as @a[scores={tc.generate=1..}] run gamerule mobGriefing false
tellraw @a[scores={tc.generate=1..}] [{"text":"Mob Griefing gamerule disabled!","color":"#CE64F8"}, "\n"]
tellraw @a[scores={tc.generate=1..}] ["",{"text":"Please Select a Starter to Generate:","color":"#E5A3FF"},"\n","\n",{"text":"[Crimson]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function tc:crimson"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Warped]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function tc:warped"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[End]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function tc:end"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Oak]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function tc:oak"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Stone]","color":"gray","clickEvent":{"action":"run_command","value":"/function tc:stone"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Desert]","color":"gold","clickEvent":{"action":"run_command","value":"/function tc:desert"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}}]
scoreboard players reset @a[scores={tc.generate=1..}] tc.generate

scoreboard players reset @a[tag=!tc.admin] tc.set_base
scoreboard players enable @a[tag=tc.admin] tc.set_base
execute at @a[scores={tc.set_base=1..}] run function tc:set_base
scoreboard players reset @a[scores={tc.set_base=1..}] tc.set_base

scoreboard players reset @a[tag=!tc.admin] tc.start_tower
scoreboard players enable @a[tag=tc.admin] tc.start_tower
execute at @a[scores={tc.start_tower=1..}] run function tc:start_tower
scoreboard players reset @a[scores={tc.start_tower=1..}] tc.start_tower

scoreboard players reset @a[tag=!tc.admin] tc.end_tower
scoreboard players enable @a[tag=tc.admin] tc.end_tower
execute at @a[scores={tc.end_tower=1..}] run function tc:end_tower
scoreboard players reset @a[scores={tc.end_tower=1..}] tc.end_tower

scoreboard players reset @a[tag=!tc.admin] tc.reset_height
scoreboard players enable @a[tag=tc.admin] tc.reset_height
execute as @a[scores={tc.reset_height=1..}] run scoreboard players reset * TowerHeight
scoreboard players reset @a[scores={tc.reset_height=1..}] tc.reset_height

execute at @a[tag=participant] store result score @p yLevel run data get entity @p Pos[1]
scoreboard players operation @a[tag=participant] yLevel -= base tower_challenge
execute at @a[tag=participant] store result score @p TowerHeight run scoreboard players get @p yLevel
execute at @a[tag=!participant] run scoreboard players reset @p TowerHeight
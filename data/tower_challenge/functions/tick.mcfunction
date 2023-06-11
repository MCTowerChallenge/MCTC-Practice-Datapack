scoreboard players enable @a[tag=tc_admin] tc.generate
execute as @a[scores={tc.generate=1..}] run gamerule keepInventory true
tellraw @a[scores={tc.generate=1..}] [{"text":"Keep Inventory gamerule enabled!","color":"#CE64F8"}, "\n"]
execute as @a[scores={tc.generate=1..}] run gamerule mobGriefing false
tellraw @a[scores={tc.generate=1..}] [{"text":"Mob Griefing gamerule disabled!","color":"#CE64F8"}, "\n"]
tellraw @a[scores={tc.generate=1..}] ["",{"text":"Please Select a Starter to Generate:","color":"#E5A3FF"},"\n",{"text":"THIS WILL CLEAR YOUR INVENTORY","italic":true,"underlined":true,"color":"red"},"\n","\n",{"text":"[Crimson]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function tower_challenge:crimson"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Warped]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function tower_challenge:warped"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[End]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function tower_challenge:end"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Oak]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function tower_challenge:oak"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Stone]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function tower_challenge:stone"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}},"\n",{"text":"[Desert]","color":"gold","clickEvent":{"action":"run_command","value":"/function tower_challenge:desert"},"hoverEvent":{"action":"show_text","contents":["Run Command"]}}]
scoreboard players reset @a[scores={tc.generate=1..}] tc.generate

scoreboard players enable @a[tag=tc_admin] tc.set_base
execute at @a[scores={tc.set_base=1..}] run function tower_challenge:set_base
scoreboard players reset @a[scores={tc.set_base=1..}] tc.set_base

scoreboard players enable @a[tag=tc_admin] tc.start_tower
execute at @a[scores={tc.start_tower=1..}] run function tower_challenge:start_tower
scoreboard players reset @a[scores={tc.start_tower=1..}] tc.start_tower

scoreboard players enable @a[tag=tc_admin] tc.end_tower
execute at @a[scores={tc.end_tower=1..}] run function tower_challenge:end_tower
scoreboard players reset @a[scores={tc.end_tower=1..}] tc.end_tower

# scoreboard players enable @a tc.add_participant
# execute at @a[scores={tc.add_participant=1..}] run scoreboard players set @p participants 1
# scoreboard players reset @a[scores={tc.add_participant=1..}] tc.add_participant

# scoreboard players enable @a tc.remove_participant
# execute at @a[scores={tc.remove_participant=1..}] run scoreboard players reset @p participants
# scoreboard players reset @a[scores={tc.add_participant=1..}] tc.remove_participant

# scoreboard players enable @a[tag=tc_admin] tc.reset_participants
# execute as @a[scores={tc.reset_participants=1..}] run scoreboard players reset * participants
# scoreboard players reset @a[scores={tc.reset_participants=1..}] tc.reset_participants

scoreboard players enable @a[tag=tc_admin] tc.reset_height
execute as @a[scores={tc.reset_height=1..}] run scoreboard players reset * TowerHeight
scoreboard players reset @a[scores={tc.reset_height=1..}] tc.reset_height

execute at @a[tag=participant] store result score @p yLevel run data get entity @p Pos[1]
scoreboard players operation @a[tag=participant] yLevel -= base tower_challenge
execute at @a[tag=participant] store result score @p TowerHeight run scoreboard players get @p yLevel
execute at @a[tag=!participant] run scoreboard players reset @p TowerHeight
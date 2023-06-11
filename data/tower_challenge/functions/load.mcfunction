scoreboard objectives add tc.generate trigger
scoreboard objectives add tc.set_base trigger
scoreboard objectives add tc.start_tower trigger
scoreboard objectives add tc.end_tower trigger
scoreboard objectives add tc.add_participant trigger
scoreboard objectives add tc.reset_participants trigger
scoreboard objectives add tc.remove_participant trigger
scoreboard objectives add tc.reset_height trigger

scoreboard objectives add tower_challenge dummy

scoreboard objectives add participants dummy
scoreboard objectives add tc.admins dummy

scoreboard objectives add constant dummy
scoreboard players set #16 constant 16

scoreboard objectives add yLevel dummy
scoreboard objectives add TowerHeight dummy "Tower Height"

tellraw @a [{"text": "[Tower Challenge Helper] - Loaded!", "color": "#CE64F8"}]

scoreboard objectives add tc.generate trigger

scoreboard objectives add constant dummy
scoreboard players set #16 constant 16

tellraw @a [{"text": "[Tower Challenge Helper] - Loaded!", "color": "#CE64F8"}]

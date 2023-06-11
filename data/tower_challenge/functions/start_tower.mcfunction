scoreboard objectives setdisplay sidebar TowerHeight
tellraw @p {"text": "Tower Height scoreboard enabled!", "color": "#E5A3FF", "italic": true}
# Random Tick Speed defaults to 3
gamerule randomTickSpeed 0
tellraw @p {"text": "Random Tick Speed set to 0!", "color": "#E5A3FF", "italic": true}
gamerule doDaylightCycle false
tellraw @p {"text": "Daylight Cycle disabled!", "color": "#E5A3FF", "italic": true}
time set noon
tellraw @p {"text": "Time set to Noon!", "color": "#E5A3FF", "italic": true}
gamerule doWeatherCycle false
tellraw @p {"text": "Weather cycle disabled!", "color": "#E5A3FF", "italic": true}
weather clear
tellraw @p {"text": "Weather cleared!", "color": "#E5A3FF", "italic": true}
function tower_challenge:set_base
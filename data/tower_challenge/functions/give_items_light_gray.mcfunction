clear @p
item replace entity @p hotbar.0 with minecraft:netherite_axe{Enchantments:[{id:"efficiency",lvl:3},{id:"unbreaking",lvl:3}]}
item replace entity @p hotbar.1 with minecraft:netherite_pickaxe{Enchantments:[{id:"efficiency",lvl:3},{id:"silk_touch",lvl:1},{id:"unbreaking",lvl:3}]}
item replace entity @p hotbar.2 with minecraft:netherite_shovel{Enchantments:[{id:"efficiency",lvl:3},{id:"unbreaking",lvl:3}]}
item replace entity @p hotbar.3 with minecraft:torch 64
item replace entity @p hotbar.4 with minecraft:cooked_beef 64

item replace entity @p hotbar.5 with minecraft:light_gray_shulker_box 1
item replace entity @p hotbar.6 with minecraft:light_gray_shulker_box 1
item replace entity @p hotbar.7 with minecraft:light_gray_shulker_box 1

execute at @s run summon item ~ ~ ~ {PickupDelay:0s,Tags:["temp"],Item:{id:"minecraft:compass",Count:1b,tag:{LodestoneTracked:0b,LodestoneDimension:"minecraft:overworld"}}}
data modify entity @e[type=item,tag=temp,limit=1] Owner set from entity @s UUID
execute store result entity @e[type=item,tag=temp,limit=1] Item.tag.LodestonePos.X int 1 run data get entity @s Pos[0]
execute store result entity @e[type=item,tag=temp,limit=1] Item.tag.LodestonePos.Y int 1 run data get entity @s Pos[1]
execute store result entity @e[type=item,tag=temp,limit=1] Item.tag.LodestonePos.Z int 1 run data get entity @s Pos[2]
tag @e[type=item,tag=temp] remove temp

item replace entity @p armor.head with minecraft:diamond_helmet
item replace entity @p armor.chest with minecraft:diamond_chestplate
item replace entity @p armor.legs with minecraft:diamond_leggings
item replace entity @p armor.feet with minecraft:diamond_boots
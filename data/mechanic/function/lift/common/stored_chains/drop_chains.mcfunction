execute if score @s SML.count matches 64.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",Count:64}}
execute if score @s SML.count matches 64.. run scoreboard players remove @s SML.count 64

execute if score @s SML.count matches 32.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",Count:32}}
execute if score @s SML.count matches 32.. run scoreboard players remove @s SML.count 32

execute if score @s SML.count matches 16.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",Count:16}}
execute if score @s SML.count matches 16.. run scoreboard players remove @s SML.count 16

execute if score @s SML.count matches 8.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",Count:8}}
execute if score @s SML.count matches 8.. run scoreboard players remove @s SML.count 8

execute if score @s SML.count matches 4.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",Count:4}}
execute if score @s SML.count matches 4.. run scoreboard players remove @s SML.count 4

execute if score @s SML.count matches 2.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",Count:2}}
execute if score @s SML.count matches 2.. run scoreboard players remove @s SML.count 2

execute if score @s SML.count matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",Count:1}}
execute if score @s SML.count matches 1.. run scoreboard players remove @s SML.count 1

execute if score @s SML.count matches 1.. run function mechanic:lift/common/stored_chains/drop_chains
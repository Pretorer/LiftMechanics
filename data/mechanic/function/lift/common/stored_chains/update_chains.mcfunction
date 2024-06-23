# mark on same id
scoreboard players set @e SML.marked 0
scoreboard players operation var SML.id = @s SML.id
execute as @e[tag=lift_corner_marker] if score @s SML.id = var SML.id run scoreboard players set @s SML.marked 1

# count from all marked
scoreboard players operation @s SML.count += @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.count
execute at @e[tag=lift_corner_marker,scores={SML.marked=1,SML.count=1..}] run data remove block ~ ~ ~ Items[{id:"minecraft:chain"}]
scoreboard players set @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.count 0

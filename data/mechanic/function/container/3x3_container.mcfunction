# setup counter
scoreboard players set @s SML.count 0
scoreboard players set tmp SML.count 0

# count each slot
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 0b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 1b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 2b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 3b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 4b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 5b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 6b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 7b}].count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 8b}].count
scoreboard players operation @s SML.count += tmp SML.count

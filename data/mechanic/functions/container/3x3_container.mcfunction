# setup counter
scoreboard players set @s SML.count 0
scoreboard players set tmp SML.count 0

# count each slot
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 0b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 1b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 2b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 3b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 4b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 5b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 6b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 7b}].Count
scoreboard players operation @s SML.count += tmp SML.count
execute store result score tmp SML.count run data get block ~ ~ ~ Items[{id: "minecraft:chain", Slot: 8b}].Count
scoreboard players operation @s SML.count += tmp SML.count

# setup counter
scoreboard players set @s SML.chain_count_iron 0
scoreboard players set @s SML.chain_count_raw_copper 0
scoreboard players set @s SML.chain_count_waxed_copper 0

# count chains of each slot
# Slot 0
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:0b}]
function mechanic:container/check_item_type
# Slot 1
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:1b}]
function mechanic:container/check_item_type
# Slot 2
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:2b}]
function mechanic:container/check_item_type
# Slot 3
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:3b}]
function mechanic:container/check_item_type
# Slot 4
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:4b}]
function mechanic:container/check_item_type
# Slot 5
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:5b}]
function mechanic:container/check_item_type
# Slot 6
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:6b}]
function mechanic:container/check_item_type
# Slot 7
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:7b}]
function mechanic:container/check_item_type
# Slot 8
execute store success score success SML.variables run data modify storage sml:temp Item set from block ~ ~ ~ Items[{Slot:8b}]
function mechanic:container/check_item_type
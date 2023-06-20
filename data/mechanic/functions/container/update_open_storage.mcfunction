# combine scores with "or"
scoreboard players set @a SML.open_storage 0

scoreboard players set @a[scores={SML.open_barrel=1..}] SML.open_storage 1
scoreboard players set @a[scores={SML.open_chest=1..}] SML.open_storage 1
scoreboard players set @a[scores={SML.open_t_chest=1..}] SML.open_storage 1
scoreboard players set @a[scores={SML.open_dispens=1..}] SML.open_storage 1
scoreboard players set @a[scores={SML.open_dropper=1..}] SML.open_storage 1
scoreboard players set @a[scores={SML.open_hopper=1..}] SML.open_storage 1
scoreboard players set @a[scores={SML.open_shulker=1..}] SML.open_storage 1

# reset scores
scoreboard players set @a SML.open_barrel 0
scoreboard players set @a SML.open_chest 0
scoreboard players set @a SML.open_t_chest 0
scoreboard players set @a SML.open_dispens 0
scoreboard players set @a SML.open_dropper 0
scoreboard players set @a SML.open_hopper 0
scoreboard players set @a SML.open_shulker 0
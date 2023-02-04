# init id
execute as @a unless score @s SML.id matches 1.. run function mechanic:utility/player_id/set_id

# loop
schedule function mechanic:utility/player_id/update_loop 1s
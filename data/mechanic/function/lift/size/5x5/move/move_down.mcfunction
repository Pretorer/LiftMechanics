# mark xp and items
execute positioned ~ ~-1 ~ run tag @e[type=experience_orb,dx=4,dy=3,dz=4] add persistent
execute positioned ~ ~-1 ~ run tag @e[type=minecraft:item,dx=4,dy=3,dz=4] add persistent

# move platform
clone ~ ~-1 ~ ~4 ~3 ~4 ~ ~-2 ~ replace force

# clear cheated xp and items
execute positioned ~ ~-1 ~ run kill @e[type=experience_orb,tag=!persistent,dx=4,dy=3,dz=4]
execute positioned ~ ~-1 ~ run kill @e[type=minecraft:item,tag=!persistent,dx=4,dy=3,dz=4]

# tp entitys
execute as @e[dx=4,dy=3,dz=4] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~-1 ~
execute at @s run teleport ~ ~-1 ~

# place chain and use chains from count
scoreboard players operation var SML.id = @s SML.id
execute positioned ~ ~2 ~ as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain
execute positioned ~4 ~2 ~ as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain
execute positioned ~ ~2 ~4 as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain
execute positioned ~4 ~2 ~4 as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain

# playsound
playsound minecraft:block.chain.place block @a ~2 ~ ~2 0.5 0.55

# mark xp and items
execute positioned ~ ~-1 ~ run tag @e[type=experience_orb,dx=3,dy=3,dz=3] add persistent
execute positioned ~ ~-1 ~ run tag @e[type=minecraft:item,dx=3,dy=3,dz=3] add persistent

# move platform
clone ~ ~-1 ~ ~3 ~3 ~3 ~ ~-2 ~ replace force

# clear cheated xp and items
execute positioned ~ ~-1 ~ run kill @e[type=experience_orb,tag=!persistent,dx=3,dy=3,dz=3]
execute positioned ~ ~-1 ~ run kill @e[type=minecraft:item,tag=!persistent,dx=3,dy=3,dz=3]

# tp entitys
execute as @e[dx=3,dy=3,dz=3] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~-1 ~
execute at @s run teleport ~ ~-1 ~

# place chain and use chains from count
scoreboard players operation var SML.id = @s SML.id
execute positioned ~ ~2 ~ as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain
execute positioned ~3 ~2 ~ as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain
execute positioned ~ ~2 ~3 as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain
execute positioned ~3 ~2 ~3 as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/place_chain

# playsound
playsound minecraft:block.chain.place block @a ~1.5 ~ ~1.5 0.5 0.55

# indicate stop
execute if entity @s[scores={SML.velocity=..-4}] run playsound minecraft:block.anvil.land block @a ~0.5 ~-1 ~0.5 1 0.5
execute if entity @s[scores={SML.velocity=..-4}] run playsound minecraft:entity.generic.explode block @a ~0.5 ~-1 ~0.5 1 0.5
execute if entity @s[scores={SML.velocity=..-4}] run particle minecraft:cloud ~0.5 ~ ~0.5 0.7 0.4 0.7 0.01 20

playsound minecraft:block.iron_door.close block @a ~0.5 ~-1 ~0.5 1 0.5

# reset call
scoreboard players set @s SML.called 0

# reset velocity
scoreboard players set @s SML.velocity 0

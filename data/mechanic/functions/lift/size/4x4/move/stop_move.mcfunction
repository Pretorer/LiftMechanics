# indicate stop
execute if entity @s[scores={SML.velocity=..-4}] run playsound minecraft:block.anvil.land block @a ~1.5 ~-1 ~1.5 1 0.5
execute if entity @s[scores={SML.velocity=..-4}] run playsound minecraft:entity.generic.explode block @a ~1.5 ~-1 ~1.5 1 0.5
execute if entity @s[scores={SML.velocity=..-4}] run particle minecraft:cloud ~1.5 ~ ~1.5 1.4 0.4 1.4 0.01 60

playsound minecraft:block.iron_door.close block @a ~1.5 ~-1 ~1.5 1 0.5

# reset call
scoreboard players set @s SML.called 0

# reset velocity
scoreboard players set @s SML.velocity 0

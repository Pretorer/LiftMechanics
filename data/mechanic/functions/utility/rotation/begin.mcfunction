# update x and y rotation of current entity
execute store result score @s SML.rotationX run data get entity @s Rotation[0]
execute store result score @s SML.rotationY run data get entity @s Rotation[1]
scoreboard players operation @s SML.oldRotationX = @s SML.rotationX
scoreboard players operation @s SML.oldRotationY = @s SML.rotationY

# update position of current entity
execute store result score @s SML.posX run data get entity @s Pos[0]
execute store result score @s SML.posY run data get entity @s Pos[1]
execute store result score @s SML.posZ run data get entity @s Pos[2]
scoreboard players operation @s SML.oldPosX = @s SML.posX
scoreboard players operation @s SML.oldPosY = @s SML.posY
scoreboard players operation @s SML.oldPosZ = @s SML.posZ

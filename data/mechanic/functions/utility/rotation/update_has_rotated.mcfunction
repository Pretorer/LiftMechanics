# setup
scoreboard players set @s SML.hasMoved 0

# update rotation
execute store result score @s SML.rotationX run data get entity @s Rotation[0]
execute store result score @s SML.rotationY run data get entity @s Rotation[1]

# update position
execute store result score @s SML.posX run data get entity @s Pos[0]
execute store result score @s SML.posY run data get entity @s Pos[1]
execute store result score @s SML.posZ run data get entity @s Pos[2]

# check rotation
execute unless score @s SML.oldRotationX = @s SML.rotationX run scoreboard players set @s SML.hasMoved 1
execute unless score @s SML.oldRotationY = @s SML.rotationY run scoreboard players set @s SML.hasMoved 1

# check position
execute unless score @s SML.oldPosX = @s SML.posX run scoreboard players set @s SML.hasMoved 1
execute unless score @s SML.oldPosY = @s SML.posY run scoreboard players set @s SML.hasMoved 1
execute unless score @s SML.oldPosZ = @s SML.posZ run scoreboard players set @s SML.hasMoved 1

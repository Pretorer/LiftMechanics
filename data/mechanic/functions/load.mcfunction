# add variables
scoreboard objectives add SML.open_dispens minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add SML.open_dropper minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add SML.open_hopper minecraft.custom:minecraft.inspect_hopper
scoreboard objectives add SML.open_barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add SML.open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add SML.open_shulker minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add SML.open_t_chest minecraft.custom:minecraft.trigger_trapped_chest

scoreboard objectives add SML.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add SML.jump minecraft.custom:minecraft.jump

scoreboard objectives add SML.placedObs minecraft.used:minecraft.observer
scoreboard objectives add SML.placedRLamp minecraft.used:minecraft.redstone_lamp

scoreboard objectives add SML.debug dummy
scoreboard objectives add SML.id dummy
scoreboard objectives add SML.open_storage dummy
scoreboard objectives add SML.ray_length dummy
scoreboard objectives add SML.count dummy
scoreboard objectives add SML.interacted dummy
scoreboard objectives add SML.rotationX dummy
scoreboard objectives add SML.rotationY dummy
scoreboard objectives add SML.oldRotationX dummy
scoreboard objectives add SML.oldRotationY dummy
scoreboard objectives add SML.posX dummy
scoreboard objectives add SML.posY dummy
scoreboard objectives add SML.posZ dummy
scoreboard objectives add SML.oldPosX dummy
scoreboard objectives add SML.oldPosY dummy
scoreboard objectives add SML.oldPosZ dummy
scoreboard objectives add SML.hasMoved dummy
scoreboard objectives add SML.found dummy
scoreboard objectives add SML.settings dummy
scoreboard objectives add SML.size dummy
scoreboard objectives add SML.isValid dummy
scoreboard objectives add SML.isInit dummy
scoreboard objectives add SML.variables dummy
scoreboard objectives add SML.marked dummy

scoreboard objectives add SML.hight dummy
scoreboard objectives add SML.targetHight dummy
scoreboard objectives add SML.called dummy
scoreboard objectives add SML.velocity dummy
scoreboard objectives add SML.onLift dummy
scoreboard objectives add SML.isPowered dummy

scoreboard objectives add SML.constants dummy
scoreboard players set INFINITY SML.constants 2147483647
scoreboard players set MIN_WORLD_HIGHT SML.constants -64
scoreboard players set MAX_WORLD_HIGHT SML.constants 319

scoreboard players set lift_speed SML.settings 2
scoreboard players set lift_is_loud SML.settings 1


# schedule loops
schedule function mechanic:slow_loop 1t
schedule function mechanic:utility/player_id/update_loop 11t

# message
tellraw @a [{"text":"Lift Mechanics","color":"green"},{"text":" has been reloaded.","color":"dark_green"}]

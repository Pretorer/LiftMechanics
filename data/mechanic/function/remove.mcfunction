# reset all
scoreboard objectives remove SML.open_dispens
scoreboard objectives remove SML.open_dropper
scoreboard objectives remove SML.open_hopper
scoreboard objectives remove SML.open_barrel
scoreboard objectives remove SML.open_chest
scoreboard objectives remove SML.open_shulker
scoreboard objectives remove SML.open_t_chest

scoreboard objectives remove SML.sneak
scoreboard objectives remove SML.jump

scoreboard objectives remove SML.debug
scoreboard objectives remove SML.id
scoreboard objectives remove SML.open_storage
scoreboard objectives remove SML.ray_length
scoreboard objectives remove SML.count
scoreboard objectives remove SML.found
scoreboard objectives remove SML.settings
scoreboard objectives remove SML.size
scoreboard objectives remove SML.isValid
scoreboard objectives remove SML.isInit
scoreboard objectives remove SML.variables
scoreboard objectives remove SML.marked

scoreboard objectives remove SML.hight
scoreboard objectives remove SML.targetHight
scoreboard objectives remove SML.called
scoreboard objectives remove SML.velocity
scoreboard objectives remove SML.onLift
scoreboard objectives remove SML.isPowered

scoreboard objectives remove SML.constants

kill @e[tag=ray_hit_marker]
kill @e[tag=lift_corner_marker]
kill @e[tag=lift_marker]
kill @e[tag=platform_marker]

# message
tellraw @p [{"text":"Steam mechanics","color":"green"},{"text":" has been removed.","color":"dark_green"}]

# remove unused (start)
scoreboard objectives remove SML.placedObs
scoreboard objectives remove SML.placedRLamp

execute \
    store result storage bound:math motion_x double 0.0001 run \
    scoreboard players operation $motion_x bound.motion.math = @s bound.motion.x
execute \
    store result storage bound:math motion_y double 0.0001 run \
    scoreboard players operation $motion_y bound.motion.math = @s bound.motion.y
execute \
    store result storage bound:math motion_z double 0.0001 run \
    scoreboard players operation $motion_z bound.motion.math = @s bound.motion.z

execute in minecraft:overworld run function bound:motion/internal/math/main
attribute @s knockback_resistance modifier add player_motion:disable_knockback_resistance -1 add_multiplied_total
function bound:motion/internal/launch/gamemode/get
gamemode creative

#halt y motion
data modify storage bound:pos y set from entity @s Pos[1]
function bound:motion/internal/launch/macro with storage bound:pos

tp @s ~ ~10000 ~
execute rotated as @s positioned ~ ~10000 ~ run function bound:motion/internal/summon/main with storage bound:math
tp @s ~ ~ ~
function bound:motion/internal/launch/gamemode/restore
attribute @s knockback_resistance modifier remove player_motion:disable_knockback_resistance

scoreboard players set $function_called bound.motion.dummy 0
tag @s remove player_motion.launch

#record success
tag @s add bound_success
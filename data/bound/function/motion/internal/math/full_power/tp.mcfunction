execute store result storage bound:math pos[0] double 0.1 run scoreboard players get $motion_x bound.motion.math
execute store result storage bound:math pos[1] double 0.1 run scoreboard players get $motion_y bound.motion.math
execute store result storage bound:math pos[2] double 0.1 run scoreboard players get $motion_z bound.motion.math
data modify entity @s Pos set from storage bound:math pos
execute at @s facing 0.0 0.0 0.0 run tp @s 0 0 0 0 ~
execute store result storage bound:math magnitude.angle int 1 run data get entity @s Rotation[1] 100
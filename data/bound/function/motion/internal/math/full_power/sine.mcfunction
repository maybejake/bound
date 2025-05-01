$execute store result score $n_full_exp bound.motion.math run data get storage bound:trig arr[$(angle)]
scoreboard players operation $n_full_exp bound.motion.math *= $motion_y bound.motion.math
execute store result score $sub_power bound.motion.math run scoreboard players operation $n_full_exp bound.motion.math /= #constant.1000 bound.motion.const
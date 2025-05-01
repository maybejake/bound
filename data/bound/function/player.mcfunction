#jump check
execute if entity @s[tag=bound_jumped,predicate=!bound:jump] run tag @s remove bound_jumped

#resets
execute if entity @s[tag=!bound_success] if score @s bound.count matches 1.. if entity @s[predicate=bound:onground] run function bound:reset
execute if entity @s[tag=!bound_success] if entity @s[tag=bound_first_jump] if entity @s[predicate=bound:onground] run function bound:reset

#remove success - this delays the reset to the tick after the launch tick to avoid infinite jumps
execute if entity @s[tag=bound_success] run tag @s remove bound_success

execute if score $function_called bound.motion.dummy matches 1 as @s[tag=player_motion.launch] at @s run function bound:motion/internal/launch/main
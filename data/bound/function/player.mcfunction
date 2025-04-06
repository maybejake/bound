#delay check
execute if entity @s[tag=bound_delay] run function bound:delay/tick

#cooldown check
execute if entity @s[tag=bound_cooldown,predicate=bound:onground] run return run function bound:reset

execute if score @s bound_count matches 1.. if entity @s[predicate=bound:onground] run return run function bound:reset

execute if entity @s[predicate=bound:onground, predicate=bound:issneaking] run scoreboard players set @s bound_ground_sneaking 1
execute if score @s bound_ground_sneaking matches 1 if entity @s[predicate=!bound:onground, predicate=!bound:issneaking] run scoreboard players set @s bound_ground_sneaking 0

#reset not run, this tick, reset reset count
scoreboard players reset @s bound_reset_count
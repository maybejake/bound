execute on vehicle run return fail
execute if entity @s[tag=bound_jumped] run return fail
execute if entity @s[tag=bound_cooldown] run return fail
execute if score @s bound.food matches ..6 run return fail
execute if block ~ ~ ~ #bound:climbable run return fail

tag @s add bound_jumped
execute unless score @s bound.count matches 0.. if entity @s[predicate=!bound:falling,tag=!bound_first_jump] run return run tag @s add bound_first_jump

function bound:level
function bound:effect
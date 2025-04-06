execute if block ~ ~ ~ #bound:climbable run return fail

execute if entity @s[tag=bound_cooldown] run return fail
execute if entity @s[tag=bound_delay] run return fail
execute if score @s bound_food matches ..6 run return fail
execute if score @s bound_ground_sneaking matches 1 run return fail

function bound:level
function bound:effect

tag @s add bound_delay
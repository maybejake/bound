scoreboard players add @s bound_reset_count 1
execute unless score @s bound_reset_count matches 2.. run return fail

tag @s remove bound_cooldown
scoreboard players reset @s bound_count
scoreboard players reset @s bound_reset_count
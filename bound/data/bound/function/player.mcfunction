#jump check
execute if entity @s[tag=bound.jumped,predicate=!bound:jump] run tag @s remove bound.jumped

#resets
execute if score @s bound.count matches 1.. if entity @s[predicate=bound:onground] run function bound:reset
execute if entity @s[tag=bound.first_jump] if entity @s[predicate=bound:onground] run function bound:reset
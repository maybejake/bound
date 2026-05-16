execute if block ~ ~ ~ minecraft:vault run return run function bound:loot/add

scoreboard players add $distance bound.dummy 1
execute if score $distance bound.dummy < $reach bound.dummy positioned ^ ^ ^0.01 run function bound:loot/ray
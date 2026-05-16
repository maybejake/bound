advancement revoke @s only bound:open_vault

execute store result score $chance bound.dummy run random value 1..100
execute if score $chance bound.dummy matches 8.. run return fail

scoreboard players set $hit bound.dummy 0
scoreboard players set $distance bound.dummy 0
execute store result score $reach bound.dummy run attribute @s minecraft:block_interaction_range get 100

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function bound:loot/ray
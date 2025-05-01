$execute store result score $sine bound.motion.math run data get storage bound:sine arr[$(angle)]
execute if score $negative_sine bound.motion.math matches 1 run scoreboard players operation $sine bound.motion.math *= #constant.-1 bound.motion.const
$execute store result score $cosine bound.motion.math run data get storage bound:cosine arr[$(angle)]
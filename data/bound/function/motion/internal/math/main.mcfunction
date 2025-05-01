# full_power=sqrt(motion_x²+motion_y²+motion_z²)
    # Save sign of $motion_y
	execute store success score $negative_sine bound.motion.math \
	    if score $motion_y bound.motion.math matches ..-1

    # Normalize
        execute if score $motion_y bound.motion.math matches ..-1 run \
            scoreboard players operation $motion_y bound.motion.math *= #constant.-1 bound.motion.const

    # Sets angle before exchange
        scoreboard players set $angle bound.motion.math 0

        execute if score $motion_y bound.motion.math matches 0 run \
            scoreboard players set $angle bound.motion.math 1

    # SuperSwordTW's method. Credit: https://github.com/SuperSwordTW/Distance-Trig-Calc-3d
        execute if score $motion_y bound.motion.math matches 0 run \
            scoreboard players operation $motion_y bound.motion.math >< $motion_x bound.motion.math

        execute if score $motion_y bound.motion.math matches 0 run \
            scoreboard players operation $motion_y bound.motion.math >< $motion_z bound.motion.math

        function bound:motion/internal/math/full_power/trig

# n_full_exp=floor(full_power/0.865)
    scoreboard players operation $n_full_exp bound.motion.math /= #constant.fpc bound.motion.const

# Change back the angle
    execute if score $angle bound.motion.math matches 1 run data modify storage bound:math magnitude.angle set value 0

# eyelevel=y(eyes)-y(player)
    function bound:motion/internal/math/eyelevel

# sub power operations
    # sub_power=floor(full_power%0.8)
        scoreboard players operation $sub_power bound.motion.math %= #constant.fpc bound.motion.const

    # d12=1-sub_power
        scoreboard players set $d12 bound.motion.math 10000
        scoreboard players operation $d12 bound.motion.math -= $sub_power bound.motion.math

    # Formula d=-(eyelevel*sinα + d12*12 * cos(arcsin(cosα*eyelevel/(d12*12))))

    # d12 = d12*12
    scoreboard players operation $d12 bound.motion.math *= #constant.12 bound.motion.const

    # Obtain sinα and cosα
    function bound:motion/internal/math/trig/sine with storage bound:math magnitude

    # cosα *= eyelevel, record cosα for later use
    scoreboard players operation $cosine bound.motion.math *= $eyelevel bound.motion.math
        scoreboard players operation $cosine1 bound.motion.math = $cosine bound.motion.math
    
    # cosα /= d12 = cosα*eyelevel / (d12*12)
    scoreboard players operation $cosine bound.motion.math *= #constant.10 bound.motion.const

    scoreboard players operation $cosine bound.motion.math /= $d12 bound.motion.math

    # obtain cos(arcsin(cosα*eyelevel/(d12*12))))
    execute store result storage bound:math magnitude.quotient int 1 run scoreboard players get $cosine bound.motion.math

    function bound:motion/internal/math/trig/arcsine with storage bound:math magnitude

    # cos(arcsin(cosα*eyelevel/(d12)))) *= d12
    scoreboard players operation $d bound.motion.math *= $d12 bound.motion.math

    scoreboard players operation $d bound.motion.math /= #constant.1000 bound.motion.const

    # sinα *= eyelevel, record sine for later use
    scoreboard players operation $sine bound.motion.math *= $eyelevel bound.motion.math

    scoreboard players operation $sine bound.motion.math /= #constant.10 bound.motion.const

        scoreboard players operation $sine1 bound.motion.math = $sine bound.motion.math

    # d += sine
    execute store result storage bound:math d double -0.0001 run \
    scoreboard players operation $d bound.motion.math += $sine bound.motion.math


# full power operations
    # d12=1-fpc(0.8) = 0.2
        scoreboard players set $d12 bound.motion.math 2000

    #full_d = -(eyelevel*sinα + (d12*12)*cos(arcsin(cosα*eyelevel/(d12*12))))

    # d12 = d12*12
    scoreboard players operation $d12 bound.motion.math *= #constant.12 bound.motion.const

    # cosine1 = cosα*eyelevel, cosine1 /= d12
    scoreboard players operation $cosine1 bound.motion.math *= #constant.10 bound.motion.const

    scoreboard players operation $cosine1 bound.motion.math /= $d12 bound.motion.math

    # Obtain cos(arcsin(cosine1))
    execute store result storage bound:math magnitude.quotient int 1 run scoreboard players get $cosine1 bound.motion.math

    function bound:motion/internal/math/trig/arcsine with storage bound:math magnitude

    # cos(arcsin(cosα*eyelevel/(d12)))) *= d12
    scoreboard players operation $d bound.motion.math *= $d12 bound.motion.math
    scoreboard players operation $d bound.motion.math /= #constant.1000 bound.motion.const

    # d += sine1
    execute store result storage bound:math full_d double -0.0001 run \
    scoreboard players operation $d bound.motion.math += $sine1 bound.motion.math
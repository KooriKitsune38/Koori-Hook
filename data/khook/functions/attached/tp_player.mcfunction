#> khook:attached/tp_player

# tp player
execute facing entity @e[type=arrow,tag=.temp,sort=nearest,limit=1] feet run tp @s ^ ^ ^.35

# Playsound
playsound entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 .5
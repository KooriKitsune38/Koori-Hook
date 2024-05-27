#> khook:main

# Selectors
    #> Everyone
    execute as @a at @s run function khook:everyone
    #> Arrow
    kill @e[type=arrow,tag=k.HookVehicle,nbt={inGround:1b}]
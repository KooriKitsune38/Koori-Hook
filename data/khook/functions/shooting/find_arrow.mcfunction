#> khook:shooting/find_arrow

# Revoke advancement
advancement revoke @s only khook:shoot_hook

# Tag
tag @s add k.ShotHook

# Scoreboard
    #> Create Objective
    scoreboard objectives add k.UUIDS dummy
    #> Assign UUID
    execute store result score @s k.UUIDS store result score .tempPlayer k.UUIDS run data get entity @s UUID[0]

# Retrieve Nearby Arrows
execute as @e[type=arrow,distance=..5] run function khook:shooting/as_arrow
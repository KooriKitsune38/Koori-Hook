#> khook:shooting/summon_marker

# Add uuid
scoreboard players operation @s k.UUIDS = .tempPlayer k.UUIDS

# Tag
tag @s add k.HookMarker

# Data
    #> Motion
    data modify entity @s data.hookMotion set value [0.0d,0.0d,0.0d]
    data modify entity @s data.hookMotion[0] set from entity @e[type=arrow,tag=.temp,limit=1,sort=nearest] Motion[0]
    data modify entity @s data.hookMotion[1] set from entity @e[type=arrow,tag=.temp,limit=1,sort=nearest] Motion[1]
    data modify entity @s data.hookMotion[2] set from entity @e[type=arrow,tag=.temp,limit=1,sort=nearest] Motion[2]
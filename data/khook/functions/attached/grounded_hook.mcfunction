#> khook:attached/grounded_hook

tag @s add .temp

execute unless entity @s[tag=k.HookAttached] as @e[type=marker,tag=k.HookMarker] if score @s k.UUIDS = .temp k.UUIDS at @s positioned ~ ~.1 ~ run function khook:attached/get_motion

tag @s add k.HookAttached

execute as @e[type=arrow,tag=k.HookVehicle,distance=..4] if score @s k.UUIDS = .temp k.UUIDS as @p[tag=.temp] run function khook:control/stop_hook

tag @s remove .temp
# Instantiate Raycast
#execute at @s positioned ~ ~1 ~ facing entity @e[type=arrow,tag=.temp,sort=nearest,limit=1] feet run function khook:attached/raycast

# Levitation
#effect give @s levitation 1 0 true

# If player nearby, lock
#execute align xyz positioned ~.5 ~-1 ~.5 run function khook:attached/player_nearby
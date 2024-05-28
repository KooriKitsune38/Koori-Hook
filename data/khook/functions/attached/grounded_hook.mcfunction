#> khook:attached/grounded_hook


tag @s add .temp
execute unless entity @s[tag=k.HookAttached] as @e[type=marker,tag=k.HookMarker,predicate=khook:uuid_match] at @s run function khook:attached/get_motion
tag @s remove .temp

tag @s add k.HookAttached

execute if entity @e[type=arrow,tag=k.HookVehicle,distance=..2,predicate=khook:uuid_match] run function khook:control/stop_hook
kill @e[type=arrow,tag=k.HookVehicle,predicate=khook:uuid_match,nbt={inGround:1b}]


# Instantiate Raycast
#execute at @s positioned ~ ~1 ~ facing entity @e[type=arrow,tag=.temp,sort=nearest,limit=1] feet run function khook:attached/raycast

# Levitation
#effect give @s levitation 1 0 true

# If player nearby, lock
#execute align xyz positioned ~.5 ~-1 ~.5 run function khook:attached/player_nearby
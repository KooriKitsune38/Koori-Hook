#> khook:shooting/continue_conditions

# Check if arrow exists
scoreboard players operation .temp k.UUIDS = @s k.UUIDS
execute as @e[type=arrow,tag=k.HookArrow] if score @s k.UUIDS = .temp k.UUIDS at @s run function khook:attached/as_hook

# If no success remove tag
execute unless score .success k.UUIDS matches 1 run function khook:control/stop_hook

# If hook not selected, stop
execute unless predicate khook:holding_grappling run function khook:control/stop_hook

# Reset success
scoreboard players reset .success k.UUIDS
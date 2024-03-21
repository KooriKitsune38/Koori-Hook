#> khook:control/charging_crossbow

# Revoke advancement
advancement revoke @s only khook:charging_crossbow

# Check if arrow exists
scoreboard players operation .temp k.UUIDS = @s k.UUIDS
execute as @e[type=arrow,tag=k.HookArrow] if score @s k.UUIDS = .temp k.UUIDS at @s run scoreboard players set .success k.UUIDS 1

# If arrow exists stop hook
execute if score .success k.UUIDS matches 1 run function khook:control/stop_hook

# Reset success
scoreboard players reset .success k.UUIDS
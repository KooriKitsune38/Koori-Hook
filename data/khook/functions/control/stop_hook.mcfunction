#> khook:control/stop_hook

# Remove levitation
effect clear @s levitation

# Kill arrow
execute as @e[type=arrow,tag=k.HookArrow] if score @s k.UUIDS = .temp k.UUIDS run kill @s
execute as @e[type=arrow,tag=k.HookVehicle] if score @s k.UUIDS = .temp k.UUIDS run kill @s
execute as @e[type=marker,tag=k.HookMarker] if score @s k.UUIDS = .temp k.UUIDS run kill @s

# Remove tag
tag @s remove k.ShotHook
tag @s remove k.HookAttached

# If offhand
execute if predicate khook:offhand_grappling run function khook:control/swap_slot

# Sound
execute at @s run playsound minecraft:item.trident.riptide_3 ambient @a ~ ~ ~ 1 2
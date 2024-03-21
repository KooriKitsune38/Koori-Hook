#> khook:attached/raycast

# Particle
particle ash ~ ~ ~ 0 0 0 0 1 force

# If not air stop
execute unless block ^ ^ ^.5 #khook:passable run function khook:control/stop_hook

# Continue raycast
execute positioned ^ ^ ^.5 if block ~ ~ ~ #khook:passable unless entity @e[type=arrow,tag=k.HookArrow,distance=..1] run function khook:attached/raycast
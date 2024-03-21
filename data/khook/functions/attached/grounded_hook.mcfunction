#> khook:attached/grounded_hook

# Instantiate Raycast
execute at @s positioned ~ ~1 ~ facing entity @e[type=arrow,tag=.temp,sort=nearest,limit=1] feet run function khook:attached/raycast

# Levitation
effect give @s levitation 1 0 true

# If player nearby, lock
execute align xyz positioned ~.5 ~-1 ~.5 run function khook:attached/player_nearby
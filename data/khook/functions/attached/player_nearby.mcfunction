#> khook:attached/player_nearby

# If nearby
execute if entity @s[dy=2.5,dx=1,dz=1] run function khook:attached/lock_place

# If not
execute unless entity @s[dy=2.5,dx=1,dz=1] at @s run function khook:attached/tp_player
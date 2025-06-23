# This function runs when a player hits an entity with an arrow
# Find the arrow that just hit and explode it
execute as @e[type=arrow,sort=nearest,limit=1] at @s run function explosivearrows:explode
execute as @e[type=arrow,sort=nearest,limit=1] run kill @s

# Revoke the advancement so it can trigger again
advancement revoke @a only explosivearrows:arrow_hit

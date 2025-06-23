# This function runs when a player hits an entity with an arrow
# Check if explosive arrows are enabled
execute if score #explosive_enabled ea_settings matches 1 as @e[type=arrow,sort=nearest,limit=1] at @s run function explosivearrows:explode
execute if score #explosive_enabled ea_settings matches 1 as @e[type=arrow,sort=nearest,limit=1] run kill @s

# Revoke the advancement so it can trigger again
advancement revoke @a only explosivearrows:arrow_hit

# Toggle explosive arrows on/off using temporary variable
execute if score #explosive_enabled ea_settings matches 1 run scoreboard players set #temp ea_settings 0
execute unless score #explosive_enabled ea_settings matches 1 run scoreboard players set #temp ea_settings 1
scoreboard players operation #explosive_enabled ea_settings = #temp ea_settings

# Show the new status
execute if score #explosive_enabled ea_settings matches 1 run tellraw @s [{"text":"[ExplosiveArrows] ","color":"gold"},{"text":"Explosive arrows ","color":"white"},{"text":"ENABLED","color":"green","bold":true}]
execute unless score #explosive_enabled ea_settings matches 1 run tellraw @s [{"text":"[ExplosiveArrows] ","color":"gold"},{"text":"Explosive arrows ","color":"white"},{"text":"DISABLED","color":"red","bold":true}]

# Toggle explosion chat messages using temporary variable
execute if score #chat_messages ea_settings matches 1 run scoreboard players set #temp ea_settings 0
execute unless score #chat_messages ea_settings matches 1 run scoreboard players set #temp ea_settings 1
scoreboard players operation #chat_messages ea_settings = #temp ea_settings

# Show the new status
execute if score #chat_messages ea_settings matches 1 run tellraw @s [{"text":"[ExplosiveArrows] ","color":"green"},{"text":"Chat messages enabled!","color":"white"}]
execute unless score #chat_messages ea_settings matches 1 run tellraw @s [{"text":"[ExplosiveArrows] ","color":"red"},{"text":"Chat messages disabled!","color":"white"}]

execute unless score #config entity_death matches 0 run scoreboard players set @s lightning_effect 1
execute unless score #config entity_death matches 0 run scoreboard players set @s totem_effect 0
execute unless score #config entity_death matches 0 run scoreboard players set @s smoke_effect 0
execute unless score #config entity_death matches 0 run function wander:choose_effect
execute if score #config entity_death matches 0 run tellraw @s {"text":"Ошибка: На сервере выключена смерть сущностей после управления ими. По этой причине вы не можете включить молнию.","color":"red"}
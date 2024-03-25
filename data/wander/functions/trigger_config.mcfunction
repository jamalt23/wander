scoreboard players enable @a[tag=w_enabled] effects
execute as @a[scores={effects=1}] at @s run function wander:choose_effect
execute as @a[scores={effects=1}] at @s run scoreboard players set @s effects 0
scoreboard players enable @a[tag=w_enabled] wander

execute as @a[scores={wander=1}] at @s run scoreboard players set @a[distance=0.000001..,scores={wander=1}] wander 3
execute as @a[scores={wander=1}] at @s run scoreboard players set @a[distance=0.000001..,scores={wander=2}] wander 3
execute as @a[scores={wander=1}] at @s run execute if score #config allow_hostiles matches 1 if score #config allow_players matches 1 run tag @e[limit=1,distance=0.5..1.5] add wander
execute as @a[scores={wander=1}] at @s run execute if score #config allow_hostiles matches 0 if score #config allow_players matches 1 run tag @e[limit=1,distance=0.5..1.5,type=!#wander:hostile] add wander
execute as @a[scores={wander=1}] at @s run execute if score #config allow_hostiles matches 1 if score #config allow_players matches 0 run tag @e[limit=1,distance=0.5..1.5,type=!player] add wander
execute as @a[scores={wander=1}] at @s run execute if score #config allow_hostiles matches 0 if score #config allow_players matches 0 run tag @e[limit=1,distance=0.5..1.5,type=!#wander:hostile,type=!player] add wander
execute as @a[scores={wander=1}] at @s run effect give @s minecraft:invisibility infinite 255 true
execute as @a[scores={wander=1}] at @s run execute if entity @e[tag=wander,distance=..3] run scoreboard players set @s wander 2

execute as @a[scores={wander=2}] at @s run execute if score #config show_nicknames matches 0 run kill @e[distance=..2,type=text_display,tag=nick]
execute as @a[scores={wander=2}] at @s run execute if score #config show_nicknames matches 1 run function wander:nickname
execute as @a[scores={wander=2}] at @s run execute if score #config show_particles matches 1 run function wander:particles

execute as @a[scores={wander=3}] at @s run function wander:tnt
execute as @a[scores={wander=3}] at @s run data merge entity @e[limit=1,distance=..2,type=!#wander:non-mobs,type=!#wander:pets,type=!minecraft:villager,tag=wander] {Silent:true}
execute as @a[scores={wander=3}] at @s run execute if score #config entity_death matches 1 run kill @e[limit=1,distance=..2,type=!#wander:non-mobs,type=!#wander:pets,type=!minecraft:villager,tag=wander]
execute as @a[scores={wander=3}] at @s run effect clear @s minecraft:invisibility
execute as @a[scores={wander=3}] at @s run team leave @e[team=noCollision]
execute as @a[scores={wander=3}] at @s run execute at @e[tag=wander] run data merge entity @e[limit=1,distance=..1,tag=wander] {AbsorptionAmount:0,Invulnerable:false}
execute as @a[scores={wander=3}] at @s run kill @e[distance=..2,type=item]
execute as @a[scores={wander=3}] at @s run kill @e[distance=..2,type=text_display,tag=nick]
execute as @a[scores={wander=3}] at @s run tag @e[tag=wander] remove wander
execute as @a[scores={wander=3}] at @s run scoreboard players set @s wander 0 


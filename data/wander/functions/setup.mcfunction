scoreboard objectives add wander trigger
scoreboard objectives add effects trigger
team add noCollision "Без отталкивания"
team modify noCollision collisionRule never
team modify noCollision seeFriendlyInvisibles false
tellraw @a {"text":"\nВы установили датапак Wander для управления сущностями!","color":"yellow"}
tellraw @a [{"text":"Напишите ","color":"green"},{"text":"/trigger wander","color":"gold","bold":true},{"text":" около сущности, чтобы управлять ей.\nНапишите ещё раз, чтобы перестать.\nНапишите "},{"text":"/function wander:config","color":"gold"},{"text":" для настроек датапака. \n("},{"text":"/trigger effects","color":"gold"},{"text":" для выбора эффекта)"},{"text":"\nПримечание:","color":"red","bold":true},{"text":" у игрока должен быть тег "},{"text":"w_enabled","italic":true},{"text":" чтобы использовать этот датапак."}]
scoreboard objectives add lightning_effect dummy
scoreboard objectives add smoke_effect dummy
scoreboard players set @a[tag=!notfirst] smoke_effect 1
scoreboard objectives add totem_effect dummy
scoreboard objectives add entity_death dummy
scoreboard objectives add allow_hostiles dummy
scoreboard objectives add show_nicknames dummy
scoreboard objectives add show_particles dummy
scoreboard objectives add allow_players dummy
tag @a add notfirst
tag Jamal_T add w_enabled
scoreboard players set @a[tag=!notfirst] smoke_effect 1
execute unless score #config entity_death matches 0 unless score #config entity_death matches 1 run scoreboard players set #config entity_death 1
execute unless score #config allow_hostiles matches 0 unless score #config allow_hostiles matches 1 run scoreboard players set #config allow_hostiles 1
execute unless score #config show_nicknames matches 0 unless score #config show_nicknames matches 1 run scoreboard players set #config show_nicknames 0
execute unless score #config show_particles matches 0 unless score #config show_particles matches 1 run scoreboard players set #config show_particles 0
execute unless score #config allow_players matches 0 unless score #config allow_players matches 1 run scoreboard players set #config allow_players 1
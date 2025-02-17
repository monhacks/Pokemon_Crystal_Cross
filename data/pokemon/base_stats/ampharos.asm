	db 0 ; species ID placeholder

	db  90,  75,  75,  55, 115,  90
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, DRAGON ; type
	db 45 ; catch rate
	db 243 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ampharos/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, DRAGONBREATH, OUTRAGE, MEGA_KICK, BULLDOZE, CHARGE_BEAM, LASER_FOCUS, HEAL_BELL, MIMIC, THUNDER_WAVE, COUNTER, SEISMIC_TOSS, MEGA_PUNCH, SUBSTITUTE, AURA_SPHERE, LIGHT_SCREEN, REFLECT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDERBOLT, IRON_TAIL, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, STRENGTH, FLASH, THUNDERBOLT
	; end

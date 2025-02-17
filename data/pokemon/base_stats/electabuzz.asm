	db 0 ; species ID placeholder

	db  70, 103,  57, 105,  95,  85
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FIGHTING ; type
	db 45 ; catch rate
	db 195 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/electabuzz/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, ROCK_CLIMB, CHARGE_BEAM, LASER_FOCUS, SUBMISSION, THUNDER_WAVE, MIMIC, COUNTER, SEISMIC_TOSS, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, AURA_SPHERE, LIGHT_SCREEN, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLASH, THUNDERBOLT
	; end

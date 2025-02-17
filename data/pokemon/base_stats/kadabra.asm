	db 0 ; species ID placeholder

	db  40,  35,  30, 105, 120,  70
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 182 ; base exp
	db TWISTEDSPOON, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kadabra/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, MEGA_PUNCH, SWIFT, MEGA_KICK, SEISMIC_TOSS, IRON_TAIL, SUBMISSION, CHARGE_BEAM, ENERGY_BALL, NIGHT_SHADE, THUNDER_WAVE, COUNTER, SUBSTITUTE, CALM_MIND, AURA_SPHERE, LIGHT_SCREEN, REFLECT, MIMIC, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, THUNDERPUNCH, DREAM_EATER, REST, ATTRACT, THIEF, FIRE_PUNCH, NIGHTMARE, FLASH
	; end

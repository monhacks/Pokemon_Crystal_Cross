	db 0 ; species ID placeholder

	db 106, 110,  90, 130, 154,  90
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, BERSERK_GENE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 60 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mewtwo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, BULLDOZE, DIVE, ROCK_CLIMB, WHIRLPOOL, SANDSTORM, ROCK_SLIDE, CHARGE_BEAM, POISON_JAB, LASER_FOCUS, EARTHQUAKE, AEROBLAST, ENERGY_BALL, SUBMISSION, NIGHT_SHADE, SELFDESTRUCT, THUNDER_WAVE, COUNTER, SEISMIC_TOSS, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, CALM_MIND, AURA_SPHERE, WILL_O_WISP, LIGHT_SCREEN, REFLECT, HAIL, WATER_PULSE, SWIFT, MIMIC, OUTRAGE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, RAZOR_WIND, REST, FIRE_PUNCH, NIGHTMARE, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end

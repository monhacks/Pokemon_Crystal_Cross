	db 0 ; species ID placeholder

	db  80,  82,  78,  85,  95,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 218 ; base exp
	db MYSTIC_WATER, PEARL ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golduck/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBMISSION, DIVE, ROCK_CLIMB, PSYCHIC_M, AURA_SPHERE, SHADOWSTRIKE, SWIFT, COUNTER, LASER_FOCUS, WAVE_CRASH, SEISMIC_TOSS, MIMIC, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, HAIL, WATER_PULSE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, REST, ATTRACT, FURY_CUTTER, SURF, STRENGTH, FLASH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end

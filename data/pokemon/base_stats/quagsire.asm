	db 0 ; species ID placeholder

	db  95,  85,  85,  35,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 90 ; catch rate
	db 172 ; base exp
	db CHESTO_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/quagsire/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, EARTH_POWER, DIVE, WATERFALL, ROCK_SLIDE, THIEF, AURA_SPHERE, MEGA_KICK, BULLDOZE, SEISMIC_TOSS, COUNTER, ICY_WIND, WAVE_CRASH, BLIZZARD, MIMIC, MEGA_PUNCH, SUBSTITUTE, HAIL, WATER_PULSE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, REST, ATTRACT, SURF, STRENGTH, FLASH, WHIRLPOOL, ICE_BEAM
	; end

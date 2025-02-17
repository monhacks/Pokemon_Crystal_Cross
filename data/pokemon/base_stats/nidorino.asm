	db 0 ; species ID placeholder

	db  61,  72,  57,  65,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 148 ; base exp
	db NO_ITEM, POISON_BARB ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidorino/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, EARTH_POWER, CUT, DIG, SLUDGE_BOMB, POISON_JAB, SPIKES, LASER_FOCUS, COUNTER, MIMIC, SUBSTITUTE, WATER_PULSE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, PROTECT, RAIN_DANCE, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, STRENGTH, THUNDERBOLT, ICE_BEAM
	; end

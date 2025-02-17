	db 0 ; species ID placeholder

	db  70,  84,  70,  51,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 180 ; base exp
	db HARD_STONE, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pupitar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, ROCK_SMASH, BULLDOZE, OUTRAGE, MIMIC, LASER_FOCUS, SNARL, EARTH_POWER, SUBSTITUTE, DARK_PULSE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, REST, ATTRACT
	; end

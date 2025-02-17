	db 0 ; species ID placeholder

	db  40,  80, 100,  20,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 108 ; base exp
	db HARD_STONE, EVERSTONE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 7 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/geodude/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBMISSION, ROCK_CLIMB, SPIKES, THUNDERPUNCH, BULLDOZE, EARTH_POWER, MEGA_PUNCH, SELFDESTRUCT, MIMIC, COUNTER, SEISMIC_TOSS, SUBSTITUTE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, ROCK_SLIDE, REST, ATTRACT, FIRE_PUNCH, STRENGTH, FLAMETHROWER
	; end

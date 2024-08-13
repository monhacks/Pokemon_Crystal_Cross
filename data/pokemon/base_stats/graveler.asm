	db 0 ; species ID placeholder

	db  55,  95, 115,  35,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 120 ; catch rate
	db 168 ; base exp
	db HARD_STONE, EVERSTONE ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/graveler/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, EARTH_POWER, SPIKES, THUNDERPUNCH, BULLDOZE, SUBMISSION, SELFDESTRUCT, MIMIC, COUNTER, SEISMIC_TOSS, MEGA_PUNCH, SUBSTITUTE, ROCK_CLIMB, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, ROCK_SLIDE, REST, ATTRACT, FIRE_PUNCH, STRENGTH, FLAMETHROWER
	; end

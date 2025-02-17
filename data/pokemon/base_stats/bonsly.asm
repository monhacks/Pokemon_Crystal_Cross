	db 0 ; species ID placeholder

	db  50, 80,  95,  10,  10,  45
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 125 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bonsly/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, EARTH_POWER, SEISMIC_TOSS, COUNTER, SELFDESTRUCT, SUBSTITUTE, MIMIC, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, REST, ATTRACT, THIEF
	; end

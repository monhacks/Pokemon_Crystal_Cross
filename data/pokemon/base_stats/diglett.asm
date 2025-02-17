	db 0 ; species ID placeholder

	db  10,  55,  25,  95,  35,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 102 ; base exp
	db NO_ITEM, SOFT_SAND ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/diglett/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, EARTH_POWER, SANDSTORM, ROCK_SLIDE, SHADOWSTRIKE, BULLDOZE, SUBSTITUTE, CURSE, TOXIC, ROCK_SMASH, MIMIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, CUT
	; end
